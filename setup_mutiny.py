import json
import secrets
from bitcoinlib.keys import Key

network = "testnet"
max_steps = 1000
wrong_bits = 2
input_words = 2

# ============
# ORIGIN KEY
# ============

origin_key_bytes = secrets.token_bytes(32)
origin_key = Key(import_key=origin_key_bytes.hex(), network=network)
origin_priv_hex = origin_key.private_hex
origin_pub_hex = origin_key.public_hex
origin_address = origin_key.address(script_type="p2wpkh", encoding="bech32")

print(f"\nPrivate Key (hex): {origin_priv_hex}")
print(f"Public key: {origin_pub_hex}")
print("\n--------------------------------------------------------------------------------")
print(f"\nFund this address {origin_address}\n")
print("--------------------------------------------------------------------------------")

# ============
# PROVER KEY
# ============

prover_key_bytes = secrets.token_bytes(32)
prover_key = Key(import_key=prover_key_bytes.hex(), network=network)
prover_priv_hex = prover_key.private_hex
prover_pub_hex = prover_key.public_hex
prover_address = prover_key.address(script_type="p2wpkh", encoding="bech32")

print("--------------------------------------------------------------------------------")
print("\nSetup generated:\n")

setup = {
    "max_amount_of_steps": max_steps,
    "amount_of_bits_wrong_step_search": wrong_bits,
    "funding_tx_id": "<replace-this-manually>",
    "funding_index": 0,
    "secret_origin_of_funds": origin_priv_hex,
    "prover_destination_address": prover_address,
    "prover_signature_private_key": prover_priv_hex,
    "prover_signature_public_key": prover_pub_hex,
    "amount_of_input_words": input_words,
}

print(json.dumps(setup, indent=2))
