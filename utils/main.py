import requests
from datetime import datetime, timedelta
import math
import csv

try:
    from bitcoinrpc.authproxy import AuthServiceProxy
except ImportError:
    AuthServiceProxy = None

# date range
DATE_START = "2023-01-01"
DATE_END = "2023-01-07"

# rpc credentials
RPC_USER = "rpc_user"
RPC_PASSWORD = "rpc_password"
RPC_HOST = "127.0.0.1"
RPC_PORT = 8332

CSV_NAME = "avg_daily_fees.csv"


def connect_node(rpc_user, rpc_password, host="127.0.0.1", port=8332):
    """Connects to Bitcoin Core node via RPC and returns the connection object."""
    url = f"http://{rpc_user}:{rpc_password}@{host}:{port}"
    return AuthServiceProxy(url)


def find_block_height_by_date(rpc_conn, date_obj):
    """Finds the first block height with timestamp >= given date (00:00:00 of that day)."""
    start_ts = int(
        date_obj.replace(hour=0, minute=0, second=0, microsecond=0).timestamp()
    )
    low = 0
    high = rpc_conn.getblockcount()
    found_height = None
    while low <= high:
        mid = (low + high) // 2
        block_hash = rpc_conn.getblockhash(mid)
        header = rpc_conn.getblockheader(block_hash)
        block_time = header["time"]
        if block_time < start_ts:
            low = mid + 1
        else:
            found_height = mid
            high = mid - 1
    return found_height


def get_daily_data_via_rpc(rpc_conn, date_start, date_end):
    """Gets daily average fee using RPC between date_start and date_end (datetime.date objects)."""
    results = []
    current_date = date_start
    while current_date <= date_end:
        start_height = find_block_height_by_date(
            rpc_conn, datetime.combine(current_date, datetime.min.time())
        )
        if start_height is None:
            break
        next_day = current_date + timedelta(days=1)
        next_day_ts = int(datetime.combine(next_day, datetime.min.time()).timestamp())
        total_fee = 0
        total_vbytes = 0
        height = start_height
        while True:
            block_hash = rpc_conn.getblockhash(height)
            try:
                stats = rpc_conn.getblockstats(height, ["totalfee", "total_weight"])
                fee_block = stats["totalfee"]
                weight_block = stats["total_weight"]
                vbytes_block = math.ceil(weight_block / 4)
            except Exception as e:
                block = rpc_conn.getblock(block_hash, 1)
                fee_block = 0
                if "tx" in block and len(block["tx"]) > 0:
                    coinbase_tx = block["tx"][0]
                    coinbase_out_value = sum(
                        out["value"] for out in coinbase_tx["vout"]
                    )
                    era = height // 210000
                    subsidy = 50 * 100_000_000 >> era
                    fee_block = int(coinbase_out_value * 100_000_000) - subsidy
                vbytes_block = block.get("weight", None)
                if vbytes_block is not None:
                    vbytes_block = math.ceil(vbytes_block / 4)
                else:
                    vbytes_block = block.get("size", 0)
            total_fee += fee_block
            total_vbytes += vbytes_block
            header = rpc_conn.getblockheader(block_hash)
            if header["time"] >= next_day_ts:
                break
            height += 1
            if height > rpc_conn.getblockcount():
                break
        avg = total_fee / total_vbytes if total_vbytes > 0 else 0
        results.append((current_date.strftime("%Y-%m-%d"), avg))
        current_date += timedelta(days=1)
    return results


def get_daily_data_via_api(date_start, date_end):
    """Gets daily average fee using public API between date_start and date_end (datetime.date objects)."""
    results = []
    current_date = date_start
    while current_date <= date_end:
        day_ts = int(
            datetime.combine(current_date, datetime.min.time()).timestamp() * 1000
        )
        url = f"https://blockchain.info/blocks/{day_ts}?format=json"
        try:
            resp = requests.get(url)
            data = resp.json()
        except Exception as e:
            print(f"Error fetching blocks for {current_date}: {e}")
            break
        total_fee = 0
        total_vbytes = 0
        for block in data.get("blocks", []):
            block_hash = block.get("hash")
            if not block_hash:
                continue
            try:
                resp_block = requests.get(
                    f"https://blockchain.info/rawblock/{block_hash}"
                )
                block_data = resp_block.json()
            except Exception as e:
                print(f"Error fetching block data {block_hash}: {e}")
                continue
            fee_block = block_data.get("fee", 0)
            size_block = block_data.get("size", 0)
            vbytes_block = size_block
            total_fee += fee_block
            total_vbytes += vbytes_block
        avg = total_fee / total_vbytes if total_vbytes > 0 else 0
        results.append((current_date.strftime("%Y-%m-%d"), avg))
        current_date += timedelta(days=1)
    return results


def save_to_csv(results, file_name):
    """Saves the list of (date, value) tuples to a CSV file."""
    with open(file_name, mode="w", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(["Date", "Average_sat/vByte"])
        for date, value in results:
            writer.writerow([date, f"{value:.2f}"])


if __name__ == "__main__":
    date_start_obj = datetime.strptime(DATE_START, "%Y-%m-%d").date()
    date_end_obj = datetime.strptime(DATE_END, "%Y-%m-%d").date()
    results = []
    if AuthServiceProxy:
        try:
            rpc_conn = connect_node(RPC_USER, RPC_PASSWORD, RPC_HOST, RPC_PORT)
            _ = rpc_conn.getblockcount()
            print("Bitcoin Core node detected, using RPC to fetch data...")
            results = get_daily_data_via_rpc(rpc_conn, date_start_obj, date_end_obj)
        except Exception as e:
            print(f"RPC connection failed ({e}). Falling back to public API.")
            results = get_daily_data_via_api(date_start_obj, date_end_obj)
    else:
        print("RPC library not available, using public API.")
        results = get_daily_data_via_api(date_start_obj, date_end_obj)
    save_to_csv(results, CSV_NAME)
    print(f"CSV file generated: {CSV_NAME}")
