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
RPC_USER = "usuario_rpc"
RPC_PASSWORD = "contrasena_rpc"
RPC_HOST = "127.0.0.1"
RPC_PORT = 8332

CSV_NAME = "avg_med_fees.csv"


def conectar_nodo(rpc_user, rpc_password, host="127.0.0.1", port=8332):
    """Conecta al nodo Bitcoin Core vía RPC y devuelve un objeto de conexión."""
    url = f"http://{rpc_user}:{rpc_password}@{host}:{port}"
    return AuthServiceProxy(url)


def obtener_altura_por_fecha(rpc_conn, fecha_obj):
    """Encuentra la primera altura de bloque cuyo timestamp >= fecha dada (00:00:00 de ese día)."""
    # Convierte la fecha a timestamp Unix (segundos desde época)
    inicio_ts = int(
        fecha_obj.replace(hour=0, minute=0, second=0, microsecond=0).timestamp()
    )
    # Realiza búsqueda binaria en el rango de alturas [0, altura_max] para encontrar el bloque de inicio
    altura_min = 0
    altura_max = rpc_conn.getblockcount()
    altura_encontrada = None
    while altura_min <= altura_max:
        mid = (altura_min + altura_max) // 2
        # Obtener timestamp del bloque en altura mid
        block_hash = rpc_conn.getblockhash(mid)
        header = rpc_conn.getblockheader(block_hash)
        block_time = header["time"]
        if block_time < inicio_ts:
            # Buscar hacia arriba (bloques más nuevos)
            altura_min = mid + 1
        else:
            # Puede ser un candidato; buscar hacia abajo por uno más temprano en el mismo día
            altura_encontrada = mid
            altura_max = mid - 1
    return altura_encontrada


def obtener_datos_diarios_via_rpc(rpc_conn, fecha_inicio, fecha_fin):
    """Obtiene la tarifa media diaria usando el nodo RPC entre fecha_inicio y fecha_fin (datetime.date objetos)."""
    resultados = []
    # Iterar por cada día en el rango
    fecha_actual = fecha_inicio
    while fecha_actual <= fecha_fin:
        # Encontrar primer bloque del día actual
        altura_inicio_dia = obtener_altura_por_fecha(
            rpc_conn, datetime.combine(fecha_actual, datetime.min.time())
        )
        if altura_inicio_dia is None:
            # Si no se encontró (posiblemente fecha futura sin bloques aún)
            break
        # Calcular timestamp de fin de día (inicio del siguiente día)
        siguiente_dia = fecha_actual + timedelta(days=1)
        inicio_siguiente = int(
            datetime.combine(siguiente_dia, datetime.min.time()).timestamp()
        )
        # Recorrer bloques desde altura_inicio_dia mientras estén en el mismo día
        total_fee = 0
        total_vbytes = 0
        altura = altura_inicio_dia
        while True:
            block_hash = rpc_conn.getblockhash(altura)
            # Obtener info del bloque (usar getblockstats si disponible)
            try:
                stats = rpc_conn.getblockstats(altura, ["totalfee", "total_weight"])
                fee_block = stats["totalfee"]
                weight_block = stats["total_weight"]
                vbytes_block = math.ceil(weight_block / 4)  # convertir peso a vbytes
            except Exception as e:
                # Si getblockstats no está disponible, usar getblock como alternativa
                block = rpc_conn.getblock(block_hash, 1)
                fee_block = 0
                # Calcular comisiones a partir de la coinbase (valor total - subsidio)
                if "tx" in block and len(block["tx"]) > 0:
                    coinbase_tx = block["tx"][0]
                    # Sumar valor de salida de coinbase
                    coinbase_out_value = sum(
                        out["value"] for out in coinbase_tx["vout"]
                    )
                    # Calcular subsidio teórica (en satoshis) para esta altura
                    # 50 BTC = 50*10^8 satoshis por bloque hasta 210000, luego mitad en cada halving
                    era = altura // 210000
                    subsidy = (
                        50 * 100_000_000 >> era
                    )  # dividir por 2^era usando bit shift
                    fee_block = (
                        int(coinbase_out_value * 100_000_000) - subsidy
                    )  # coinbase_out_value viene en BTC, convertir a sat
                # Obtener tamaño (vbytes) del bloque
                vbytes_block = block.get("weight", None)
                if vbytes_block is not None:
                    # weight proporcionado; convertir a vbytes
                    vbytes_block = math.ceil(vbytes_block / 4)
                else:
                    # si no hay weight, usar size directamente como aproximación de vbytes
                    vbytes_block = block.get("size", 0)
            # Sumar a los acumuladores diarios
            total_fee += fee_block
            total_vbytes += vbytes_block
            # Obtener timestamp del bloque actual
            header = rpc_conn.getblockheader(block_hash)
            if header["time"] >= inicio_siguiente:
                # Salir del bucle si el bloque pertenece al siguiente día o posterior
                break
            altura += 1
            # Si excede la altura máxima, salir
            if altura > rpc_conn.getblockcount():
                break
        # Calcular promedio del día (sat/vByte)
        promedio = total_fee / total_vbytes if total_vbytes > 0 else 0
        resultados.append((fecha_actual.strftime("%Y-%m-%d"), promedio))
        fecha_actual += timedelta(days=1)
    return resultados


def obtener_datos_diarios_via_api(fecha_inicio, fecha_fin):
    """Obtiene la tarifa media diaria usando la API pública entre fecha_inicio y fecha_fin (datetime.date objetos)."""
    resultados = []
    fecha_actual = fecha_inicio
    while fecha_actual <= fecha_fin:
        # Timestamp en milisegundos para 00:00:00 de fecha_actual
        dia_ts = int(
            datetime.combine(fecha_actual, datetime.min.time()).timestamp() * 1000
        )
        url = f"https://blockchain.info/blocks/{dia_ts}?format=json"
        try:
            resp = requests.get(url)
            data = resp.json()
        except Exception as e:
            print(f"Error al obtener bloques del día {fecha_actual}: {e}")
            break
        # Sumadores diarios
        total_fee = 0
        total_vbytes = 0
        # Recorrer todos los bloques listados para ese día
        for bloque in data.get("blocks", []):
            block_hash = bloque.get("hash")
            if not block_hash:
                continue
            # Obtener datos detallados del bloque por hash
            try:
                resp_block = requests.get(
                    f"https://blockchain.info/rawblock/{block_hash}"
                )
                bloque_data = resp_block.json()
            except Exception as e:
                print(f"Error al obtener datos del bloque {block_hash}: {e}")
                continue
            fee_block = bloque_data.get("fee", 0)
            size_block = bloque_data.get("size", 0)
            # Convertir tamaño a vbytes (aproximado, pues no tenemos weight)
            vbytes_block = size_block
            total_fee += fee_block
            total_vbytes += vbytes_block
        # Calcular promedio del día
        promedio = total_fee / total_vbytes if total_vbytes > 0 else 0
        resultados.append((fecha_actual.strftime("%Y-%m-%d"), promedio))
        fecha_actual += timedelta(days=1)
    return resultados


def guardar_csv(resultados, archivo):
    """Guarda la lista de resultados (tuplas de fecha y valor) en un archivo CSV."""
    with open(archivo, mode="w", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(["Fecha", "sat/vByte_promedio"])
        for fecha, valor in resultados:
            # Formato con quizás 2 decimales para legibilidad
            writer.writerow([fecha, f"{valor:.2f}"])


if __name__ == "__main__":
    # Convertir las cadenas de fecha a objetos date
    fecha_ini = datetime.strptime(DATE_START, "%Y-%m-%d").date()
    fecha_fin = datetime.strptime(DATE_END, "%Y-%m-%d").date()
    resultados = []
    if AuthServiceProxy:
        try:
            rpc_conn = conectar_nodo(RPC_USER, RPC_PASSWORD, RPC_HOST, RPC_PORT)
            # Verificar conexión intentando obtener altura actual
            _ = rpc_conn.getblockcount()
            print("Nodo Bitcoin Core detectado, usando RPC para obtener datos...")
            resultados = obtener_datos_diarios_via_rpc(rpc_conn, fecha_ini, fecha_fin)
        except Exception as e:
            print(f"No se pudo usar el nodo RPC ({e}). Se recurrirá a la API pública.")
            resultados = obtener_datos_diarios_via_api(fecha_ini, fecha_fin)
    else:
        print("Biblioteca RPC no disponible, usando API pública.")
        resultados = obtener_datos_diarios_via_api(fecha_ini, fecha_fin)
    # Guardar resultados en CSV
    guardar_csv(resultados, CSV_NAME)
    print(f"Archivo CSV generado: {CSV_NAME}")
