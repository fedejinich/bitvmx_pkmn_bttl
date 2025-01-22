# Game Run Details

In this document you can find more details about the game run described in the [web article]().

## Setup

```python
class BitVMXWrapper:

    def __init__(self, base_path: str):
        self.base_path = base_path
        self.execution_checkpoint_interval = 50000000
        self.fail_actor = "prover"
        self.fail_step = "10"
        self.fail_type = "--fail-execute"
        self.fail_input = False
        self.fail_actor_input = "prover"
```

```json
{
  "max_amount_of_steps": 51947,
  "amount_of_bits_wrong_step_search": 3,
  "secret_origin_of_funds": "7920e3e47f7c977dab446d6d55ee679241b13c28edf363d519866ede017ef1b4",
  "amount_of_input_words": 1
}
```

```json
{
  "setup_uuid": "98185493-a3ab-4e26-968a-78c1ae2a246c"
}
```

## On-chain transactions

- **Prover**

  Funding tx: fff64f77c46c3ca1eb01a26cddc14e589684fc66d0ed996d5c3ae980f324e6bb  
  Funding transaction: 370d0be10e23d444588d16be898c170878dba2a8267b729faf3a12e0af536052  
  Hash result revelation transaction: 40f3464a4db089238235d00d3be1b9cc329248d6454cb4c3d60e021f37a141ae  
  Search hash iteration transaction 0: df94beabf1207bd3bf9888928fde2ffd1ce8ff04f4eef027c5b1ec7de15b36a8  
  Search hash iteration transaction 1: 8a0f96fdd707308932c1c57b72af6a9724fc3e81759b0e988d940458b1d26f97  
  Search hash iteration transaction 2: b078a44ff0b029456d44fceca2ad690104a521a6da2539c1a5dbdf3f70498134  
  Search hash iteration transaction 3: ddc013e207e585dbee9abce6bfc56f08b104453f819b8cc7f498c5e2e3f520ce  
  Search hash iteration transaction 4: 1e379c1b9a3069af49c2f192594ba943c106fdc15e1815da35a3ab18bc2994a2  
  Search hash iteration transaction 5: da0f186dea22d944d0d6322ea8f3abc2ad0734ee37cbc4c5d6ca34784e99457d  
  Trace transaction: fa021ce3fe4f664f2733eefd8abcc51f59d622e0652d63215e66da6cde35d764  

- **Verifier**

  Trigger protocol transaction: 216e7614dcb8648c395429a1d6d2654d61cca621bff079c1f9debc7d9c0c15e2  
  Search choice iteration transaction 0: 2ba8e9090eca02979b58d43835cbbb8bbb065973838b0fbc69008d43be03ff00  
  Search choice iteration transaction 1: dd8f1a2ab4e387179b75fb7b9721964b127ced02fcd1382de1b4fa8bb185e215  
  Search choice iteration transaction 2: f4ff5ff29b6ee51d39d3e9adeac595a1a510c4ebf3cb132eb3ff16af276ccd93  
  Search choice iteration transaction 3: 2729f2b42eabcd80f2fc6267c7a4777e1b52fe4fd517740ddac79aafed68c657  
  Search choice iteration transaction 4: d590d772cd88dfd2afedce5d0b9029150893c1fc23c4722c9906fdb28c1336c4  
  Search choice iteration transaction 5: e327e398d0d94f4a4fbe3f4fc5089acbf0ebcba8a77cb0a6fc5ad3760890f3bc  
  Trigger execution challenge transaction: c7874f513aae8faeef9f42866add164d79d2bddf1d2dc4fe8c2cb8cac30112d4  

## Build

```bash
Step: 9999 PC: 0x8005ba8c:0 Opcode: 0x00158593 Instruction: Addi(IType(1410451))
Exit code: 0x00000000
Register 0: 0x00000000
Register 1: 0x8001f688
Register 2: 0xe0800000
Register 3: 0x00000000
Register 4: 0x00000000
Register 5: 0x80000000
Register 6: 0x800300d4
Register 7: 0xaaaaaaaa
Register 8: 0x00000000
Register 9: 0x00000000
Register 10: 0x00000000
Register 11: 0x00000001
Register 12: 0x00000000
Register 13: 0x00000000
Register 14: 0xe07ffd80
Register 15: 0x00000001
Register 16: 0xaaaaaaaa
Register 17: 0x0000005d
Register 18: 0x00000000
Register 19: 0x00000000
Register 20: 0x00000000
Register 21: 0x00000000
Register 22: 0x00000000
Register 23: 0x00000000
Register 24: 0x00000000
Register 25: 0x00000000
Register 26: 0x00000000
Register 27: 0x00000000
Register 28: 0xaaaaaaaa
Register 29: 0x00000000
Register 30: 0xaaaaaaaa
Register 31: 0x00000000
Total steps: 51947 0x000000000000caeb
Last hash: 4b25f658acebb3bc578b3dd2e2c31f2e621d8fed54624de28ede0f068d2cd3e5
Generating ROM commitment...
Generating instruction mapping...
Build completed successfully!
```

## Input

```json
{
  "input_hex": "00001234",
  "setup_uuid": "98185493-a3ab-4e26-968a-78c1ae2a246c"
}
```

## Prover logs

```bash
❯ docker compose up prover-backend                                                  [18:41:44]

[+] Running 1/0
 ✔ Container bitvmx_protocol-prover-backend-1  Created                                    0.0s
Attaching to prover-backend-1
prover-backend-1  | INFO:     Started server process [1]
prover-backend-1  | INFO:     Waiting for application startup.
prover-backend-1  | INFO:     Application startup complete.
prover-backend-1  | INFO:     Uvicorn running on http://0.0.0.0:80 (Press CTRL+C to quit)
prover-backend-1  | INFO:     172.18.0.1:59722 - "GET /docs HTTP/1.1" 200 OK
prover-backend-1  | INFO:     172.18.0.1:59722 - "GET /openapi.json HTTP/1.1" 200 OK
prover-backend-1  | Public keys generated: 0.06392574310302734
prover-backend-1  | Funding tx: fff64f77c46c3ca1eb01a26cddc14e589684fc66d0ed996d5c3ae980f324e6bb
prover-backend-1  | Verifier public keys generated: 4177.823410272598
prover-backend-1  | Bitcoin scripts generated: 4184.1072425842285
prover-backend-1  | [45]
prover-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }} }} }]
prover-backend-1  | [45]
prover-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }} }} }]
prover-backend-1  | Call parallel hashed merkle root
prover-backend-1  | End of parallel hashed merkle root in 3.815478769938151 minutes.
prover-backend-1  | [45]
prover-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }} }} }]
prover-backend-1  | Transactions built: 8308.091077804565
prover-backend-1  | Signatures generated: 8324.602967739105
prover-backend-1  | Verifier signatures sent: 8350.48359632492
prover-backend-1  | Funding transaction: 370d0be10e23d444588d16be898c170878dba2a8267b729faf3a12e0af536052
prover-backend-1  | INFO:     127.0.0.1:51282 - "POST /api/v1/setup HTTP/1.1" 200 OK
prover-backend-1  | INFO:     172.18.0.1:59736 - "POST /api/v1/setup/fund HTTP/1.1" 200 OK
prover-backend-1  | INFO:     172.18.0.1:63222 - "POST /api/v1/input HTTP/1.1" 417 Expectation Failed
prover-backend-1  | INFO:     172.18.0.1:60858 - "POST /api/v1/input HTTP/1.1" 200 OK
prover-backend-1  | pkmn_bttl.elf
prover-backend-1  | ./execution_files/pkmn_rom_commitment.txt
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--elf', '../../BitVMX-CPU/docker-riscv32/riscv32/build/pkmn_bttl.elf', '--debug', '--checkpoints', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Executing command for list 51948 with step 0 and limit 51948 with base 0 index 51947
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51948', '--trace', '--limit', '51948', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | d80ace8d2ae584baf0c842d1821431355e4419d61e16da67cb4fec2e1a2a9266
prover-backend-1  | Hash result revelation transaction: 40f3464a4db089238235d00d3be1b9cc329248d6454cb4c3d60e021f37a141ae
prover-backend-1  | INFO:     172.18.0.1:61454 - "POST /api/v1/next_step HTTP/1.1" 200 OK
prover-backend-1  | Executing command for list 32768 with step 0 and limit 32768 with base 0 index 32767
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '32768', '--trace', '--limit', '32768', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 51948 with step 0 and limit 51948 with base 0 index 51947
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51948', '--trace', '--limit', '51948', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 51948 with step 0 and limit 51948 with base 0 index 51947
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51948', '--trace', '--limit', '51948', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 51948 with step 0 and limit 51948 with base 0 index 51947
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51948', '--trace', '--limit', '51948', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 51948 with step 0 and limit 51948 with base 0 index 51947
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51948', '--trace', '--limit', '51948', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 51948 with step 0 and limit 51948 with base 0 index 51947
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51948', '--trace', '--limit', '51948', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 51948 with step 0 and limit 51948 with base 0 index 51947
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51948', '--trace', '--limit', '51948', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Search hash iteration transaction 0: df94beabf1207bd3bf9888928fde2ffd1ce8ff04f4eef027c5b1ec7de15b36a8
prover-backend-1  | INFO:     172.18.0.1:57368 - "POST /api/v1/next_step HTTP/1.1" 200 OK
prover-backend-1  | Executing command for list 4096 with step 0 and limit 4096 with base 0 index 4095
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '4096', '--trace', '--limit', '4096', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 8192 with step 0 and limit 8192 with base 0 index 8191
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '8192', '--trace', '--limit', '8192', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 12288 with step 0 and limit 12288 with base 0 index 12287
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '12288', '--trace', '--limit', '12288', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 16384 with step 0 and limit 16384 with base 0 index 16383
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '16384', '--trace', '--limit', '16384', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 20480 with step 0 and limit 20480 with base 0 index 20479
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '20480', '--trace', '--limit', '20480', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 24576 with step 0 and limit 24576 with base 0 index 24575
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '24576', '--trace', '--limit', '24576', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 28672 with step 0 and limit 28672 with base 0 index 28671
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '28672', '--trace', '--limit', '28672', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Search hash iteration transaction 1: 8a0f96fdd707308932c1c57b72af6a9724fc3e81759b0e988d940458b1d26f97
prover-backend-1  | INFO:     172.18.0.1:55374 - "POST /api/v1/next_step HTTP/1.1" 200 OK
prover-backend-1  | Executing command for list 512 with step 0 and limit 512 with base 0 index 511
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '512', '--trace', '--limit', '512', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 1024 with step 0 and limit 1024 with base 0 index 1023
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '1024', '--trace', '--limit', '1024', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 1536 with step 0 and limit 1536 with base 0 index 1535
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '1536', '--trace', '--limit', '1536', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 2048 with step 0 and limit 2048 with base 0 index 2047
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '2048', '--trace', '--limit', '2048', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 2560 with step 0 and limit 2560 with base 0 index 2559
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '2560', '--trace', '--limit', '2560', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 3072 with step 0 and limit 3072 with base 0 index 3071
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '3072', '--trace', '--limit', '3072', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 3584 with step 0 and limit 3584 with base 0 index 3583
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '3584', '--trace', '--limit', '3584', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Search hash iteration transaction 2: b078a44ff0b029456d44fceca2ad690104a521a6da2539c1a5dbdf3f70498134
prover-backend-1  | INFO:     172.18.0.1:57200 - "POST /api/v1/next_step HTTP/1.1" 200 OK
prover-backend-1  | Executing command for list 64 with step 0 and limit 64 with base 0 index 63
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '64', '--trace', '--limit', '64', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 128 with step 0 and limit 128 with base 0 index 127
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '128', '--trace', '--limit', '128', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 192 with step 0 and limit 192 with base 0 index 191
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '192', '--trace', '--limit', '192', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 256 with step 0 and limit 256 with base 0 index 255
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '256', '--trace', '--limit', '256', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 320 with step 0 and limit 320 with base 0 index 319
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '320', '--trace', '--limit', '320', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 384 with step 0 and limit 384 with base 0 index 383
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '384', '--trace', '--limit', '384', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 448 with step 0 and limit 448 with base 0 index 447
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '448', '--trace', '--limit', '448', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Search hash iteration transaction 3: ddc013e207e585dbee9abce6bfc56f08b104453f819b8cc7f498c5e2e3f520ce
prover-backend-1  | INFO:     172.18.0.1:60604 - "POST /api/v1/next_step HTTP/1.1" 200 OK
prover-backend-1  | Executing command for list 8 with step 0 and limit 8 with base 0 index 7
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '8', '--trace', '--limit', '8', '--input', '00001234', '--input-as-little']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 16 with step 0 and limit 16 with base 0 index 15
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '16', '--trace', '--limit', '16', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 24 with step 0 and limit 24 with base 0 index 23
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '24', '--trace', '--limit', '24', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 32 with step 0 and limit 32 with base 0 index 31
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '32', '--trace', '--limit', '32', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 40 with step 0 and limit 40 with base 0 index 39
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '40', '--trace', '--limit', '40', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 48 with step 0 and limit 48 with base 0 index 47
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '48', '--trace', '--limit', '48', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 56 with step 0 and limit 56 with base 0 index 55
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '56', '--trace', '--limit', '56', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Search hash iteration transaction 4: 1e379c1b9a3069af49c2f192594ba943c106fdc15e1815da35a3ab18bc2994a2
prover-backend-1  | INFO:     172.18.0.1:60620 - "POST /api/v1/next_step HTTP/1.1" 200 OK
prover-backend-1  | Executing command for list 9 with step 0 and limit 9 with base 0 index 8
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '9', '--trace', '--limit', '9', '--input', '00001234', '--input-as-little']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 11 with step 0 and limit 11 with base 0 index 10
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '11', '--trace', '--limit', '11', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 12 with step 0 and limit 12 with base 0 index 11
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '12', '--trace', '--limit', '12', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 13 with step 0 and limit 13 with base 0 index 12
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '13', '--trace', '--limit', '13', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 14 with step 0 and limit 14 with base 0 index 13
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '14', '--trace', '--limit', '14', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 15 with step 0 and limit 15 with base 0 index 14
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '15', '--trace', '--limit', '15', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Search hash iteration transaction 5: da0f186dea22d944d0d6322ea8f3abc2ad0734ee37cbc4c5d6ca34784e99457d
prover-backend-1  | INFO:     172.18.0.1:64112 - "POST /api/v1/next_step HTTP/1.1" 200 OK
prover-backend-1  | First wrong step: 9
prover-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Trace transaction: fa021ce3fe4f664f2733eefd8abcc51f59d622e0652d63215e66da6cde35d764
prover-backend-1  | INFO:     172.18.0.1:56744 - "POST /api/v1/next_step HTTP/1.1" 200 OK
prover-backend-1  | Call parallel hashed merkle root
prover-backend-1  | End of parallel hashed merkle root in 3.8139951109886168 minutes.
prover-backend-1  | Instruction index: 8001623c00
prover-backend-1  | Start control block computation
prover-backend-1  | End of control block computation in 232.14304327964783 seconds.
prover-backend-1  | INFO:     172.18.0.1:62692 - "POST /api/v1/next_step HTTP/1.1" 500 Internal Server Error
prover-backend-1  | ERROR:    Exception in ASGI application
prover-backend-1  | Traceback (most recent call last):
prover-backend-1  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/protocols/http/httptools_impl.py", line 409, in run_asgi
prover-backend-1  |     result = await app(  # type: ignore[func-returns-value]
prover-backend-1  |   File "/usr/local/lib/python3.10/site-packages/uvicorn/middleware/proxy_headers.py", line 60, in __call__
prover-backend-1  |     return await self.app(scope, receive, send)
prover-backend-1  |   File "/usr/local/lib/python3.10/site-packages/fastapi/applications.py", line 292, in __call__
prover-backend-1  |     await super().__call__(scope, receive, send)
prover-backend-1  |   File "/usr/local/lib/python3.10/site-packages/starlette/applications.py", line 122, in __call__
prover-backend-1  |     await self.middleware_stack(scope, receive, send)
prover-backend-1  |   File "/usr/local/lib/python3.10/site-packages/starlette/middleware/errors.py", line 184, in __call__
prover-backend-1  |     raise exc
prover-backend-1  |   File "/usr/local/lib/python3.10/site-packages/starlette/middleware/errors.py", line 162, in __call__
prover-backend-1  |     await self.app(scope, receive, _send)
prover-backend-1  |   File "/usr/local/lib/python3.10/site-packages/starlette/middleware/exceptions.py", line 79, in __call__
prover-backend-1  |     raise exc
prover-backend-1  |   File "/usr/local/lib/python3.10/site-packages/starlette/middleware/exceptions.py", line 68, in __call__
prover-backend-1  |     await self.app(scope, receive, sender)
prover-backend-1  |   File "/usr/local/lib/python3.10/site-packages/fastapi/middleware/asyncexitstack.py", line 20, in __call__
prover-backend-1  |     raise e
prover-backend-1  |   File "/usr/local/lib/python3.10/site-packages/fastapi/middleware/asyncexitstack.py", line 17, in __call__
prover-backend-1  |     await self.app(scope, receive, send)
prover-backend-1  |   File "/usr/local/lib/python3.10/site-packages/starlette/routing.py", line 718, in __call__
prover-backend-1  |     await route.handle(scope, receive, send)
prover-backend-1  |   File "/usr/local/lib/python3.10/site-packages/starlette/routing.py", line 276, in handle
prover-backend-1  |     await self.app(scope, receive, send)
prover-backend-1  |   File "/usr/local/lib/python3.10/site-packages/starlette/routing.py", line 66, in app
prover-backend-1  |     response = await func(request)
prover-backend-1  |   File "/usr/local/lib/python3.10/site-packages/fastapi/routing.py", line 273, in app
prover-backend-1  |     raw_response = await run_endpoint_function(
prover-backend-1  |   File "/usr/local/lib/python3.10/site-packages/fastapi/routing.py", line 190, in run_endpoint_function
prover-backend-1  |     return await dependant.call(**values)
prover-backend-1  |   File "/bitvmx-backend/prover_app/api/v1/router.py", line 50, in next_step_post
prover-backend-1  |     return await view_controller(next_step_post_view_input=next_step_post_input)
prover-backend-1  |   File "/bitvmx-backend/prover_app/api/v1/next_step/crud/v1/view_controllers/post.py", line 18, in __call__
prover-backend-1  |     last_confirmed_step = self.publish_next_step_controller(setup_uuid=setup_uuid)
prover-backend-1  |   File "/bitvmx-backend/prover_app/domain/controllers/v1/next_step/publish_next_step_controller.py", line 263, in __call__
prover-backend-1  |     last_confirmed_step_tx = execution_challenge_transaction_service(
prover-backend-1  |   File "/bitvmx-backend/bitvmx_protocol_library/transaction_generation/services/publication_services/prover/execution_challenge_transaction_service.py", line 157, in __call__
prover-backend-1  |     broadcast_transaction_service(
prover-backend-1  |   File "/bitvmx-backend/blockchain_query_services/services/regtest_api/broadcast_transaction_service.py", line 10, in __call__
prover-backend-1  |     self.bitcoin_rpc_client.send_raw_transaction(raw_tx=transaction)
prover-backend-1  |   File "/bitvmx-backend/blockchain_query_services/services/bitcoin_rpc_services.py", line 131, in send_raw_transaction
prover-backend-1  |     self._call_rpc("sendrawtransaction", [raw_tx])
prover-backend-1  |   File "/bitvmx-backend/blockchain_query_services/services/bitcoin_rpc_services.py", line 65, in _call_rpc
prover-backend-1  |     raise Exception(f"RPC Error: {response.text}")
prover-backend-1  | Exception: RPC Error: {"result":null,"error":{"code":-26,"message":"mandatory-script-verify-flag-failed (Script failed an OP_EQUALVERIFY operation)"},"id":"curltest"}
prover-backend-1  |

```

## verifier

```bash
❯ docker compose up verifier-backend                                               [18:41:45]
[+] Running 1/0
 ✔ Container bitvmx_protocol-verifier-backend-1  Created                                 0.0s
Attaching to verifier-backend-1
verifier-backend-1  | INFO:     Started server process [1]
verifier-backend-1  | INFO:     Waiting for application startup.
verifier-backend-1  | INFO:     Application startup complete.
verifier-backend-1  | INFO:     Uvicorn running on http://0.0.0.0:80 (Press CTRL+C to quit)
verifier-backend-1  | Init setup for id 98185493-a3ab-4e26-968a-78c1ae2a246c
verifier-backend-1  | INFO:     172.18.0.1:58370 - "POST /api/v1/setup HTTP/1.1" 200 OK
verifier-backend-1  | Call generate public keys: 0.0012657642364501953
verifier-backend-1  | Call generate scripts: 0.0062105655670166016
verifier-backend-1  | Call compute trigger trace challenge address: 6.319882392883301
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }} }, 10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }} }]
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }} }, 10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }} }]
verifier-backend-1  | Call transactions time: 3774.1311917304993
verifier-backend-1  | Call parallel hashed merkle root
verifier-backend-1  | End of parallel hashed merkle root in 3.8488587896029154 minutes.
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }} }} }]
verifier-backend-1  | Call create protocol setup properties time: 4170.50656414032
verifier-backend-1  | Public keys controller total time: 4177.496614456177
verifier-backend-1  | INFO:     172.18.0.1:58376 - "POST /api/v1/public_keys HTTP/1.1" 200 OK
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }} }} }]
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }} }} }]
verifier-backend-1  | Signatures controller total time: 25.60647702217102
verifier-backend-1  | INFO:     172.18.0.1:56402 - "POST /api/v1/signatures HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--elf', '../../BitVMX-CPU/docker-riscv32/riscv32/build/pkmn_bttl.elf', '--debug', '--checkpoints', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Executing command for list 51948 with step 0 and limit 51948 with base 0 index 51947
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51948', '--trace', '--limit', '51948', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Trigger protocol transaction: 216e7614dcb8648c395429a1d6d2654d61cca621bff079c1f9debc7d9c0c15e2
verifier-backend-1  | INFO:     172.18.0.1:64616 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 32768 with step 0 and limit 32768 with base 0 index 32767
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '32768', '--trace', '--limit', '32768', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 0: 2ba8e9090eca02979b58d43835cbbb8bbb065973838b0fbc69008d43be03ff00
verifier-backend-1  | INFO:     172.18.0.1:57348 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 4096 with step 0 and limit 4096 with base 0 index 4095
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '4096', '--trace', '--limit', '4096', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 1: dd8f1a2ab4e387179b75fb7b9721964b127ced02fcd1382de1b4fa8bb185e215
verifier-backend-1  | INFO:     172.18.0.1:59726 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 512 with step 0 and limit 512 with base 0 index 511
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '512', '--trace', '--limit', '512', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 2: f4ff5ff29b6ee51d39d3e9adeac595a1a510c4ebf3cb132eb3ff16af276ccd93
verifier-backend-1  | INFO:     172.18.0.1:58002 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 64 with step 0 and limit 64 with base 0 index 63
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '64', '--trace', '--limit', '64', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 3: 2729f2b42eabcd80f2fc6267c7a4777e1b52fe4fd517740ddac79aafed68c657
verifier-backend-1  | INFO:     172.18.0.1:58948 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 8 with step 0 and limit 8 with base 0 index 7
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '8', '--trace', '--limit', '8', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Executing command for list 16 with step 0 and limit 16 with base 0 index 15
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '16', '--trace', '--limit', '16', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 4: d590d772cd88dfd2afedce5d0b9029150893c1fc23c4722c9906fdb28c1336c4
verifier-backend-1  | INFO:     172.18.0.1:62532 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 9 with step 0 and limit 9 with base 0 index 8
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '9', '--trace', '--limit', '9', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 5: e327e398d0d94f4a4fbe3f4fc5089acbf0ebcba8a77cb0a6fc5ad3760890f3bc
verifier-backend-1  | INFO:     172.18.0.1:56148 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Checking correct hash challenge. Previous hash (correct): 7de065e34c7ba410fa7c48e764fba53fa3cd149bc6816944efc800896337b149, write trace: f0000028e07ffc1d8001624000, next hash(incorrect): eee2d83974c2de9e2146a3ea16ae42a95ef5a0186e0d6d5d2a3d208d10540a54
verifier-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }} }} }]
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }} }} }]
verifier-backend-1  | Trigger execution challenge transaction: c7874f513aae8faeef9f42866add164d79d2bddf1d2dc4fe8c2cb8cac30112d4
verifier-backend-1  | INFO:     172.18.0.1:64848 - "POST /api/v1/next_step HTTP/1.1" 200 OK
```

## bitcoin-regtest

```bash
❯ docker compose up bitcoin-regtest-node                                                                                                                                           [18:41:52]
[+] Running 7/7
 ✔ bitcoin-regtest-node Pulled                                                                                                                                                           5.6s
   ✔ afad30e59d72 Pull complete                                                                                                                                                          2.7s
   ✔ 387fe96768d5 Pull complete                                                                                                                                                          2.7s
   ✔ d05ed6b63543 Pull complete                                                                                                                                                          2.7s
   ✔ 72de8d2684cc Pull complete                                                                                                                                                          2.9s
   ✔ dffdc496b4a6 Pull complete                                                                                                                                                          2.9s
   ✔ b3cf9ab875cd Pull complete                                                                                                                                                          2.9s
[+] Running 3/2
 ✔ Network bitvmx_protocol_bitvmx-net                                                                                                                                  Created           0.0s
 ✔ Container bitvmx_protocol-bitcoin-regtest-node-1                                                                                                                    Created           0.2s
 ! bitcoin-regtest-node The requested image's platform (linux/amd64) does not match the detected host platform (linux/arm64/v8) and no specific platform was requested                   0.0s
Attaching to bitcoin-regtest-node-1
bitcoin-regtest-node-1  | + btc_init
bitcoin-regtest-node-1  | + '[' '!' -e /bitcoin/.bitcoin/bitcoin.conf ']'
bitcoin-regtest-node-1  | + cat /bitcoin/.bitcoin/bitcoin.conf
bitcoin-regtest-node-1  | regtest=1
bitcoin-regtest-node-1  | listen=0
bitcoin-regtest-node-1  | server=1
bitcoin-regtest-node-1  | txindex=1
bitcoin-regtest-node-1  | disablewallet=0
bitcoin-regtest-node-1  |
bitcoin-regtest-node-1  | [regtest]
bitcoin-regtest-node-1  | rpcuser=myuser
bitcoin-regtest-node-1  | rpcpassword=SomeDecentp4ssw0rd
bitcoin-regtest-node-1  | rpcclienttimeout=30
bitcoin-regtest-node-1  | rpcallowip=0.0.0.0/0
bitcoin-regtest-node-1  | rpcport=8443
bitcoin-regtest-node-1  | rpcbind=:8443
bitcoin-regtest-node-1  | fallbackfee=0.0002
bitcoin-regtest-node-1  |
bitcoin-regtest-node-1  | printtoconsole=1
bitcoin-regtest-node-1  | + echo 'Initialization completed successfully'
bitcoin-regtest-node-1  | dbcache=512Initialization completed successfully
bitcoin-regtest-node-1  | + [ 0 -eq 0 ]
bitcoin-regtest-node-1  | + set -- -rpcbind=:8332 -rpcallowip=0.0.0.0/0
bitcoin-regtest-node-1  | + exec bitcoind -rpcbind=:8332 -rpcallowip=0.0.0.0/0
bitcoin-regtest-node-1  | 2025-01-21T21:42:02Z Ignoring unknown configuration value regtest.rpcclienttimeout
bitcoin-regtest-node-1  | 2025-01-21T21:42:02Z Bitcoin Core version v28.0.0 (release build)
bitcoin-regtest-node-1  | 2025-01-21T21:42:02Z parameter interaction: -listen=0 -> setting -upnp=0
bitcoin-regtest-node-1  | 2025-01-21T21:42:02Z parameter interaction: -listen=0 -> setting -natpmp=0
bitcoin-regtest-node-1  | 2025-01-21T21:42:02Z parameter interaction: -listen=0 -> setting -discover=0
bitcoin-regtest-node-1  | 2025-01-21T21:42:02Z parameter interaction: -listen=0 -> setting -listenonion=0
bitcoin-regtest-node-1  | 2025-01-21T21:42:02Z parameter interaction: -listen=0 -> setting -i2pacceptincoming=0
bitcoin-regtest-node-1  | 2025-01-21T21:42:02Z Script verification uses 7 additional threads
bitcoin-regtest-node-1  | 2025-01-21T21:42:02Z Using the 'sse4(1way),sse41(4way)' SHA256 implementation
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Default data directory /bitcoin/.bitcoin
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Using data directory /bitcoin/.bitcoin/regtest
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Config file: /bitcoin/.bitcoin/bitcoin.conf
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Config file arg: disablewallet="0"
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Config file arg: listen="0"
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Config file arg: regtest="1"
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Config file arg: server="1"
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Config file arg: txindex="1"
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Config file arg: [regtest] dbcache="512"
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Config file arg: [regtest] fallbackfee="0.0002"
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Config file arg: [regtest] printtoconsole="1"
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Config file arg: [regtest] rpcallowip="0.0.0.0/0"
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Config file arg: [regtest] rpcbind=":8443"
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Config file arg: [regtest] rpcpassword=****
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Config file arg: [regtest] rpcport="8443"
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Config file arg: [regtest] rpcuser=****
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Command-line arg: rpcallowip="0.0.0.0/0"
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Command-line arg: rpcbind=":8332"
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Using at most 125 automatic connections (1048576 file descriptors available)
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z scheduler thread start
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Binding RPC on address  port 8332
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z WARNING: the RPC server is not safe to expose to untrusted networks such as the public internet
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Binding RPC on address  port 8443
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z WARNING: the RPC server is not safe to expose to untrusted networks such as the public internet
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Config options rpcuser and rpcpassword will soon be deprecated. Locally-run instances may remove rpcuser to use cookie-based auth, or may be replaced with rpcauth. Please see share/rpcauth for rpcauth auth generation.
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Starting HTTP server with 4 worker threads
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Using wallet directory /bitcoin/.bitcoin/regtest/wallets
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z init message: Verifying wallet(s)…
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Using /16 prefix for IP bucketing
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z init message: Loading P2P addresses…
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Creating peers.dat because the file was not found ("/bitcoin/.bitcoin/regtest/peers.dat")
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z init message: Loading banlist…
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Recreating the banlist database
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z SetNetworkActive: true
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z /bitcoin/.bitcoin/regtest/fee_estimates.dat is not found. Continue anyway.
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Script verification uses 7 additional threads
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Cache configuration:
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z * Using 2.0 MiB for block index database
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z * Using 63.8 MiB for transaction index database
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z * Using 8.0 MiB for chain state database
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z * Using 438.2 MiB for in-memory UTXO set (plus up to 286.1 MiB of unused mempool space)
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Using obfuscation key for blocksdir *.dat files (/bitcoin/.bitcoin/regtest/blocks): 'e865daa684f213f8'
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Using 16 MiB out of 16 MiB requested for signature cache, able to store 524288 elements
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Using 16 MiB out of 16 MiB requested for script execution cache, able to store 524288 elements
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z init message: Loading block index…
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Validating signatures for all blocks.
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Setting nMinimumChainWork=0000000000000000000000000000000000000000000000000000000000000000
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Opening LevelDB in /bitcoin/.bitcoin/regtest/blocks/index
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Opened LevelDB successfully
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Using obfuscation key for /bitcoin/.bitcoin/regtest/blocks/index: 0000000000000000
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z LoadBlockIndexDB: last block file = 0
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z LoadBlockIndexDB: last block file info: CBlockFileInfo(blocks=0, size=0, heights=0...0, time=1970-01-01...1970-01-01)
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Checking all blk files are present...
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Initializing chainstate Chainstate [ibd] @ height -1 (null)
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Opening LevelDB in /bitcoin/.bitcoin/regtest/chainstate
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Opened LevelDB successfully
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Wrote new obfuscate key for /bitcoin/.bitcoin/regtest/chainstate: 0c567d1525d0adbd
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Using obfuscation key for /bitcoin/.bitcoin/regtest/chainstate: 0c567d1525d0adbd
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Opening LevelDB in /bitcoin/.bitcoin/regtest/chainstate
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Opened LevelDB successfully
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Using obfuscation key for /bitcoin/.bitcoin/regtest/chainstate: 0c567d1525d0adbd
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z [Chainstate [ibd] @ height -1 (null)] resized coinsdb cache to 8.0 MiB
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z [Chainstate [ibd] @ height -1 (null)] resized coinstip cache to 438.2 MiB
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z init message: Verifying blocks…
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z  block index              39ms
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Opening LevelDB in /bitcoin/.bitcoin/regtest/indexes/txindex
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Opened LevelDB successfully
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Using obfuscation key for /bitcoin/.bitcoin/regtest/indexes/txindex: 0000000000000000
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Setting NODE_NETWORK on non-prune mode
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z initload thread start
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z UpdateTip: new best=0f9188f13cb7b2c71f2a335e3a4fc328bf5beb436012afca590b1a11466e2206 height=0 version=0x00000001 log2_work=1.000000 tx=1 date='2011-02-02T23:16:42Z' progress=1.000000 cache=0.3MiB(0txo)
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z block tree size = 1
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z nBestHeight = 0
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z txindex thread start
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z txindex is enabled at height 0
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z txindex thread exit
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Failed to open mempool file. Continuing anyway.
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z initload thread exit
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z 0 block-relay-only anchors will be tried for connections.
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z init message: Starting network threads…
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z net thread start
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z dnsseed thread start
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z addcon thread start
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z opencon thread start
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z msghand thread start
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z init message: Done loading
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z Loading addresses from DNS seed dummySeed.invalid.
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z 0 addresses found from DNS seeds
bitcoin-regtest-node-1  | 2025-01-21T21:42:03Z dnsseed thread exit
bitcoin-regtest-node-1  | 2025-01-21T21:42:05Z Using SQLite Version 3.38.5
bitcoin-regtest-node-1  | 2025-01-21T21:42:05Z Using wallet /bitcoin/.bitcoin/regtest/wallets/testwallet
bitcoin-regtest-node-1  | 2025-01-21T21:42:05Z init message: Loading wallet…
bitcoin-regtest-node-1  | 2025-01-21T21:42:05Z [testwallet] Wallet file version = 10500, last client version = 280000
bitcoin-regtest-node-1  | 2025-01-21T21:42:05Z [testwallet] Legacy Wallet Keys: 0 plaintext, 0 encrypted, 0 w/ metadata, 0 total.
bitcoin-regtest-node-1  | 2025-01-21T21:42:05Z [testwallet] Descriptors: 0, Descriptor Keys: 0 plaintext, 0 encrypted, 0 total.
bitcoin-regtest-node-1  | 2025-01-21T21:42:05Z [testwallet] Setting minversion to 169900
bitcoin-regtest-node-1  | 2025-01-21T21:42:05Z [testwallet] Setting spkMan to active: id = 93e7d56c81d6185d1d52e34553e4940ffc6d16d54f111aa46fe90bda9621006f, type = legacy, internal = false
bitcoin-regtest-node-1  | 2025-01-21T21:42:05Z [testwallet] Setting spkMan to active: id = 516136a27e95531b4a47e66332bdc6aa7d1defe695003b61ab52ad07df4a3a74, type = p2sh-segwit, internal = false
bitcoin-regtest-node-1  | 2025-01-21T21:42:06Z [testwallet] Setting spkMan to active: id = b948f274f0d739798ae7bd97a55e5a24854441c2c6770e78c90e474879ea6089, type = bech32, internal = false
bitcoin-regtest-node-1  | 2025-01-21T21:42:06Z [testwallet] Setting spkMan to active: id = e0f3a285b3973635497ae7aba439da8af8e3f903d32ee208d0d3d6e5a9229b2c, type = bech32m, internal = false
bitcoin-regtest-node-1  | 2025-01-21T21:42:06Z [testwallet] Setting spkMan to active: id = 167dffa1a5125b2909af6e2c1b3b90848880b2a8723cb544c921ae8ae985bb14, type = legacy, internal = true
bitcoin-regtest-node-1  | 2025-01-21T21:42:06Z [testwallet] Setting spkMan to active: id = 7fe1a592290ddbfcd0989b25d5249614a5c4896f9f26c8843d4bffe2a66579df, type = p2sh-segwit, internal = true
bitcoin-regtest-node-1  | 2025-01-21T21:42:06Z [testwallet] Setting spkMan to active: id = 40e867ed9b552de9c5929e1fee519e7b843e3b364cf29958b2f0d0f57556db74, type = bech32, internal = true
bitcoin-regtest-node-1  | 2025-01-21T21:42:06Z [testwallet] Setting spkMan to active: id = 483e598dc267ead64404aca478b2f0c047542df4deb3602fa8ad76a091e4945a, type = bech32m, internal = true
bitcoin-regtest-node-1  | 2025-01-21T21:42:06Z [testwallet] Wallet completed loading in             406ms
bitcoin-regtest-node-1  | 2025-01-21T21:42:06Z [testwallet] setKeyPool.size() = 8000
bitcoin-regtest-node-1  | 2025-01-21T21:42:06Z [testwallet] mapWallet.size() = 0
bitcoin-regtest-node-1  | 2025-01-21T21:42:06Z [testwallet] m_address_book.size() = 0
bitcoin-regtest-node-1  | 2025-01-21T21:43:04Z Adding fixed seeds as 60 seconds have passed and addrman is empty for at least one reachable network
bitcoin-regtest-node-1  | 2025-01-21T21:43:04Z Added 0 fixed seeds from reachable networks.
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Leaving InitialBlockDownload (latching to false)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=4d9ddc7380a5b1e8e9f482c2bdbe0d2e0570063456d29755558ff785cffeb617 height=1 version=0x20000000 log2_work=2.000000 tx=2 date='2025-01-21T21:43:05Z' progress=1.000000 cache=0.3MiB(1txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet e3070913fa5b771d114e6d398be66a192c43b7d13e9020d0134e47c530424284  new Confirmed (block=4d9ddc7380a5b1e8e9f482c2bdbe0d2e0570063456d29755558ff785cffeb617, height=1, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=3f053c48a67a68e73f9b638240fad2d3f146febe529001f6ab6af88e4b09102f height=2
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=3f053c48a67a68e73f9b638240fad2d3f146febe529001f6ab6af88e4b09102f height=2 version=0x20000000 log2_work=2.584963 tx=3 date='2025-01-21T21:43:06Z' progress=1.000000 cache=0.3MiB(2txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet aa26c6036d6e45a95a09dad2ee702fa8683de132a8bd05e92330b46aa8b45fae  new Confirmed (block=3f053c48a67a68e73f9b638240fad2d3f146febe529001f6ab6af88e4b09102f, height=2, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=4067f4ed28842d0319c99ae30722c5ccd708e8b7bf8707f99dfb5b206e07bb83 height=3
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=4067f4ed28842d0319c99ae30722c5ccd708e8b7bf8707f99dfb5b206e07bb83 height=3 version=0x20000000 log2_work=3.000000 tx=4 date='2025-01-21T21:43:06Z' progress=1.000000 cache=0.3MiB(3txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet 7e3019422ddf565c0f794ca54b01c5e29a8167cf9bf8e4262cec9eef9edcbfaa  new Confirmed (block=4067f4ed28842d0319c99ae30722c5ccd708e8b7bf8707f99dfb5b206e07bb83, height=3, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=73b86542d96275c41a3e31d866ebc7171b5e3cc79541d1c37727d2fd3c1d9d90 height=4
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=73b86542d96275c41a3e31d866ebc7171b5e3cc79541d1c37727d2fd3c1d9d90 height=4 version=0x20000000 log2_work=3.321928 tx=5 date='2025-01-21T21:43:07Z' progress=1.000000 cache=0.3MiB(4txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet a0ee15cd3d041dff3dbfc7a3fff24d3bfb462426c76e4a7bde4d48e7ff3cff44  new Confirmed (block=73b86542d96275c41a3e31d866ebc7171b5e3cc79541d1c37727d2fd3c1d9d90, height=4, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=14e23b7f6658d3e207414f79fb41a21cddd6fe362d39b4af451421bd9592145b height=5
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=14e23b7f6658d3e207414f79fb41a21cddd6fe362d39b4af451421bd9592145b height=5 version=0x20000000 log2_work=3.584963 tx=6 date='2025-01-21T21:43:07Z' progress=1.000000 cache=0.3MiB(5txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet 332c1b3e7222d5ae54982cfe5e70b0ea58dc96145abcd2df1dbe1a901ebeb40b  new Confirmed (block=14e23b7f6658d3e207414f79fb41a21cddd6fe362d39b4af451421bd9592145b, height=5, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=3ecef8d2fc2f8e5406b8a8a9457750681fccaffe51764a4dba6223a06a1b06a8 height=6
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=3ecef8d2fc2f8e5406b8a8a9457750681fccaffe51764a4dba6223a06a1b06a8 height=6 version=0x20000000 log2_work=3.807355 tx=7 date='2025-01-21T21:43:07Z' progress=1.000000 cache=0.3MiB(6txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet 97faa9845414bb09ac1d739a89f38fb32814abe5a554624495574aba90b2e816  new Confirmed (block=3ecef8d2fc2f8e5406b8a8a9457750681fccaffe51764a4dba6223a06a1b06a8, height=6, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=4d86e7706695d67601f2a9e201bc6756c92e239529671c21bb0bc1ba63497ccd height=7
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=4d86e7706695d67601f2a9e201bc6756c92e239529671c21bb0bc1ba63497ccd height=7 version=0x20000000 log2_work=4.000000 tx=8 date='2025-01-21T21:43:07Z' progress=1.000000 cache=0.3MiB(7txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet 3194ea5942c14e8f1403bf5b7140f2d951e2b6544cb3fbb0a2fccb5584927016  new Confirmed (block=4d86e7706695d67601f2a9e201bc6756c92e239529671c21bb0bc1ba63497ccd, height=7, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=0991ae168dd8dab21ad3088f2dcaf05f52edcd4eed0c03d4996c2aa2d4d73f88 height=8
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=0991ae168dd8dab21ad3088f2dcaf05f52edcd4eed0c03d4996c2aa2d4d73f88 height=8 version=0x20000000 log2_work=4.169925 tx=9 date='2025-01-21T21:43:08Z' progress=1.000000 cache=0.3MiB(8txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet 39a83c8b3f850d5a05085bf69dd261b61eee7956f08047988bf0f02212727bf6  new Confirmed (block=0991ae168dd8dab21ad3088f2dcaf05f52edcd4eed0c03d4996c2aa2d4d73f88, height=8, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=341f9e418429112621633294acaf2b842a7de0c7893adc0d3fabebcfa12725ca height=9
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=341f9e418429112621633294acaf2b842a7de0c7893adc0d3fabebcfa12725ca height=9 version=0x20000000 log2_work=4.321928 tx=10 date='2025-01-21T21:43:08Z' progress=1.000000 cache=0.3MiB(9txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet f2b9a676d803d64da9d803dc9dfa37e782ae106d9b595b03ea04acb196485a8a  new Confirmed (block=341f9e418429112621633294acaf2b842a7de0c7893adc0d3fabebcfa12725ca, height=9, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=0baf3479e9610038ddd762b721d1eaa30428135a6fb1494dd005edb0d9ed52fa height=10
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=0baf3479e9610038ddd762b721d1eaa30428135a6fb1494dd005edb0d9ed52fa height=10 version=0x20000000 log2_work=4.459432 tx=11 date='2025-01-21T21:43:08Z' progress=1.000000 cache=0.3MiB(10txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet 03ec0e5bc6a9e58425592f5ce7c3aaf7d07ed4fcf4bf9a363648bdea268370cd  new Confirmed (block=0baf3479e9610038ddd762b721d1eaa30428135a6fb1494dd005edb0d9ed52fa, height=10, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=6d0d8839e6b5676ab457f4af43508206fe3ffb8f14e1e23e7aee56e9fa611786 height=11
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=6d0d8839e6b5676ab457f4af43508206fe3ffb8f14e1e23e7aee56e9fa611786 height=11 version=0x20000000 log2_work=4.584963 tx=12 date='2025-01-21T21:43:08Z' progress=1.000000 cache=0.3MiB(11txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet 78641c5329d0fb8dfd18116faa2f3530eff8837b92685e1653871564160dd01e  new Confirmed (block=6d0d8839e6b5676ab457f4af43508206fe3ffb8f14e1e23e7aee56e9fa611786, height=11, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=38bb1662a1db041dea909767bf68ad556ff5763d35d9f5e3e46f09a1f6a48323 height=12
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=38bb1662a1db041dea909767bf68ad556ff5763d35d9f5e3e46f09a1f6a48323 height=12 version=0x20000000 log2_work=4.700440 tx=13 date='2025-01-21T21:43:08Z' progress=1.000000 cache=0.3MiB(12txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet cf7022444bd06df388ea9b2087f1abde4a5da7d78f40561edbf24c4f9ed14821  new Confirmed (block=38bb1662a1db041dea909767bf68ad556ff5763d35d9f5e3e46f09a1f6a48323, height=12, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=44192922d518ebac10deadb50a7cdf837d4a92b4f394818e74d4edd40628ac8d height=13
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=44192922d518ebac10deadb50a7cdf837d4a92b4f394818e74d4edd40628ac8d height=13 version=0x20000000 log2_work=4.807355 tx=14 date='2025-01-21T21:43:08Z' progress=1.000000 cache=0.3MiB(13txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet 301b316b9aba18973cfc4729cbcec06569b3e8345f399d364393da54dbe62a7c  new Confirmed (block=44192922d518ebac10deadb50a7cdf837d4a92b4f394818e74d4edd40628ac8d, height=13, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=265161520c3e5751fc2b7677f69e186a6e999793757e80eee8bd067fcc368b8f height=14
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=265161520c3e5751fc2b7677f69e186a6e999793757e80eee8bd067fcc368b8f height=14 version=0x20000000 log2_work=4.906891 tx=15 date='2025-01-21T21:43:09Z' progress=1.000000 cache=0.3MiB(14txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet bce90d66dfafa7d47a478b118ec057ad0de2348e6ac4c0ba91ac7a8fbaf5ccde  new Confirmed (block=265161520c3e5751fc2b7677f69e186a6e999793757e80eee8bd067fcc368b8f, height=14, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=1a709c3f3ce2edd4b525d05088fc72a0d56cc98137de602acf6bcb3c23276e3e height=15
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=1a709c3f3ce2edd4b525d05088fc72a0d56cc98137de602acf6bcb3c23276e3e height=15 version=0x20000000 log2_work=5.000000 tx=16 date='2025-01-21T21:43:09Z' progress=1.000000 cache=0.3MiB(15txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet c6d03fdf4a33a7cee27e3f43281fa71b2725f939383c951947eae4c779dea3a0  new Confirmed (block=1a709c3f3ce2edd4b525d05088fc72a0d56cc98137de602acf6bcb3c23276e3e, height=15, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 884 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=51b5ff190986058f29bc4e17c8bea74ea7a33ae36d8ea4ea1ccb75f84e66a101 height=16
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=51b5ff190986058f29bc4e17c8bea74ea7a33ae36d8ea4ea1ccb75f84e66a101 height=16 version=0x20000000 log2_work=5.087463 tx=17 date='2025-01-21T21:43:09Z' progress=1.000000 cache=0.3MiB(16txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z [testwallet] AddToWallet 882f4650ca3cb8ea0fa02206f54b9b2661808c949028f15b312224b74fe3431f  new Confirmed (block=51b5ff190986058f29bc4e17c8bea74ea7a33ae36d8ea4ea1ccb75f84e66a101, height=16, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z Saw new header hash=708f36f62a26558beaa98f4a2c68aacb7606d5bf959519ef6a78723a60e14069 height=17
bitcoin-regtest-node-1  | 2025-01-21T21:43:05Z UpdateTip: new best=708f36f62a26558beaa98f4a2c68aacb7606d5bf959519ef6a78723a60e14069 height=17 version=0x20000000 log2_work=5.169925 tx=18 date='2025-01-21T21:43:09Z' progress=1.000000 cache=0.3MiB(17txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet ed99cff461a94c5df46349195f2da8ce9bc6c6c7d391e6cbc7b328f775db347e  new Confirmed (block=708f36f62a26558beaa98f4a2c68aacb7606d5bf959519ef6a78723a60e14069, height=17, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=0533eb8321b40131c504f52f5db1a7204ef17ae75faa7807df2eb1a5bac75e0f height=18
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=0533eb8321b40131c504f52f5db1a7204ef17ae75faa7807df2eb1a5bac75e0f height=18 version=0x20000000 log2_work=5.247928 tx=19 date='2025-01-21T21:43:09Z' progress=1.000000 cache=0.3MiB(18txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet c395195d4dccd85b17172d6108c74e5b94b5cf08b346b6428957dfb4f6e697f5  new Confirmed (block=0533eb8321b40131c504f52f5db1a7204ef17ae75faa7807df2eb1a5bac75e0f, height=18, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=0c2d74fdc92657a42f701c5d4c86d0069fb65d132f03bfcbe41e66c3418d74a5 height=19
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=0c2d74fdc92657a42f701c5d4c86d0069fb65d132f03bfcbe41e66c3418d74a5 height=19 version=0x20000000 log2_work=5.321928 tx=20 date='2025-01-21T21:43:09Z' progress=1.000000 cache=0.3MiB(19txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet e4b6297cd4602153684df89e254251f6c79ff9ce11da68e885a3e66329544c42  new Confirmed (block=0c2d74fdc92657a42f701c5d4c86d0069fb65d132f03bfcbe41e66c3418d74a5, height=19, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=736a13248e937a8affac704530f714187ed82daffb0218b2196f868858899134 height=20
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=736a13248e937a8affac704530f714187ed82daffb0218b2196f868858899134 height=20 version=0x20000000 log2_work=5.392317 tx=21 date='2025-01-21T21:43:10Z' progress=1.000000 cache=0.3MiB(20txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet f789e1d2e7e93f59c39d04c1524cc55641c649dbc602c65e5f8cd40fc77688e5  new Confirmed (block=736a13248e937a8affac704530f714187ed82daffb0218b2196f868858899134, height=20, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=56797e26c7062f76e4e01ae8f4abcccc7064ca475f569a6bf257a35a7381b1f2 height=21
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=56797e26c7062f76e4e01ae8f4abcccc7064ca475f569a6bf257a35a7381b1f2 height=21 version=0x20000000 log2_work=5.459432 tx=22 date='2025-01-21T21:43:10Z' progress=1.000000 cache=0.3MiB(21txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet b6e4d31ae9ba65165249ea6d858c252b7005167504cb2d2c047aac0f32334a39  new Confirmed (block=56797e26c7062f76e4e01ae8f4abcccc7064ca475f569a6bf257a35a7381b1f2, height=21, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=51332a4a4599121586d4e3a6d68dce57edc010e35e2262043f631a762a524e6b height=22
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=51332a4a4599121586d4e3a6d68dce57edc010e35e2262043f631a762a524e6b height=22 version=0x20000000 log2_work=5.523562 tx=23 date='2025-01-21T21:43:10Z' progress=1.000000 cache=0.3MiB(22txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet bc56ca1c2b5531a6d5b991c329edb2f2d609d12924f9a246581513f99913c861  new Confirmed (block=51332a4a4599121586d4e3a6d68dce57edc010e35e2262043f631a762a524e6b, height=22, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=36b51f9ff4118871b54c14c72b1df6bfb182dcfb4c3f005fd9faca301c94b9ed height=23
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=36b51f9ff4118871b54c14c72b1df6bfb182dcfb4c3f005fd9faca301c94b9ed height=23 version=0x20000000 log2_work=5.584963 tx=24 date='2025-01-21T21:43:10Z' progress=1.000000 cache=0.3MiB(23txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 0d6d1d51cf48286a4d47ad02fd8838435528070420d2ccfd4875509e37f77170  new Confirmed (block=36b51f9ff4118871b54c14c72b1df6bfb182dcfb4c3f005fd9faca301c94b9ed, height=23, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=14a8e6e0e7d94f4c196a9e6102faa8374fa8b1920cca88d31b3e90f2b4d0b26d height=24
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=14a8e6e0e7d94f4c196a9e6102faa8374fa8b1920cca88d31b3e90f2b4d0b26d height=24 version=0x20000000 log2_work=5.643856 tx=25 date='2025-01-21T21:43:10Z' progress=1.000000 cache=0.3MiB(24txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 83a1ab8e5c99ed037a6d8477367402dadb16d1feaf6325399265ec24e40c7459  new Confirmed (block=14a8e6e0e7d94f4c196a9e6102faa8374fa8b1920cca88d31b3e90f2b4d0b26d, height=24, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=78577fc4d7f6a417ef1611d77cbbc4bc85bf219c63cf3362823bd14ecd86520b height=25
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=78577fc4d7f6a417ef1611d77cbbc4bc85bf219c63cf3362823bd14ecd86520b height=25 version=0x20000000 log2_work=5.700440 tx=26 date='2025-01-21T21:43:10Z' progress=1.000000 cache=0.3MiB(25txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 47905e9e544d8a3f03db0a732e9a3e823073036e5d8a1c441820746997179d6d  new Confirmed (block=78577fc4d7f6a417ef1611d77cbbc4bc85bf219c63cf3362823bd14ecd86520b, height=25, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=628084c465b8a232d2f906d1cefa5657530d391d6bf59c404a5c23e3ee3bb74a height=26
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=628084c465b8a232d2f906d1cefa5657530d391d6bf59c404a5c23e3ee3bb74a height=26 version=0x20000000 log2_work=5.754888 tx=27 date='2025-01-21T21:43:11Z' progress=1.000000 cache=0.3MiB(26txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet b4bb4b02021c149fd9536b4e1cbd9e8afb426be08bc6087c15fcec4492cfed59  new Confirmed (block=628084c465b8a232d2f906d1cefa5657530d391d6bf59c404a5c23e3ee3bb74a, height=26, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=6117f2e88e30c015e868a6a2a01fdc2d5992c77f0c3190257208d278859f411a height=27
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=6117f2e88e30c015e868a6a2a01fdc2d5992c77f0c3190257208d278859f411a height=27 version=0x20000000 log2_work=5.807355 tx=28 date='2025-01-21T21:43:11Z' progress=1.000000 cache=0.3MiB(27txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 7defb9ca83b72fcdfe89a874823b73ee1eabada73b8de5c40ad3981fe445e6ab  new Confirmed (block=6117f2e88e30c015e868a6a2a01fdc2d5992c77f0c3190257208d278859f411a, height=27, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=1f692cdc8f328033192caaedf13497e8bce22c82c58b2feb7728fa1faa8de042 height=28
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=1f692cdc8f328033192caaedf13497e8bce22c82c58b2feb7728fa1faa8de042 height=28 version=0x20000000 log2_work=5.857981 tx=29 date='2025-01-21T21:43:11Z' progress=1.000000 cache=0.3MiB(28txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet bf58252a0391571f8161ccc0d531f3b5580cb13f440c392b8943e43483bdbc25  new Confirmed (block=1f692cdc8f328033192caaedf13497e8bce22c82c58b2feb7728fa1faa8de042, height=28, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=15080ac62a09f5cefd203fcb7a00e6a3c8dc4a909966c34c14ce02d7e28d1c2d height=29
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=15080ac62a09f5cefd203fcb7a00e6a3c8dc4a909966c34c14ce02d7e28d1c2d height=29 version=0x20000000 log2_work=5.906891 tx=30 date='2025-01-21T21:43:11Z' progress=1.000000 cache=0.3MiB(29txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet adee1cdc11f0482083ed3ff96463d4c79c168a20bbb40495712fa29bd6166a55  new Confirmed (block=15080ac62a09f5cefd203fcb7a00e6a3c8dc4a909966c34c14ce02d7e28d1c2d, height=29, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=0650da35d44f2499e240141696d8fee6ff0760aa4d89480ea78280923dddaa5a height=30
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=0650da35d44f2499e240141696d8fee6ff0760aa4d89480ea78280923dddaa5a height=30 version=0x20000000 log2_work=5.954196 tx=31 date='2025-01-21T21:43:11Z' progress=1.000000 cache=0.3MiB(30txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 0d154caddff01a1ecac4723efe877831d75ff5d7bb5ed870db1f89819a5acbe4  new Confirmed (block=0650da35d44f2499e240141696d8fee6ff0760aa4d89480ea78280923dddaa5a, height=30, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=6e3a29fa88eafa6865ef1ab76215bb6ef5c8e6c6a551f0fc6eec5cdf4f36e363 height=31
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=6e3a29fa88eafa6865ef1ab76215bb6ef5c8e6c6a551f0fc6eec5cdf4f36e363 height=31 version=0x20000000 log2_work=6.000000 tx=32 date='2025-01-21T21:43:11Z' progress=1.000000 cache=0.3MiB(31txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 811128f8af01ce748360d9b2c2457df355b2e1f71a5c91bf43b0cfa6d6a4a378  new Confirmed (block=6e3a29fa88eafa6865ef1ab76215bb6ef5c8e6c6a551f0fc6eec5cdf4f36e363, height=31, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=24415861580f55887399b59aba28fc2199a635364b61d88c45403c6c72cb4a95 height=32
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=24415861580f55887399b59aba28fc2199a635364b61d88c45403c6c72cb4a95 height=32 version=0x20000000 log2_work=6.044394 tx=33 date='2025-01-21T21:43:12Z' progress=1.000000 cache=0.3MiB(32txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 4f740aa4b1e3196f3512e941d3be51eabd2b1a95258d260e6f2a76269d5aea97  new Confirmed (block=24415861580f55887399b59aba28fc2199a635364b61d88c45403c6c72cb4a95, height=32, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=391f38589dc746621fd9291d6fe7b8488869e140bec57a0e0173d9174716820b height=33
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=391f38589dc746621fd9291d6fe7b8488869e140bec57a0e0173d9174716820b height=33 version=0x20000000 log2_work=6.087463 tx=34 date='2025-01-21T21:43:12Z' progress=1.000000 cache=0.3MiB(33txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet b3ebec518173600b8f1c3630f598a8c401a750bb09a761037265d7c3d6650dae  new Confirmed (block=391f38589dc746621fd9291d6fe7b8488869e140bec57a0e0173d9174716820b, height=33, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=37c41551e994e62de4f68d37e1df51d5f9119a8a3c07a8832ab6f766a3017376 height=34
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=37c41551e994e62de4f68d37e1df51d5f9119a8a3c07a8832ab6f766a3017376 height=34 version=0x20000000 log2_work=6.129283 tx=35 date='2025-01-21T21:43:12Z' progress=1.000000 cache=0.3MiB(34txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 3c9af82718a25ce393e29187f7ff5be7f785daf5bac466110495ecaa2069f749  new Confirmed (block=37c41551e994e62de4f68d37e1df51d5f9119a8a3c07a8832ab6f766a3017376, height=34, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=035c54949a036d59d60fe05abb983ca4b6aad58c7e519a3a6a83ce80704c1063 height=35
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=035c54949a036d59d60fe05abb983ca4b6aad58c7e519a3a6a83ce80704c1063 height=35 version=0x20000000 log2_work=6.169925 tx=36 date='2025-01-21T21:43:12Z' progress=1.000000 cache=0.3MiB(35txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 039120db2ae46e2c25c469862788c1381a87cf10bd1bd6465cc29b2c5b44846a  new Confirmed (block=035c54949a036d59d60fe05abb983ca4b6aad58c7e519a3a6a83ce80704c1063, height=35, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=1f160d9d8a6541d096ed6ad413dfc24a69d666de37daa0b4c5ec794425914447 height=36
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=1f160d9d8a6541d096ed6ad413dfc24a69d666de37daa0b4c5ec794425914447 height=36 version=0x20000000 log2_work=6.209453 tx=37 date='2025-01-21T21:43:12Z' progress=1.000000 cache=0.3MiB(36txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 4bdda535e4422a29535c5ca4c99af65ab61c3a23864edbaa3174161ab2b6e72a  new Confirmed (block=1f160d9d8a6541d096ed6ad413dfc24a69d666de37daa0b4c5ec794425914447, height=36, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=05bf23710b8af8d5b59109805c4138081e635d881c642dcc6e09db92be214c2a height=37
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=05bf23710b8af8d5b59109805c4138081e635d881c642dcc6e09db92be214c2a height=37 version=0x20000000 log2_work=6.247928 tx=38 date='2025-01-21T21:43:12Z' progress=1.000000 cache=0.3MiB(37txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 869f468923c3a96fb80f92d70148f7e0bba6be2d36ba87d081cbdaa7f2fa573f  new Confirmed (block=05bf23710b8af8d5b59109805c4138081e635d881c642dcc6e09db92be214c2a, height=37, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=5e12b8f4fe52b0223d961abeafb069b3c3516666c388165512d11b83b698b929 height=38
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=5e12b8f4fe52b0223d961abeafb069b3c3516666c388165512d11b83b698b929 height=38 version=0x20000000 log2_work=6.285402 tx=39 date='2025-01-21T21:43:13Z' progress=1.000000 cache=0.3MiB(38txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 6ce28958d0033a90f0da06b3f80f0a58d3c9c896a50957bd3f64fad65abfe48f  new Confirmed (block=5e12b8f4fe52b0223d961abeafb069b3c3516666c388165512d11b83b698b929, height=38, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=3133057491e26f201a35236bfe3ea67c9058486145223e06351f53156cd54b78 height=39
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=3133057491e26f201a35236bfe3ea67c9058486145223e06351f53156cd54b78 height=39 version=0x20000000 log2_work=6.321928 tx=40 date='2025-01-21T21:43:13Z' progress=1.000000 cache=0.3MiB(39txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 2c4bb06db3f5e50c4caa842860c65086663e781a77004006b05419d344a50465  new Confirmed (block=3133057491e26f201a35236bfe3ea67c9058486145223e06351f53156cd54b78, height=39, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=113ac52748dffda49ce6a0f9e8f4c0357da197b680c985d0a94af38edcb1bd3c height=40
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=113ac52748dffda49ce6a0f9e8f4c0357da197b680c985d0a94af38edcb1bd3c height=40 version=0x20000000 log2_work=6.357552 tx=41 date='2025-01-21T21:43:13Z' progress=1.000000 cache=0.3MiB(40txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 71c577bbf38962af85f8cc9ecfeb0d9dd357709eb2d4bad82db92bae3c207ba4  new Confirmed (block=113ac52748dffda49ce6a0f9e8f4c0357da197b680c985d0a94af38edcb1bd3c, height=40, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=426e5973dc5ed9f6fdb6cbd1dca2c05c3ea59680d91ca150bc7e174acdfb5324 height=41
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=426e5973dc5ed9f6fdb6cbd1dca2c05c3ea59680d91ca150bc7e174acdfb5324 height=41 version=0x20000000 log2_work=6.392317 tx=42 date='2025-01-21T21:43:13Z' progress=1.000000 cache=0.3MiB(41txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet e61ca29fabc4d8593f97ec95372fa8b67c11ea49e3628585af25313bd7ac665f  new Confirmed (block=426e5973dc5ed9f6fdb6cbd1dca2c05c3ea59680d91ca150bc7e174acdfb5324, height=41, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=3beafb9ea45b77ac6d8516e042c4a9eb9e370d8dd75422dbe6234a2fec58b0c4 height=42
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=3beafb9ea45b77ac6d8516e042c4a9eb9e370d8dd75422dbe6234a2fec58b0c4 height=42 version=0x20000000 log2_work=6.426265 tx=43 date='2025-01-21T21:43:13Z' progress=1.000000 cache=0.3MiB(42txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 919bd0610bfcd72deca603d5e087e458c360c69b7b54b1cec975064bbff75730  new Confirmed (block=3beafb9ea45b77ac6d8516e042c4a9eb9e370d8dd75422dbe6234a2fec58b0c4, height=42, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=0966f82533262b00c7b736842f2a5974c7ef576b7d1bc9c3f3555ce4e1f62dd5 height=43
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=0966f82533262b00c7b736842f2a5974c7ef576b7d1bc9c3f3555ce4e1f62dd5 height=43 version=0x20000000 log2_work=6.459432 tx=44 date='2025-01-21T21:43:13Z' progress=1.000000 cache=0.3MiB(43txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 240ee99c1ff4452847150df02ab372e488155590504d79e4b3fa9b6e38e0e70a  new Confirmed (block=0966f82533262b00c7b736842f2a5974c7ef576b7d1bc9c3f3555ce4e1f62dd5, height=43, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=31ed8f500ff06878a6fcb550f7aa5cce4e6201753e5a8a2bb1d0eae1ee1b58fd height=44
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=31ed8f500ff06878a6fcb550f7aa5cce4e6201753e5a8a2bb1d0eae1ee1b58fd height=44 version=0x20000000 log2_work=6.491853 tx=45 date='2025-01-21T21:43:14Z' progress=1.000000 cache=0.3MiB(44txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 3fcf514640702851ce4cf40acec05102bbfbf67060f3ca00d5cd91542c6fb033  new Confirmed (block=31ed8f500ff06878a6fcb550f7aa5cce4e6201753e5a8a2bb1d0eae1ee1b58fd, height=44, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=526fdd97b158241fe16cdbdec2adb2881c1c4eb787adf6c8510485c48a29982d height=45
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=526fdd97b158241fe16cdbdec2adb2881c1c4eb787adf6c8510485c48a29982d height=45 version=0x20000000 log2_work=6.523562 tx=46 date='2025-01-21T21:43:14Z' progress=1.000000 cache=0.3MiB(45txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet a3567750dd4b9eb58ad243cbddbb48ee1da9b47d5de38644b84ab2fa5a3bff5b  new Confirmed (block=526fdd97b158241fe16cdbdec2adb2881c1c4eb787adf6c8510485c48a29982d, height=45, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=20c1dd07c11cbaaf6e64f19474d3bfcc9ee4e2d02c0e5b7af713d577c15a0aea height=46
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=20c1dd07c11cbaaf6e64f19474d3bfcc9ee4e2d02c0e5b7af713d577c15a0aea height=46 version=0x20000000 log2_work=6.554589 tx=47 date='2025-01-21T21:43:14Z' progress=1.000000 cache=0.3MiB(46txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet b8711eadeb98059b05777bfad13a3192fc1140636c21d6443078f2c5a154ece0  new Confirmed (block=20c1dd07c11cbaaf6e64f19474d3bfcc9ee4e2d02c0e5b7af713d577c15a0aea, height=46, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=3a0ad0b758da1d9527e057bfd82cff34d5df178ca84aa6a64c15f32eeca99937 height=47
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=3a0ad0b758da1d9527e057bfd82cff34d5df178ca84aa6a64c15f32eeca99937 height=47 version=0x20000000 log2_work=6.584963 tx=48 date='2025-01-21T21:43:14Z' progress=1.000000 cache=0.3MiB(47txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet c37a79e8cc2226bf8cc0010b2454dee7c8c83962b10a53b642999da5cc8a55c5  new Confirmed (block=3a0ad0b758da1d9527e057bfd82cff34d5df178ca84aa6a64c15f32eeca99937, height=47, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=334cafb389cf461afe0482cd265b7276168f0a564597167a6903a70e327fcf99 height=48
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=334cafb389cf461afe0482cd265b7276168f0a564597167a6903a70e327fcf99 height=48 version=0x20000000 log2_work=6.614710 tx=49 date='2025-01-21T21:43:14Z' progress=1.000000 cache=0.3MiB(48txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet a0747541749ce7d0ec3945e17cd8209b0a36d691d81eb78fd67542224ff72c15  new Confirmed (block=334cafb389cf461afe0482cd265b7276168f0a564597167a6903a70e327fcf99, height=48, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=0d4595ac8293b8c26690257aca147a83bcbe33ad10528ad657b2797e19aec8c8 height=49
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=0d4595ac8293b8c26690257aca147a83bcbe33ad10528ad657b2797e19aec8c8 height=49 version=0x20000000 log2_work=6.643856 tx=50 date='2025-01-21T21:43:14Z' progress=1.000000 cache=0.3MiB(49txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet e57116110b4a95706fde58415a62ca7a9c066c8e70653cabe19a3c965774486f  new Confirmed (block=0d4595ac8293b8c26690257aca147a83bcbe33ad10528ad657b2797e19aec8c8, height=49, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=29f92ceb12170aef668c7ffc560db3be80f695091145b78654ecafce192a188b height=50
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=29f92ceb12170aef668c7ffc560db3be80f695091145b78654ecafce192a188b height=50 version=0x20000000 log2_work=6.672425 tx=51 date='2025-01-21T21:43:15Z' progress=1.000000 cache=0.3MiB(50txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 656a2d018585051a58a6c64a45bf3390335e1bf02d94025201263337f173d4cc  new Confirmed (block=29f92ceb12170aef668c7ffc560db3be80f695091145b78654ecafce192a188b, height=50, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=4d22d0aa7bfa49a4b6d9a143a380577cea4e892c710e19e0838cfc5cf0787336 height=51
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=4d22d0aa7bfa49a4b6d9a143a380577cea4e892c710e19e0838cfc5cf0787336 height=51 version=0x20000000 log2_work=6.700440 tx=52 date='2025-01-21T21:43:15Z' progress=1.000000 cache=0.3MiB(51txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet f7f18a1d62eab64a8539065e9c196ec1c7bdd02e0ea808c82b62b05af082db84  new Confirmed (block=4d22d0aa7bfa49a4b6d9a143a380577cea4e892c710e19e0838cfc5cf0787336, height=51, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=41d5c189de3b15468b30b2148fd5806fc504b5296a603b520c543d20a624a8ee height=52
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=41d5c189de3b15468b30b2148fd5806fc504b5296a603b520c543d20a624a8ee height=52 version=0x20000000 log2_work=6.727920 tx=53 date='2025-01-21T21:43:15Z' progress=1.000000 cache=0.3MiB(52txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 5a9d813645f964db0b59fb269a7ea21dafba6f37af6f7f745bec4e1b53dba216  new Confirmed (block=41d5c189de3b15468b30b2148fd5806fc504b5296a603b520c543d20a624a8ee, height=52, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=30d3db38c56998253e4a87dad7b74fa21eec7f39bc6ff65774b62453b7a23435 height=53
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=30d3db38c56998253e4a87dad7b74fa21eec7f39bc6ff65774b62453b7a23435 height=53 version=0x20000000 log2_work=6.754888 tx=54 date='2025-01-21T21:43:15Z' progress=1.000000 cache=0.3MiB(53txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 1eadf99d81f406df713d40fc2eecd0547d1cc0c3e08d3dfc6307f693d2476552  new Confirmed (block=30d3db38c56998253e4a87dad7b74fa21eec7f39bc6ff65774b62453b7a23435, height=53, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=287270a689c0b6e485404575a8d84f5f59b2385058d71fa386a7095dfa48d19c height=54
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=287270a689c0b6e485404575a8d84f5f59b2385058d71fa386a7095dfa48d19c height=54 version=0x20000000 log2_work=6.781360 tx=55 date='2025-01-21T21:43:15Z' progress=1.000000 cache=0.3MiB(54txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 21322a44877de32540e62e4bc1432bd59ac51f1939104cec42f02c9a79528698  new Confirmed (block=287270a689c0b6e485404575a8d84f5f59b2385058d71fa386a7095dfa48d19c, height=54, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=5cd2617e0655512b904f57b5e69919bf2ff12a7568cd37797630ca29b2c53410 height=55
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=5cd2617e0655512b904f57b5e69919bf2ff12a7568cd37797630ca29b2c53410 height=55 version=0x20000000 log2_work=6.807355 tx=56 date='2025-01-21T21:43:15Z' progress=1.000000 cache=0.3MiB(55txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 40051c3320d2f3d047ac63172ce7d33350a9dbb812b32a88b3a1d857ba740c18  new Confirmed (block=5cd2617e0655512b904f57b5e69919bf2ff12a7568cd37797630ca29b2c53410, height=55, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=32000689b547b63ca86133c95363e525acb478f49c45ff025f41ce9d70e11dba height=56
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=32000689b547b63ca86133c95363e525acb478f49c45ff025f41ce9d70e11dba height=56 version=0x20000000 log2_work=6.832890 tx=57 date='2025-01-21T21:43:16Z' progress=1.000000 cache=0.3MiB(56txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 4feb05c2441100401c3a2420b982d9f1a29b8543c8280fc8eb0be6687a9c28f0  new Confirmed (block=32000689b547b63ca86133c95363e525acb478f49c45ff025f41ce9d70e11dba, height=56, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=69bffb85cd7cc03dd67eef1d4febc4db40f3630aa70f348eb96394807fad2ea4 height=57
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=69bffb85cd7cc03dd67eef1d4febc4db40f3630aa70f348eb96394807fad2ea4 height=57 version=0x20000000 log2_work=6.857981 tx=58 date='2025-01-21T21:43:16Z' progress=1.000000 cache=0.3MiB(57txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 7af0da4a110a726ddb45015a1d9cbcb70f4dccae59b8f96d23baa3177afacfdc  new Confirmed (block=69bffb85cd7cc03dd67eef1d4febc4db40f3630aa70f348eb96394807fad2ea4, height=57, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=5275fafa759058d1a837195693e8a5e38f4e41ffd83aff9b186d299d0f2961e5 height=58
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=5275fafa759058d1a837195693e8a5e38f4e41ffd83aff9b186d299d0f2961e5 height=58 version=0x20000000 log2_work=6.882643 tx=59 date='2025-01-21T21:43:16Z' progress=1.000000 cache=0.3MiB(58txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 8e0581194fb82388fe5eff7ab3cbe4c26fe10f7df41a6ee277e1dd731d7ce49d  new Confirmed (block=5275fafa759058d1a837195693e8a5e38f4e41ffd83aff9b186d299d0f2961e5, height=58, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=53441e5cef2716c575c1ef914661cfa3ba1088f70bf9f4a11d05f69ce510478a height=59
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=53441e5cef2716c575c1ef914661cfa3ba1088f70bf9f4a11d05f69ce510478a height=59 version=0x20000000 log2_work=6.906891 tx=60 date='2025-01-21T21:43:16Z' progress=1.000000 cache=0.3MiB(59txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 7462ca12fdc54d18d3a772079d45fe8731201a9af26000915ad7f1c16fe2662a  new Confirmed (block=53441e5cef2716c575c1ef914661cfa3ba1088f70bf9f4a11d05f69ce510478a, height=59, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=6f181f3fc9d161f239c618fe75187f264943934aa331d5162993f3bca57184ca height=60
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=6f181f3fc9d161f239c618fe75187f264943934aa331d5162993f3bca57184ca height=60 version=0x20000000 log2_work=6.930737 tx=61 date='2025-01-21T21:43:16Z' progress=1.000000 cache=0.3MiB(60txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 16dadd5378c61fd74267799bfa83ef32186e246dbaa426134eb9a786f7276ab1  new Confirmed (block=6f181f3fc9d161f239c618fe75187f264943934aa331d5162993f3bca57184ca, height=60, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=380e78867c204c18e94c252157d3479846433aeff97ea7c1b092b22b7b765f11 height=61
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=380e78867c204c18e94c252157d3479846433aeff97ea7c1b092b22b7b765f11 height=61 version=0x20000000 log2_work=6.954196 tx=62 date='2025-01-21T21:43:16Z' progress=1.000000 cache=0.3MiB(61txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 00213da94e41a07a0cf69919b79d3b73e51a33782e915309affd8f4894c7c277  new Confirmed (block=380e78867c204c18e94c252157d3479846433aeff97ea7c1b092b22b7b765f11, height=61, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=40a7af7b7af252c7cefaa5625c9566d4e04ae350ac51fb1f75d945ba2e111cfe height=62
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=40a7af7b7af252c7cefaa5625c9566d4e04ae350ac51fb1f75d945ba2e111cfe height=62 version=0x20000000 log2_work=6.977280 tx=63 date='2025-01-21T21:43:17Z' progress=1.000000 cache=0.3MiB(62txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 4e9a7e4ba6e9eafcf25cffff183aea5dbbd23cfbb4cb1e5d03ee572e23b18453  new Confirmed (block=40a7af7b7af252c7cefaa5625c9566d4e04ae350ac51fb1f75d945ba2e111cfe, height=62, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=68f98f490269a75b08ec58bf384cf54a73b6df54e18fdc95dbba03c84f7a1550 height=63
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=68f98f490269a75b08ec58bf384cf54a73b6df54e18fdc95dbba03c84f7a1550 height=63 version=0x20000000 log2_work=7.000000 tx=64 date='2025-01-21T21:43:17Z' progress=1.000000 cache=0.3MiB(63txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet d2c991669b3b770495951c80db9ecb2608d5c73e8589186d7ac477acba3277b9  new Confirmed (block=68f98f490269a75b08ec58bf384cf54a73b6df54e18fdc95dbba03c84f7a1550, height=63, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=2b6d997d56a9502cadb1cbad9ef195770ec7960e2afa9ff1dd6bdb5fbfc73a66 height=64
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=2b6d997d56a9502cadb1cbad9ef195770ec7960e2afa9ff1dd6bdb5fbfc73a66 height=64 version=0x20000000 log2_work=7.022368 tx=65 date='2025-01-21T21:43:17Z' progress=1.000000 cache=0.3MiB(64txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet ef0ac686faed22cd2e31120b79d5bfa8c033a4c7cb7d896b5dc7bd44f5c8f253  new Confirmed (block=2b6d997d56a9502cadb1cbad9ef195770ec7960e2afa9ff1dd6bdb5fbfc73a66, height=64, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=3355291cb1bd527ad40ddd1a8f50245d64f64defcceeb724f052796a68cb3b01 height=65
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=3355291cb1bd527ad40ddd1a8f50245d64f64defcceeb724f052796a68cb3b01 height=65 version=0x20000000 log2_work=7.044394 tx=66 date='2025-01-21T21:43:17Z' progress=1.000000 cache=0.3MiB(65txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 9caf33c8219e6fac45a77f30d6058ad406296cf9cd274b684e4f8b5917da96fe  new Confirmed (block=3355291cb1bd527ad40ddd1a8f50245d64f64defcceeb724f052796a68cb3b01, height=65, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=46b320cfefeaa03f08b0c2183dea862c8281cd4ab02842bbc08148bb983420e5 height=66
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=46b320cfefeaa03f08b0c2183dea862c8281cd4ab02842bbc08148bb983420e5 height=66 version=0x20000000 log2_work=7.066089 tx=67 date='2025-01-21T21:43:17Z' progress=1.000000 cache=0.3MiB(66txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 3fdf6dfacc590bf182067965e5c98a28fbd854bc887e9933bb32f1bc0d8999ca  new Confirmed (block=46b320cfefeaa03f08b0c2183dea862c8281cd4ab02842bbc08148bb983420e5, height=66, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=31d9d2f3607186a330f482cea7d6f677646fb24f2aaea62d6075527569b47427 height=67
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=31d9d2f3607186a330f482cea7d6f677646fb24f2aaea62d6075527569b47427 height=67 version=0x20000000 log2_work=7.087463 tx=68 date='2025-01-21T21:43:17Z' progress=1.000000 cache=0.3MiB(67txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 264e1db922b4f812bf2b396e19107e5886bb874e5c47106a3a4561e0ecb20c77  new Confirmed (block=31d9d2f3607186a330f482cea7d6f677646fb24f2aaea62d6075527569b47427, height=67, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=0b815cd03bad8ab7c8d15d64c9f650812d16793692435c31c8db1ade777bc04a height=68
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=0b815cd03bad8ab7c8d15d64c9f650812d16793692435c31c8db1ade777bc04a height=68 version=0x20000000 log2_work=7.108524 tx=69 date='2025-01-21T21:43:18Z' progress=1.000000 cache=0.3MiB(68txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 721631b130271d927d92c062584d0f91d6c3da96df9084c4c09ed72162cff274  new Confirmed (block=0b815cd03bad8ab7c8d15d64c9f650812d16793692435c31c8db1ade777bc04a, height=68, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=66e575d285152dad161ccfa370a0770da72079658b245616ce526d9452a1f518 height=69
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=66e575d285152dad161ccfa370a0770da72079658b245616ce526d9452a1f518 height=69 version=0x20000000 log2_work=7.129283 tx=70 date='2025-01-21T21:43:18Z' progress=1.000000 cache=0.3MiB(69txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet a7fce65944eb7538859a998a76d4bf2bdf96da3023c1bb16aac4d3c0199a550e  new Confirmed (block=66e575d285152dad161ccfa370a0770da72079658b245616ce526d9452a1f518, height=69, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=51e2f3e09ca3aeb231197fdf25e04e3a95fa25363966c9626bc0c890594a7ae2 height=70
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=51e2f3e09ca3aeb231197fdf25e04e3a95fa25363966c9626bc0c890594a7ae2 height=70 version=0x20000000 log2_work=7.149747 tx=71 date='2025-01-21T21:43:18Z' progress=1.000000 cache=0.3MiB(70txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 3d9767389c6015b7cbc3bc93a91226904b67cc140b7ae84292fd848da1bc7813  new Confirmed (block=51e2f3e09ca3aeb231197fdf25e04e3a95fa25363966c9626bc0c890594a7ae2, height=70, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=60566b9af3a6a9c1e8606a858a46a70fc71f8fba88051193dde19e584ccdbfb0 height=71
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=60566b9af3a6a9c1e8606a858a46a70fc71f8fba88051193dde19e584ccdbfb0 height=71 version=0x20000000 log2_work=7.169925 tx=72 date='2025-01-21T21:43:18Z' progress=1.000000 cache=0.3MiB(71txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 1cfa878eeff1e0875f9fa87c1b0d0399a47db34648ee7a39be5653778efe06d2  new Confirmed (block=60566b9af3a6a9c1e8606a858a46a70fc71f8fba88051193dde19e584ccdbfb0, height=71, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=0e8f28a7a9a55b5f1b85257bbba3ba6a50145d8c203572c56fea572646444687 height=72
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=0e8f28a7a9a55b5f1b85257bbba3ba6a50145d8c203572c56fea572646444687 height=72 version=0x20000000 log2_work=7.189825 tx=73 date='2025-01-21T21:43:18Z' progress=1.000000 cache=0.3MiB(72txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet f9c334118bd03a83d2d8bb4eebaa3ad41cf08b70e8acf31034dec618631aa3a2  new Confirmed (block=0e8f28a7a9a55b5f1b85257bbba3ba6a50145d8c203572c56fea572646444687, height=72, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=55c342932372e4613791d0544617d38d3485c2587bc613ce5e2ae5b9dec113f9 height=73
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=55c342932372e4613791d0544617d38d3485c2587bc613ce5e2ae5b9dec113f9 height=73 version=0x20000000 log2_work=7.209453 tx=74 date='2025-01-21T21:43:18Z' progress=1.000000 cache=0.3MiB(73txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 8b7e443cd3cdd53575a1103204a96966d6f5535afe3b6c6511e2c059567744ef  new Confirmed (block=55c342932372e4613791d0544617d38d3485c2587bc613ce5e2ae5b9dec113f9, height=73, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=42d95679a46cd09c2a67e1372a190ec06756135b69118b155316ed665952cd1a height=74
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=42d95679a46cd09c2a67e1372a190ec06756135b69118b155316ed665952cd1a height=74 version=0x20000000 log2_work=7.228819 tx=75 date='2025-01-21T21:43:19Z' progress=1.000000 cache=0.3MiB(74txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 023d0dc7f3976854a5e950745bb4f8954ab2590c5b8d69650e108339046ce292  new Confirmed (block=42d95679a46cd09c2a67e1372a190ec06756135b69118b155316ed665952cd1a, height=74, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=44ec040483b8b4fe939df1d2ceb6ca4eaa841474dc96c70f1a29705eb563cd00 height=75
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=44ec040483b8b4fe939df1d2ceb6ca4eaa841474dc96c70f1a29705eb563cd00 height=75 version=0x20000000 log2_work=7.247928 tx=76 date='2025-01-21T21:43:19Z' progress=1.000000 cache=0.3MiB(75txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 1db80470a8d2fbb4b43245190adf3fa6733908e1e74e6ca299e3f3dce86270fc  new Confirmed (block=44ec040483b8b4fe939df1d2ceb6ca4eaa841474dc96c70f1a29705eb563cd00, height=75, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=431b971182cca291d1edc92f98fb5f3968e16d5263ddf0bdb2c2bea9b647d8b3 height=76
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=431b971182cca291d1edc92f98fb5f3968e16d5263ddf0bdb2c2bea9b647d8b3 height=76 version=0x20000000 log2_work=7.266787 tx=77 date='2025-01-21T21:43:19Z' progress=1.000000 cache=0.3MiB(76txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 8c48204f2c5e1bbed5b9ad6f33db44b2008169aa287db23b46110eb063285ae2  new Confirmed (block=431b971182cca291d1edc92f98fb5f3968e16d5263ddf0bdb2c2bea9b647d8b3, height=76, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=7ae8b9f3f00030fbad98eeb01dacacd9b4f8c10a24e0a6cbaba76a50861fa792 height=77
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=7ae8b9f3f00030fbad98eeb01dacacd9b4f8c10a24e0a6cbaba76a50861fa792 height=77 version=0x20000000 log2_work=7.285402 tx=78 date='2025-01-21T21:43:19Z' progress=1.000000 cache=0.3MiB(77txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 6fbbd0be4e53d09390745b5a6359141003607d2823e7c41320172c9cab7df3e3  new Confirmed (block=7ae8b9f3f00030fbad98eeb01dacacd9b4f8c10a24e0a6cbaba76a50861fa792, height=77, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=2d7bf47be2fef0b42620981a6b61c0938c4152e04a2c50910cd02a21d17535e4 height=78
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=2d7bf47be2fef0b42620981a6b61c0938c4152e04a2c50910cd02a21d17535e4 height=78 version=0x20000000 log2_work=7.303781 tx=79 date='2025-01-21T21:43:19Z' progress=1.000000 cache=0.3MiB(78txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 7b1aa0fe45477668db7ee5acf7e5fa711e0d09efef955980f633ad60d2eeb21b  new Confirmed (block=2d7bf47be2fef0b42620981a6b61c0938c4152e04a2c50910cd02a21d17535e4, height=78, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=2f473e815bc9b5157d5127d3608b12d1ce0799b7331daef5ef2a8e9cac3991ca height=79
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=2f473e815bc9b5157d5127d3608b12d1ce0799b7331daef5ef2a8e9cac3991ca height=79 version=0x20000000 log2_work=7.321928 tx=80 date='2025-01-21T21:43:19Z' progress=1.000000 cache=0.3MiB(79txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 66628ee156a55f216b598ed591d19955ccd97c489c28c400e6362d764f5349ac  new Confirmed (block=2f473e815bc9b5157d5127d3608b12d1ce0799b7331daef5ef2a8e9cac3991ca, height=79, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=1fadaa8db580aac6dc1765dab549617331d98a94f941a45b91561b235615224b height=80
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=1fadaa8db580aac6dc1765dab549617331d98a94f941a45b91561b235615224b height=80 version=0x20000000 log2_work=7.339850 tx=81 date='2025-01-21T21:43:20Z' progress=1.000000 cache=0.3MiB(80txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 2df488674388b46dc9030370dbf5a059583e0dd1e6c4067cd7b3ff6bba69116d  new Confirmed (block=1fadaa8db580aac6dc1765dab549617331d98a94f941a45b91561b235615224b, height=80, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=1d9cf563c3826d55b7c8c99bdc78fbc2140307b8b774d3624a2ed5eea63bdc40 height=81
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=1d9cf563c3826d55b7c8c99bdc78fbc2140307b8b774d3624a2ed5eea63bdc40 height=81 version=0x20000000 log2_work=7.357552 tx=82 date='2025-01-21T21:43:20Z' progress=1.000000 cache=0.3MiB(81txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 4f54f797dc6754035065974c2633d884ba33906472bd515e73063d48eed64227  new Confirmed (block=1d9cf563c3826d55b7c8c99bdc78fbc2140307b8b774d3624a2ed5eea63bdc40, height=81, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=778cf275ce1945818ae025e9f62015a160461e951c403bc2a28494755b7d0874 height=82
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=778cf275ce1945818ae025e9f62015a160461e951c403bc2a28494755b7d0874 height=82 version=0x20000000 log2_work=7.375039 tx=83 date='2025-01-21T21:43:20Z' progress=1.000000 cache=0.3MiB(82txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 6fbbab4f0e8de76b919adcfff51cd5a772dde9227a1c67ede9835b7ae168e7fa  new Confirmed (block=778cf275ce1945818ae025e9f62015a160461e951c403bc2a28494755b7d0874, height=82, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=5a2d478e25007f9190ee81e3c8f86152ad2928fa1a1343194cccee5187392803 height=83
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=5a2d478e25007f9190ee81e3c8f86152ad2928fa1a1343194cccee5187392803 height=83 version=0x20000000 log2_work=7.392317 tx=84 date='2025-01-21T21:43:20Z' progress=1.000000 cache=0.3MiB(83txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 6d64ec819dd4079ae4b7149ffbd16e16f1de520818c0ebff54fad278a3450fe2  new Confirmed (block=5a2d478e25007f9190ee81e3c8f86152ad2928fa1a1343194cccee5187392803, height=83, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=719a87e90dc75f3e24c75ae4b2a0b2a0fde4cc15b85855baebeff4ac7272ebfb height=84
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=719a87e90dc75f3e24c75ae4b2a0b2a0fde4cc15b85855baebeff4ac7272ebfb height=84 version=0x20000000 log2_work=7.409391 tx=85 date='2025-01-21T21:43:20Z' progress=1.000000 cache=0.3MiB(84txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 6f2caa729080e3d3047ca51a4a4491c8f9d80c29d23f9104dc665cca93aaebc5  new Confirmed (block=719a87e90dc75f3e24c75ae4b2a0b2a0fde4cc15b85855baebeff4ac7272ebfb, height=84, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=451466304f7d7d83d1d222e601569dd0979bbe5da4d12f4cc83ba005c1695786 height=85
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=451466304f7d7d83d1d222e601569dd0979bbe5da4d12f4cc83ba005c1695786 height=85 version=0x20000000 log2_work=7.426265 tx=86 date='2025-01-21T21:43:20Z' progress=1.000000 cache=0.3MiB(85txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet bbdd5102aaac45105bb4ffb505ca7ca20018c3ad5473d9b6f1c70513da9ef0d1  new Confirmed (block=451466304f7d7d83d1d222e601569dd0979bbe5da4d12f4cc83ba005c1695786, height=85, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=0c0eda25cb8fb78f0c152b8773f464cd62364ba1ccf0b282d90695c41e5282ad height=86
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=0c0eda25cb8fb78f0c152b8773f464cd62364ba1ccf0b282d90695c41e5282ad height=86 version=0x20000000 log2_work=7.442943 tx=87 date='2025-01-21T21:43:21Z' progress=1.000000 cache=0.3MiB(86txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 7ef682d4160a0d6d28ead9d8f0a29ed9952c40c970b902106890bd5317c5d39a  new Confirmed (block=0c0eda25cb8fb78f0c152b8773f464cd62364ba1ccf0b282d90695c41e5282ad, height=86, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=4507d991ff555b45048cc65002815cc2f32b98fbc50f5a1efbf790bc943d3763 height=87
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=4507d991ff555b45048cc65002815cc2f32b98fbc50f5a1efbf790bc943d3763 height=87 version=0x20000000 log2_work=7.459432 tx=88 date='2025-01-21T21:43:21Z' progress=1.000000 cache=0.3MiB(87txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet af92d0c0b56da08e7990bfda67fb20b01df997ff61de54138e3edf8255142305  new Confirmed (block=4507d991ff555b45048cc65002815cc2f32b98fbc50f5a1efbf790bc943d3763, height=87, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=5e7fdff12348098683e729a6647eab4e8f11121bcb027031a932654db09cd391 height=88
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=5e7fdff12348098683e729a6647eab4e8f11121bcb027031a932654db09cd391 height=88 version=0x20000000 log2_work=7.475733 tx=89 date='2025-01-21T21:43:21Z' progress=1.000000 cache=0.3MiB(88txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet ee684dda3e9bad2f818cfe6c691d2422cd1090c430fe5d64a8838cbf9d28b7f7  new Confirmed (block=5e7fdff12348098683e729a6647eab4e8f11121bcb027031a932654db09cd391, height=88, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=3b37aff5888a268a2028c326ff7bf79fd84f418cca98200ffc283d5d2591679b height=89
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=3b37aff5888a268a2028c326ff7bf79fd84f418cca98200ffc283d5d2591679b height=89 version=0x20000000 log2_work=7.491853 tx=90 date='2025-01-21T21:43:21Z' progress=1.000000 cache=0.3MiB(89txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet f60bd7e994fb653acc8050e3402b8222e5305337a0f847a21c7529fb9888726d  new Confirmed (block=3b37aff5888a268a2028c326ff7bf79fd84f418cca98200ffc283d5d2591679b, height=89, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=60c968259ab6af221e29640652b56380008b999b327cd7f6cd7a15111b313cc9 height=90
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=60c968259ab6af221e29640652b56380008b999b327cd7f6cd7a15111b313cc9 height=90 version=0x20000000 log2_work=7.507795 tx=91 date='2025-01-21T21:43:21Z' progress=1.000000 cache=0.3MiB(90txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 0df271d972e9a9c5ccdcf8b08afc57ca90edbb4ad2f75adcd42f06975b0e7267  new Confirmed (block=60c968259ab6af221e29640652b56380008b999b327cd7f6cd7a15111b313cc9, height=90, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=415361e43fbc3e2f9fbc40535f4ba3a27a2220ee0a5f650e31653b2c6de0049b height=91
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=415361e43fbc3e2f9fbc40535f4ba3a27a2220ee0a5f650e31653b2c6de0049b height=91 version=0x20000000 log2_work=7.523562 tx=92 date='2025-01-21T21:43:21Z' progress=1.000000 cache=0.3MiB(91txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet bf2034092aca292063ea15c1a29a7109f7a763f5a815ece80a2ab3cc977b402b  new Confirmed (block=415361e43fbc3e2f9fbc40535f4ba3a27a2220ee0a5f650e31653b2c6de0049b, height=91, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=39e30704a1b79da5ed33259689b06037adf62655882106d4cbabc4ab8060cb46 height=92
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=39e30704a1b79da5ed33259689b06037adf62655882106d4cbabc4ab8060cb46 height=92 version=0x20000000 log2_work=7.539159 tx=93 date='2025-01-21T21:43:22Z' progress=1.000000 cache=0.3MiB(92txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet e2fc878d770db14c3c802750319869409fbd5ad1058b6a422c8a7b4b08525ce2  new Confirmed (block=39e30704a1b79da5ed33259689b06037adf62655882106d4cbabc4ab8060cb46, height=92, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=3952fbb75a273aa83283c2f900905d8e321e2bce501c6982d07995d326a78802 height=93
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=3952fbb75a273aa83283c2f900905d8e321e2bce501c6982d07995d326a78802 height=93 version=0x20000000 log2_work=7.554589 tx=94 date='2025-01-21T21:43:22Z' progress=1.000000 cache=0.3MiB(93txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 7bd3f3f2fdb4025980e8313489b3b33ff056fbe2dba240a5ba88eafc0c8a29f9  new Confirmed (block=3952fbb75a273aa83283c2f900905d8e321e2bce501c6982d07995d326a78802, height=93, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=0e06ca33bb427e56ea01e125188fa0bd57304d4ddf7626e40bc90995c0e4b517 height=94
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=0e06ca33bb427e56ea01e125188fa0bd57304d4ddf7626e40bc90995c0e4b517 height=94 version=0x20000000 log2_work=7.569856 tx=95 date='2025-01-21T21:43:22Z' progress=1.000000 cache=0.3MiB(94txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 98cd10f53bd0e3b7c2565eb1a11d1a60320edda596442b2858a1a2bc7cd7737a  new Confirmed (block=0e06ca33bb427e56ea01e125188fa0bd57304d4ddf7626e40bc90995c0e4b517, height=94, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=645d6f844b05a45378a2c9b1119ce841b51acc799f155aeca54c81e20a0f8def height=95
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=645d6f844b05a45378a2c9b1119ce841b51acc799f155aeca54c81e20a0f8def height=95 version=0x20000000 log2_work=7.584963 tx=96 date='2025-01-21T21:43:22Z' progress=1.000000 cache=0.3MiB(95txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet a26dc1edff47110a769dd41a9c808b628ebbe8c70752b1607bad151ba9206f5f  new Confirmed (block=645d6f844b05a45378a2c9b1119ce841b51acc799f155aeca54c81e20a0f8def, height=95, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=639fb227cbdd2dc31ffd9ad4ed15d248338f9aff05cf0ca861e0985cac78ece3 height=96
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=639fb227cbdd2dc31ffd9ad4ed15d248338f9aff05cf0ca861e0985cac78ece3 height=96 version=0x20000000 log2_work=7.599913 tx=97 date='2025-01-21T21:43:22Z' progress=1.000000 cache=0.3MiB(96txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 56e68d02aac2d05f11eb906551c4639358398ffab2e303b6a439f5569936a92c  new Confirmed (block=639fb227cbdd2dc31ffd9ad4ed15d248338f9aff05cf0ca861e0985cac78ece3, height=96, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=6a7406fb5be43d38dd1c61517d1ed1cc669e95a44375fe5171e54e2baff47699 height=97
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=6a7406fb5be43d38dd1c61517d1ed1cc669e95a44375fe5171e54e2baff47699 height=97 version=0x20000000 log2_work=7.614710 tx=98 date='2025-01-21T21:43:22Z' progress=1.000000 cache=0.3MiB(97txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet e9151e82040bc18aa2f815efbad03b06c7118c61801790ec5018aed2ea6cee27  new Confirmed (block=6a7406fb5be43d38dd1c61517d1ed1cc669e95a44375fe5171e54e2baff47699, height=97, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=25c26a246e7c7af6061d275d9302ada833d36fa153079c142b3f8795fab2f868 height=98
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=25c26a246e7c7af6061d275d9302ada833d36fa153079c142b3f8795fab2f868 height=98 version=0x20000000 log2_work=7.629357 tx=99 date='2025-01-21T21:43:23Z' progress=1.000000 cache=0.3MiB(98txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 8845a1535bb9b8d9012e92acb8fda8f09fad20f475a7623cd09e35e08d9e76d4  new Confirmed (block=25c26a246e7c7af6061d275d9302ada833d36fa153079c142b3f8795fab2f868, height=98, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=0286af1b4b8207e773e89930c2da27d6ecd7079fe2b972a7be4abba6b881d3e6 height=99
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=0286af1b4b8207e773e89930c2da27d6ecd7079fe2b972a7be4abba6b881d3e6 height=99 version=0x20000000 log2_work=7.643856 tx=100 date='2025-01-21T21:43:23Z' progress=1.000000 cache=0.3MiB(99txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet c10d3336de8d179a23fcb619bcb765a2e8df1c529763cf7e185de76139ea61b9  new Confirmed (block=0286af1b4b8207e773e89930c2da27d6ecd7079fe2b972a7be4abba6b881d3e6, height=99, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=7800b839f86bf72b1b2297159727bb9e204efca0f25588cd43764803f8a8501f height=100
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=7800b839f86bf72b1b2297159727bb9e204efca0f25588cd43764803f8a8501f height=100 version=0x20000000 log2_work=7.658211 tx=101 date='2025-01-21T21:43:23Z' progress=1.000000 cache=0.3MiB(100txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet 39496cea6394eaba75d8b7900503a6ca7e7377fd6339f42a76a1741bd087b746  new Confirmed (block=7800b839f86bf72b1b2297159727bb9e204efca0f25588cd43764803f8a8501f, height=100, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z CreateNewBlock(): block weight: 888 txs: 0 fees: 0 sigops 400
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z Saw new header hash=4a18b14117bbadb6bc0035c8c230b0cfbe47135fba494c9014a6199652eb9566 height=101
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z UpdateTip: new best=4a18b14117bbadb6bc0035c8c230b0cfbe47135fba494c9014a6199652eb9566 height=101 version=0x20000000 log2_work=7.672425 tx=102 date='2025-01-21T21:43:23Z' progress=1.000000 cache=0.3MiB(101txo)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet b7a1003278d37d60cb67b01dd3b314d7160ec9427d7fcf7ff356c8cbdb990b75  new Confirmed (block=4a18b14117bbadb6bc0035c8c230b0cfbe47135fba494c9014a6199652eb9566, height=101, index=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] Coin Selection: Algorithm:knapsack, Waste Metric Score:1980
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] Fee Calculation: Fee:2820 Bytes:141 Tgt:0 (requested 6) Reason:"Fallback fee" Decay 0.00000: Estimation: (-1 - -1) 0.00% 0.0/(0.0 0 mem 0.0 out) Fail: (-1 - -1) 0.00% 0.0/(0.0 0 mem 0.0 out)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] Coin Selection: Algorithm:knapsack, Waste Metric Score:1980
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] Fee Calculation: Fee:2820 Bytes:141 Tgt:0 (requested 6) Reason:"Fallback fee" Decay 0.00000: Estimation: (-1 - -1) 0.00% 0.0/(0.0 0 mem 0.0 out) Fail: (-1 - -1) 0.00% 0.0/(0.0 0 mem 0.0 out)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] Fee non-grouped = 2820, grouped = 2820, using grouped
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] CommitTransaction:
bitcoin-regtest-node-1  | CTransaction(hash=fff64f77c4, ver=2, vin.size=1, vout.size=2, nLockTime=101)
bitcoin-regtest-node-1  |     CTxIn(COutPoint(e3070913fa, 0), scriptSig=, nSequence=4294967293)
bitcoin-regtest-node-1  |     CScriptWitness(3044022024d089783e0659439ed08d9d077769b8bcba68f73b82004c79e0754a41ae56de022022daadbf9e98eb814e0c574f9b856b5ba3cf81e9599ee341001fac7be51ebced01, 0373f3bcbb603c650fa809279fc0d430c3a722ccb786ffd89d2681bea2fe737766)
bitcoin-regtest-node-1  |     CTxOut(nValue=49.98967180, scriptPubKey=0014c197b7a8f68913ef9ba96831b5)
bitcoin-regtest-node-1  |     CTxOut(nValue=0.01030000, scriptPubKey=0014d19156af772f3ebefa4096a2fe)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet fff64f77c46c3ca1eb01a26cddc14e589684fc66d0ed996d5c3ae980f324e6bb  newupdate Inactive (abandoned=0)
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] Submitting wtx fff64f77c46c3ca1eb01a26cddc14e589684fc66d0ed996d5c3ae980f324e6bb to mempool for relay
bitcoin-regtest-node-1  | 2025-01-21T21:43:06Z [testwallet] AddToWallet fff64f77c46c3ca1eb01a26cddc14e589684fc66d0ed996d5c3ae980f324e6bb   InMempool
bitcoin-regtest-node-1  | 2025-01-21T22:14:18Z Potential stale tip detected, will try using extra outbound peer (last tip update: 1872 seconds ago)
bitcoin-regtest-node-1  | 2025-01-21T22:24:48Z Potential stale tip detected, will try using extra outbound peer (last tip update: 2502 seconds ago)
bitcoin-regtest-node-1  | 2025-01-21T22:35:18Z Potential stale tip detected, will try using extra outbound peer (last tip update: 3132 seconds ago)
bitcoin-regtest-node-1  | 2025-01-21T22:42:03Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2025-01-21T22:45:48Z Potential stale tip detected, will try using extra outbound peer (last tip update: 3762 seconds ago)
bitcoin-regtest-node-1  | 2025-01-21T22:56:18Z Potential stale tip detected, will try using extra outbound peer (last tip update: 4392 seconds ago)
bitcoin-regtest-node-1  | 2025-01-21T23:06:48Z Potential stale tip detected, will try using extra outbound peer (last tip update: 5022 seconds ago)
bitcoin-regtest-node-1  | 2025-01-21T23:17:19Z Potential stale tip detected, will try using extra outbound peer (last tip update: 5653 seconds ago)
bitcoin-regtest-node-1  | 2025-01-21T23:27:49Z Potential stale tip detected, will try using extra outbound peer (last tip update: 6283 seconds ago)
bitcoin-regtest-node-1  | 2025-01-21T23:38:19Z Potential stale tip detected, will try using extra outbound peer (last tip update: 6913 seconds ago)
bitcoin-regtest-node-1  | 2025-01-21T23:42:03Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2025-01-21T23:48:49Z Potential stale tip detected, will try using extra outbound peer (last tip update: 7543 seconds ago)
bitcoin-regtest-node-1  | 2025-01-21T23:59:19Z Potential stale tip detected, will try using extra outbound peer (last tip update: 8173 seconds ago)
bitcoin-regtest-node-1  | 2025-01-22T00:02:31Z CreateNewBlock(): block weight: 1934 txs: 2 fees: 32820 sigops 402
bitcoin-regtest-node-1  | 2025-01-22T00:02:31Z Saw new header hash=7c5fe9328bbf0162dfc34027d25c4b33dd2b7d69223c65e6068fdd7fb599c8cc height=102
bitcoin-regtest-node-1  | 2025-01-22T00:02:31Z UpdateTip: new best=7c5fe9328bbf0162dfc34027d25c4b33dd2b7d69223c65e6068fdd7fb599c8cc height=102 version=0x20000000 log2_work=7.686501 tx=105 date='2025-01-22T00:02:31Z' progress=1.000000 cache=0.3MiB(104txo)
bitcoin-regtest-node-1  | 2025-01-22T00:02:31Z [testwallet] AddToWallet 44c73e03da979adacc8165d232047eb6cdd1517b7f59b8308a973b381531e421  new Confirmed (block=7c5fe9328bbf0162dfc34027d25c4b33dd2b7d69223c65e6068fdd7fb599c8cc, height=102, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:02:31Z [testwallet] AddToWallet fff64f77c46c3ca1eb01a26cddc14e589684fc66d0ed996d5c3ae980f324e6bb  update Confirmed (block=7c5fe9328bbf0162dfc34027d25c4b33dd2b7d69223c65e6068fdd7fb599c8cc, height=102, index=1)
bitcoin-regtest-node-1  | 2025-01-22T00:05:11Z CreateNewBlock(): block weight: 9968 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T00:05:11Z Saw new header hash=005e7e034ae7a6608a30f7a3c452e867c6edc91e885d790037deedbdc8c7ae64 height=103
bitcoin-regtest-node-1  | 2025-01-22T00:05:11Z UpdateTip: new best=005e7e034ae7a6608a30f7a3c452e867c6edc91e885d790037deedbdc8c7ae64 height=103 version=0x20000000 log2_work=7.700440 tx=107 date='2025-01-22T00:05:11Z' progress=1.000000 cache=0.3MiB(105txo)
bitcoin-regtest-node-1  | 2025-01-22T00:05:11Z [testwallet] AddToWallet 223395487da80a953a5fe3cf3ad1703f65c7a79fc06b6ba2fca12363e5b08f75  new Confirmed (block=005e7e034ae7a6608a30f7a3c452e867c6edc91e885d790037deedbdc8c7ae64, height=103, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:05:20Z CreateNewBlock(): block weight: 3503 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T00:05:20Z Saw new header hash=65d8b6d095a5567aef8586b9b7af488ba8c2f2980f7ea39b3ef17502086ad9ec height=104
bitcoin-regtest-node-1  | 2025-01-22T00:05:20Z UpdateTip: new best=65d8b6d095a5567aef8586b9b7af488ba8c2f2980f7ea39b3ef17502086ad9ec height=104 version=0x20000000 log2_work=7.714246 tx=109 date='2025-01-22T00:05:20Z' progress=1.000000 cache=0.3MiB(106txo)
bitcoin-regtest-node-1  | 2025-01-22T00:05:20Z [testwallet] AddToWallet b56c5a51e1b11eee3f1697d5a9b10c89efc665f134bf11366b7f42c01189478f  new Confirmed (block=65d8b6d095a5567aef8586b9b7af488ba8c2f2980f7ea39b3ef17502086ad9ec, height=104, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:05:26Z CreateNewBlock(): block weight: 47167 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T00:05:26Z Saw new header hash=313f5c3402927f0a0aa4d68724825770e88275ca9242553f3eb8735aea4d9262 height=105
bitcoin-regtest-node-1  | 2025-01-22T00:05:26Z UpdateTip: new best=313f5c3402927f0a0aa4d68724825770e88275ca9242553f3eb8735aea4d9262 height=105 version=0x20000000 log2_work=7.727920 tx=111 date='2025-01-22T00:05:26Z' progress=1.000000 cache=0.3MiB(107txo)
bitcoin-regtest-node-1  | 2025-01-22T00:05:26Z [testwallet] AddToWallet 6bf05ace3f7dcc7d3905f6fbec0bae2ebde29f16a0a9c8059bec2f6626c7035f  new Confirmed (block=313f5c3402927f0a0aa4d68724825770e88275ca9242553f3eb8735aea4d9262, height=105, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:05:30Z CreateNewBlock(): block weight: 1684 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T00:05:30Z Saw new header hash=0aa8745e0631bb3e69931efc612c55a9d0fd82833f6116535077a7c747f33aa0 height=106
bitcoin-regtest-node-1  | 2025-01-22T00:05:30Z UpdateTip: new best=0aa8745e0631bb3e69931efc612c55a9d0fd82833f6116535077a7c747f33aa0 height=106 version=0x20000000 log2_work=7.741467 tx=113 date='2025-01-22T00:05:30Z' progress=1.000000 cache=0.3MiB(108txo)
bitcoin-regtest-node-1  | 2025-01-22T00:05:30Z [testwallet] AddToWallet 07fcc859b3566435767a0d2c40a7695f003456e3e5410c6cb5e114c4f0d88ca7  new Confirmed (block=0aa8745e0631bb3e69931efc612c55a9d0fd82833f6116535077a7c747f33aa0, height=106, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:05:35Z CreateNewBlock(): block weight: 47461 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T00:05:35Z Saw new header hash=704be028ecdfe76a44fc0fc006b094cfa47237a6b3b2511bbb0ce1840ada8646 height=107
bitcoin-regtest-node-1  | 2025-01-22T00:05:35Z UpdateTip: new best=704be028ecdfe76a44fc0fc006b094cfa47237a6b3b2511bbb0ce1840ada8646 height=107 version=0x20000000 log2_work=7.754888 tx=115 date='2025-01-22T00:05:35Z' progress=1.000000 cache=0.3MiB(109txo)
bitcoin-regtest-node-1  | 2025-01-22T00:05:35Z [testwallet] AddToWallet 192b9381227246feaebdbcdc79c46e593782cbdbeddae0308b2b3aa29656fe77  new Confirmed (block=704be028ecdfe76a44fc0fc006b094cfa47237a6b3b2511bbb0ce1840ada8646, height=107, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:05:39Z CreateNewBlock(): block weight: 1684 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T00:05:39Z Saw new header hash=578952947d052bfe76554d7e24a9e9e9a3c6571fa38ec70e9f60892ce1d84620 height=108
bitcoin-regtest-node-1  | 2025-01-22T00:05:39Z UpdateTip: new best=578952947d052bfe76554d7e24a9e9e9a3c6571fa38ec70e9f60892ce1d84620 height=108 version=0x20000000 log2_work=7.768184 tx=117 date='2025-01-22T00:05:39Z' progress=1.000000 cache=0.3MiB(110txo)
bitcoin-regtest-node-1  | 2025-01-22T00:05:39Z [testwallet] AddToWallet 09fc65f61fc2de0f29edf11fca8ccc43f3dc94716923cdcc0d3f831cfea2054e  new Confirmed (block=578952947d052bfe76554d7e24a9e9e9a3c6571fa38ec70e9f60892ce1d84620, height=108, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:05:45Z CreateNewBlock(): block weight: 47459 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T00:05:45Z Saw new header hash=03a02848837c01ce5b27cb619662cbdf700512ab6a22e2c9595dc311cfeca77b height=109
bitcoin-regtest-node-1  | 2025-01-22T00:05:45Z UpdateTip: new best=03a02848837c01ce5b27cb619662cbdf700512ab6a22e2c9595dc311cfeca77b height=109 version=0x20000000 log2_work=7.781360 tx=119 date='2025-01-22T00:05:45Z' progress=1.000000 cache=0.3MiB(111txo)
bitcoin-regtest-node-1  | 2025-01-22T00:05:45Z [testwallet] AddToWallet fb0aa532ac3fea353573c2879817d5f47aafb8ab766c855ed1bd0b4a2c3c2324  new Confirmed (block=03a02848837c01ce5b27cb619662cbdf700512ab6a22e2c9595dc311cfeca77b, height=109, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:05:48Z CreateNewBlock(): block weight: 1684 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T00:05:48Z Saw new header hash=291bfbaae2d743244485ad22a39ee9cd1ff57b1bf468d2ee38beb82edb3f9e56 height=110
bitcoin-regtest-node-1  | 2025-01-22T00:05:48Z UpdateTip: new best=291bfbaae2d743244485ad22a39ee9cd1ff57b1bf468d2ee38beb82edb3f9e56 height=110 version=0x20000000 log2_work=7.794416 tx=121 date='2025-01-22T00:05:48Z' progress=1.000000 cache=0.3MiB(112txo)
bitcoin-regtest-node-1  | 2025-01-22T00:05:48Z [testwallet] AddToWallet 595878ac54a5c66cdfa53923c713ed60719482e4861732eee835b7ce2acdf771  new Confirmed (block=291bfbaae2d743244485ad22a39ee9cd1ff57b1bf468d2ee38beb82edb3f9e56, height=110, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:05:54Z CreateNewBlock(): block weight: 47470 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T00:05:54Z Saw new header hash=5562c85944db5b00ef1d910dec3555a599fdedb25596fa33482cce7c43063a6f height=111
bitcoin-regtest-node-1  | 2025-01-22T00:05:54Z UpdateTip: new best=5562c85944db5b00ef1d910dec3555a599fdedb25596fa33482cce7c43063a6f height=111 version=0x20000000 log2_work=7.807355 tx=123 date='2025-01-22T00:05:54Z' progress=1.000000 cache=0.3MiB(113txo)
bitcoin-regtest-node-1  | 2025-01-22T00:05:54Z [testwallet] AddToWallet c3e0996416eba09dbd806cc3b7f486a9b3a265a67b0e1ecf2d7cd6582dabde48  new Confirmed (block=5562c85944db5b00ef1d910dec3555a599fdedb25596fa33482cce7c43063a6f, height=111, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:05:58Z CreateNewBlock(): block weight: 1684 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T00:05:58Z Saw new header hash=09d9d10cbb2f1e29e93043f3400c6fa87f65dcad4f09f16f145fab88648d355c height=112
bitcoin-regtest-node-1  | 2025-01-22T00:05:58Z UpdateTip: new best=09d9d10cbb2f1e29e93043f3400c6fa87f65dcad4f09f16f145fab88648d355c height=112 version=0x20000000 log2_work=7.820179 tx=125 date='2025-01-22T00:05:58Z' progress=1.000000 cache=0.3MiB(114txo)
bitcoin-regtest-node-1  | 2025-01-22T00:05:58Z [testwallet] AddToWallet ce3733572e2b2a2817a292dfee1b1b318c7737fd6732688bfed46dcba57b0b2c  new Confirmed (block=09d9d10cbb2f1e29e93043f3400c6fa87f65dcad4f09f16f145fab88648d355c, height=112, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:06:03Z CreateNewBlock(): block weight: 47467 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T00:06:03Z Saw new header hash=70d6a119c0cf4e9bf1c1aca3bfa5be1bd1df4423a6577ea9e5d1c15d03faa6c0 height=113
bitcoin-regtest-node-1  | 2025-01-22T00:06:03Z UpdateTip: new best=70d6a119c0cf4e9bf1c1aca3bfa5be1bd1df4423a6577ea9e5d1c15d03faa6c0 height=113 version=0x20000000 log2_work=7.832890 tx=127 date='2025-01-22T00:06:03Z' progress=1.000000 cache=0.3MiB(115txo)
bitcoin-regtest-node-1  | 2025-01-22T00:06:03Z [testwallet] AddToWallet a9bd984c85b49425f39aea622c5f3815e76aa806e590c47e9c403f7c30187cb4  new Confirmed (block=70d6a119c0cf4e9bf1c1aca3bfa5be1bd1df4423a6577ea9e5d1c15d03faa6c0, height=113, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:06:07Z CreateNewBlock(): block weight: 1685 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T00:06:07Z Saw new header hash=6f974218a78dc90eb9da7aa444bdde60e1dc9fe08c7401f62c40a5c5e2bd7c4d height=114
bitcoin-regtest-node-1  | 2025-01-22T00:06:07Z UpdateTip: new best=6f974218a78dc90eb9da7aa444bdde60e1dc9fe08c7401f62c40a5c5e2bd7c4d height=114 version=0x20000000 log2_work=7.845490 tx=129 date='2025-01-22T00:06:07Z' progress=1.000000 cache=0.3MiB(116txo)
bitcoin-regtest-node-1  | 2025-01-22T00:06:07Z [testwallet] AddToWallet d00aed152392276c5f8d30232aee68ef80b7dd634a7bd760afca9e27314fb6e5  new Confirmed (block=6f974218a78dc90eb9da7aa444bdde60e1dc9fe08c7401f62c40a5c5e2bd7c4d, height=114, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:06:13Z CreateNewBlock(): block weight: 47453 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T00:06:13Z Saw new header hash=6d5847a5f9720e83a5a8a65d540edf65b59be33cac34694d10b60b40cb8e73a4 height=115
bitcoin-regtest-node-1  | 2025-01-22T00:06:13Z UpdateTip: new best=6d5847a5f9720e83a5a8a65d540edf65b59be33cac34694d10b60b40cb8e73a4 height=115 version=0x20000000 log2_work=7.857981 tx=131 date='2025-01-22T00:06:13Z' progress=1.000000 cache=0.3MiB(117txo)
bitcoin-regtest-node-1  | 2025-01-22T00:06:13Z [testwallet] AddToWallet 14268ed164ec112592b1e6e78adcd397c2fffef0e37faff99f16cb5f2bb69226  new Confirmed (block=6d5847a5f9720e83a5a8a65d540edf65b59be33cac34694d10b60b40cb8e73a4, height=115, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:06:16Z CreateNewBlock(): block weight: 1685 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T00:06:16Z Saw new header hash=24feec53b6dedbdfd43f71be438fc32c6e101f23a44556d8f5fa7e889a803934 height=116
bitcoin-regtest-node-1  | 2025-01-22T00:06:16Z UpdateTip: new best=24feec53b6dedbdfd43f71be438fc32c6e101f23a44556d8f5fa7e889a803934 height=116 version=0x20000000 log2_work=7.870365 tx=133 date='2025-01-22T00:06:16Z' progress=1.000000 cache=0.3MiB(118txo)
bitcoin-regtest-node-1  | 2025-01-22T00:06:16Z [testwallet] AddToWallet 4843d257adeeabf06254626159386c3f55cff61fd4854f633b9ba64ebb53d075  new Confirmed (block=24feec53b6dedbdfd43f71be438fc32c6e101f23a44556d8f5fa7e889a803934, height=116, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:06:19Z CreateNewBlock(): block weight: 13350 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T00:06:19Z Saw new header hash=1bcc0d5c33398d0a7901f64ad780e5f5da4a04edbafe4773d494a3d883fb8540 height=117
bitcoin-regtest-node-1  | 2025-01-22T00:06:19Z UpdateTip: new best=1bcc0d5c33398d0a7901f64ad780e5f5da4a04edbafe4773d494a3d883fb8540 height=117 version=0x20000000 log2_work=7.882643 tx=135 date='2025-01-22T00:06:19Z' progress=1.000000 cache=0.3MiB(119txo)
bitcoin-regtest-node-1  | 2025-01-22T00:06:19Z [testwallet] AddToWallet 4ae4b8e2dc5456979a80de2f9d5a35fd91dbf8dbd39e485a2f42cd2599ee8958  new Confirmed (block=1bcc0d5c33398d0a7901f64ad780e5f5da4a04edbafe4773d494a3d883fb8540, height=117, index=0)
bitcoin-regtest-node-1  | 2025-01-22T00:41:19Z Potential stale tip detected, will try using extra outbound peer (last tip update: 2100 seconds ago)
bitcoin-regtest-node-1  | 2025-01-22T00:42:03Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2025-01-22T00:51:50Z Potential stale tip detected, will try using extra outbound peer (last tip update: 2731 seconds ago)
bitcoin-regtest-node-1  | 2025-01-22T01:02:20Z Potential stale tip detected, will try using extra outbound peer (last tip update: 3361 seconds ago)
bitcoin-regtest-node-1  | 2025-01-22T01:12:50Z Potential stale tip detected, will try using extra outbound peer (last tip update: 3991 seconds ago)
bitcoin-regtest-node-1  | 2025-01-22T01:23:20Z Potential stale tip detected, will try using extra outbound peer (last tip update: 4621 seconds ago)
bitcoin-regtest-node-1  | 2025-01-22T01:33:50Z Potential stale tip detected, will try using extra outbound peer (last tip update: 5251 seconds ago)
bitcoin-regtest-node-1  | 2025-01-22T01:39:14Z CreateNewBlock(): block weight: 25129 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2025-01-22T01:39:14Z Saw new header hash=444ae36d03fe40f797a59d71aea6a15f0dbd9f21b003b31aa00459a1392c758b height=118
bitcoin-regtest-node-1  | 2025-01-22T01:39:14Z UpdateTip: new best=444ae36d03fe40f797a59d71aea6a15f0dbd9f21b003b31aa00459a1392c758b height=118 version=0x20000000 log2_work=7.894818 tx=137 date='2025-01-22T01:39:14Z' progress=1.000000 cache=0.3MiB(120txo)
bitcoin-regtest-node-1  | 2025-01-22T01:39:14Z [testwallet] AddToWallet 69730a904848d67daf22ec2ed89087f9654b4637e2a65396e59c8cea1fd3db9b  new Confirmed (block=444ae36d03fe40f797a59d71aea6a15f0dbd9f21b003b31aa00459a1392c758b, height=118, index=0)
bitcoin-regtest-node-1  | 2025-01-22T01:42:03Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2025-01-22T02:15:50Z Potential stale tip detected, will try using extra outbound peer (last tip update: 2196 seconds ago)
bitcoin-regtest-node-1  | 2025-01-22T02:26:20Z Potential stale tip detected, will try using extra outbound peer (last tip update: 2826 seconds ago)
bitcoin-regtest-node-1  | 2025-01-22T02:36:51Z Potential stale tip detected, will try using extra outbound peer (last tip update: 3457 seconds ago)
bitcoin-regtest-node-1  | 2025-01-22T02:42:03Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2025-01-22T02:47:21Z Potential stale tip detected, will try using extra outbound peer (last tip update: 4087 seconds ago)
```
