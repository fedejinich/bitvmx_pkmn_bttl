# Bitcoin Fee Analyzer — Daily Average of Confirmed sat/vByte

This project contains a Python script that calculates the **daily average fee in sat/vByte** of **confirmed Bitcoin transactions** within a given date range.

This metric reflects the **average cost per virtual byte** paid by transactions included in blocks, day by day. It is useful for analyzing trends, network congestion, and the best times to publish transactions.

## What does this script do?

- Calculates the daily average sat/vByte between two dates (e.g., from March 1st to 31st).
- For each day:
  - Retrieves all blocks mined on that date.
  - Sums all transaction fees (excluding the coinbase transaction).
  - Sums the total size in vBytes of those transactions.
  - Computes: `daily_average_fee = total_fees_sats / total_vbytes`
- Exports the results into a CSV file with columns: Date and Average sat/vByte

## Data sources supported

The script automatically adapts to two modes:

### 1. Bitcoin Core Node (RPC)

- Connects to your full Bitcoin Core node via RPC.
- Uses the `getblockstats` command (or `getblock` as fallback) to obtain:
  - `totalfee`: total block fees in satoshis.
  - `total_weight`: total block weight → converted to vBytes.
- This is the most accurate and reliable method.

Requirements:

- A running Bitcoin node (`bitcoind`)
- RPC enabled in `bitcoin.conf`
- The `python-bitcoinrpc` library installed

### 2. Public API (blockchain.info)

- If no node is available, the script uses the public blockchain.info API.
- It queries daily blocks and retrieves:
  - `fee` (total block fees)
  - `size` (used as an approximation for vBytes)

Advantage: no infrastructure required.  
Limitation: less precise, since `weight` is not available.

## Script output

The result is a file named `tarifa_media_diaria.csv` with this format:

Date,sat/vByte_average  
2025-03-01,1.73  
2025-03-02,2.15  
2025-03-03,2.91  
...

You can open it with Excel, import it into a dashboard, or use it for visualizations.

## How to use it

1. Edit the script to set:
   - Date range: `FECHA_INICIO` and `FECHA_FIN`
   - Connection mode: RPC credentials (if using a node)
   - Output CSV file path

2. Install required dependencies:

pip install requests python-bitcoinrpc

3. Run the script:

python calcular_tarifa_media.py

4. The generated CSV will appear in the project folder.

## What is sat/vByte?

- sat/vByte = how many satoshis are paid per virtual byte of a transaction.
- It's the metric used by miners to prioritize transactions.
- Since SegWit, transaction sizes are measured in vBytes (weight ÷ 4).

## Notes

- The script ignores the coinbase transaction, since it doesn't pay fees.
- If block `weight` is not available, `size` is used as an approximation.
- Public APIs may have usage limitations (request rate limits or downtime).

## Use cases

- Analyze periods of high or low network congestion.
- Visualize historical fee trends.
- Determine the best timing to broadcast large transactions.
- Estimate the cost of publishing a BitVMX proof at different times of the month.
