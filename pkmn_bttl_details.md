## Setup
```json
{
  "max_amount_of_steps": 51989,
  "amount_of_bits_wrong_step_search": 3,
  "secret_origin_of_funds": "7920e3e47f7c977dab446d6d55ee679241b13c28edf363d519866ede017ef1b4",
  "amount_of_input_words": 1
}

{
  "setup_uuid": "f63e16e8-07c4-4398-bb4f-6e5c954958ef"
}
```

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

## On-chain transactions

- Prover

```
Funding tx: 3adfdde71008e05fabcc63840e3b090b06b1f44d78fa05046ae0cb2cbed5276f
Funding transaction: 6ed49d4152b695de706ccc19890fb082323d5d92633fda6f03e08043867fa42b
Hash result revelation transaction: 49da88de1311b745397a8e03cec35b5417d347570a6ba9772cc3ba36f12f2df8
Search hash iteration transaction 0: d54658cbe13ec7c4aca93fe93e6d03047cc8aaf92390e678ebaa7a9c9759952e
Search hash iteration transaction 1: 25517268aaa1216edc6c660b8b4ba7e3948e31af173f503b1596ddc05b5758be
Search hash iteration transaction 2: b87da1a5fc7db6e533cd158a50438caf4daf4129fa6eea90ad8c763d3d412d8a
Search hash iteration transaction 3: 6c9a59b9dd59d315fccdf0a0832af9c0c38711b490c6f4983361351e8b5f7572
Search hash iteration transaction 4: d9d2ed6671b518eadd9e7fb67e1e5c638629cfbe66b90277ef54b3190e3e87d5
Search hash iteration transaction 5: d0ab7e0b7d920189e5cdd704cc587ad4f9e086265e6de7e73209d9012ad52448
Trace transaction: 47e5ace9f77f47cefefb12458702d9c01b8f87ec6347afed6faa57677775e929
```
- Verifier
```
Trigger protocol transaction: 198d14eebf3092f2dd55daf8061158970a85c9e7678aba03bd85621ae4d9497f
Search choice iteration transaction 0: 5eba1055cd8f1b829c25bc1460c6de4bc6500626a7f8fdc999c6b32db0751bec
Search choice iteration transaction 1: 1c1dc4ad40164d9dbf283c73d421947980e566868851cc9bc1d0afebe0e57bba
Search choice iteration transaction 2: b8c1e32d63dfa8b38f63794301befa99d5b0ec22d09a05491c7488f952499d0a
Search choice iteration transaction 3: 954d4d3aa6a5499f820fad9f2b989f4cc0932e1dcaa5787561242364d31d07db
Search choice iteration transaction 4: cefc68e69f8de3eabadfc0c8a13477a2ac2bcf1f3fb801969c984894d8d091fb
Search choice iteration transaction 5: 37fc2e1c758e8851e0720fc9b994f7235ef3e6690487ba5d827429628bef61fb
Trigger execution challenge transaction: 0320b5ff85d3659bccd615c0d1246bc041194e7c910bf8a9d33b237df7f71e22
```

## Logs

### Prover logs
```bash
[+] Running 1/0
 ✔ Container bitvmx_protocol-prover-backend-1  Created        0.0s
Attaching to prover-backend-1
prover-backend-1  | INFO:     Started server process [1]
prover-backend-1  | INFO:     Waiting for application startup.
prover-backend-1  | INFO:     Application startup complete.
prover-backend-1  | INFO:     Uvicorn running on http://0.0.0.0:80 (Press CTRL+C to quit)
prover-backend-1  | INFO:     172.18.0.1:64486 - "GET /docs HTTP/1.1" 200 OK
prover-backend-1  | INFO:     172.18.0.1:64486 - "GET /openapi.json HTTP/1.1" 200 OK
prover-backend-1  | Public keys generated: 0.09943580627441406
prover-backend-1  | Funding tx: 3adfdde71008e05fabcc63840e3b090b06b1f44d78fa05046ae0cb2cbed5276f
prover-backend-1  | Verifier public keys generated: 5197.625848293304
prover-backend-1  | Bitcoin scripts generated: 5204.106069326401
prover-backend-1  | [45]
prover-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }} }, 10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }} }]
prover-backend-1  | [45]
prover-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }} }, 10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }} }]
prover-backend-1  | Call parallel hashed merkle root
prover-backend-1  | End of parallel hashed merkle root in 4.017148260275523 minutes.
prover-backend-1  | [45]
prover-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }} }} }]
prover-backend-1  | Transactions built: 9365.604847669601
prover-backend-1  | Signatures generated: 9382.88067150116
prover-backend-1  | Verifier signatures sent: 9415.165404558182
prover-backend-1  | Funding transaction: 6ed49d4152b695de706ccc19890fb082323d5d92633fda6f03e08043867fa42b
prover-backend-1  | INFO:     127.0.0.1:35262 - "POST /api/v1/setup HTTP/1.1" 200 OK
prover-backend-1  | INFO:     172.18.0.1:59794 - "POST /api/v1/input HTTP/1.1" 200 OK
prover-backend-1  | pkmn_guess.elf
prover-backend-1  | ./execution_files/pkmn_rom_commitment.txt
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--elf', '../../BitVMX-CPU/docker-riscv32/riscv32/build/pkmn_guess.elf', '--debug', '--checkpoints', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Executing command for list 51988 with step 0 and limit 51988 with base 0 index 51987
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51988', '--trace', '--limit', '51988', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | fea82cd9050c2e8d0486814f3340ce3859d699210f47c1feafd7cd6505fb1c4e
prover-backend-1  | Hash result revelation transaction: 49da88de1311b745397a8e03cec35b5417d347570a6ba9772cc3ba36f12f2df8
prover-backend-1  | INFO:     172.18.0.1:62096 - "POST /api/v1/next_step HTTP/1.1" 200 OK
prover-backend-1  | Executing command for list 32768 with step 0 and limit 32768 with base 0 index 32767
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '32768', '--trace', '--limit', '32768', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 51988 with step 0 and limit 51988 with base 0 index 51987
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51988', '--trace', '--limit', '51988', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 51988 with step 0 and limit 51988 with base 0 index 51987
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51988', '--trace', '--limit', '51988', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 51988 with step 0 and limit 51988 with base 0 index 51987
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51988', '--trace', '--limit', '51988', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 51988 with step 0 and limit 51988 with base 0 index 51987
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51988', '--trace', '--limit', '51988', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 51988 with step 0 and limit 51988 with base 0 index 51987
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51988', '--trace', '--limit', '51988', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Executing command for list 51988 with step 0 and limit 51988 with base 0 index 51987
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51988', '--trace', '--limit', '51988', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Search hash iteration transaction 0: d54658cbe13ec7c4aca93fe93e6d03047cc8aaf92390e678ebaa7a9c9759952e
prover-backend-1  | INFO:     172.18.0.1:56940 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
prover-backend-1  | Search hash iteration transaction 1: 25517268aaa1216edc6c660b8b4ba7e3948e31af173f503b1596ddc05b5758be
prover-backend-1  | INFO:     172.18.0.1:55156 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
prover-backend-1  | Search hash iteration transaction 2: b87da1a5fc7db6e533cd158a50438caf4daf4129fa6eea90ad8c763d3d412d8a
prover-backend-1  | INFO:     172.18.0.1:63984 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
prover-backend-1  | Search hash iteration transaction 3: 6c9a59b9dd59d315fccdf0a0832af9c0c38711b490c6f4983361351e8b5f7572
prover-backend-1  | INFO:     172.18.0.1:57884 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
prover-backend-1  | Search hash iteration transaction 4: d9d2ed6671b518eadd9e7fb67e1e5c638629cfbe66b90277ef54b3190e3e87d5
prover-backend-1  | INFO:     172.18.0.1:64208 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
prover-backend-1  | Search hash iteration transaction 5: d0ab7e0b7d920189e5cdd704cc587ad4f9e086265e6de7e73209d9012ad52448
prover-backend-1  | INFO:     172.18.0.1:56026 - "POST /api/v1/next_step HTTP/1.1" 200 OK
prover-backend-1  | First wrong step: 9
prover-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Trace transaction: 47e5ace9f77f47cefefb12458702d9c01b8f87ec6347afed6faa57677775e929
prover-backend-1  | INFO:     172.18.0.1:65216 - "POST /api/v1/next_step HTTP/1.1" 200 OK
prover-backend-1  | Call parallel hashed merkle root
prover-backend-1  | End of parallel hashed merkle root in 4.019639798005422 minutes.
prover-backend-1  | Instruction index: 8000009000
prover-backend-1  | Start control block computation
prover-backend-1  | End of control block computation in 237.79773688316345 seconds.
prover-backend-1  | INFO:     172.18.0.1:58090 - "POST /api/v1/next_step HTTP/1.1" 500 Internal Server Error
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

### Verifier's logs

```bash
❯ docker compose up verifier-backend                    [14:54:16]
[+] Running 1/0
 ✔ Container bitvmx_protocol-verifier-backend-1  Created      0.0s
Attaching to verifier-backend-1
verifier-backend-1  | INFO:     Started server process [1]
verifier-backend-1  | INFO:     Waiting for application startup.
verifier-backend-1  | INFO:     Application startup complete.
verifier-backend-1  | INFO:     Uvicorn running on http://0.0.0.0:80 (Press CTRL+C to quit)
verifier-backend-1  | Init setup for id f63e16e8-07c4-4398-bb4f-6e5c954958ef
verifier-backend-1  | INFO:     172.18.0.1:64264 - "POST /api/v1/setup HTTP/1.1" 200 OK
verifier-backend-1  | Call generate public keys: 0.0014543533325195312
verifier-backend-1  | Call generate scripts: 0.006910085678100586
verifier-backend-1  | Call compute trigger trace challenge address: 6.897751092910767
verifier-backend-1  | prob
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }} }} }]
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }} }} }]
verifier-backend-1  | this
verifier-backend-1  | Call transactions time: 4780.107640028
verifier-backend-1  | Call parallel hashed merkle root
verifier-backend-1  | End of parallel hashed merkle root in 3.9241795500119525 minutes.
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }} }} }]
verifier-backend-1  | Call create protocol setup properties time: 5184.681234836578
verifier-backend-1  | Public keys controller total time: 5196.9925100803375
verifier-backend-1  | INFO:     172.18.0.1:64266 - "POST /api/v1/public_keys HTTP/1.1" 200 OK
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }} }} }]
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }} }} }]
verifier-backend-1  | Signatures controller total time: 31.18650722503662
verifier-backend-1  | INFO:     172.18.0.1:64974 - "POST /api/v1/signatures HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | pkmn_guess.elf
verifier-backend-1  | ./execution_files/pkmn_rom_commitment.txt
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--elf', '../../BitVMX-CPU/docker-riscv32/riscv32/build/pkmn_guess.elf', '--debug', '--checkpoints', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Executing command for list 51988 with step 0 and limit 51988 with base 0 index 51987
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51988', '--trace', '--limit', '51988', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Trigger protocol transaction: 198d14eebf3092f2dd55daf8061158970a85c9e7678aba03bd85621ae4d9497f
verifier-backend-1  | INFO:     172.18.0.1:64528 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 32768 with step 0 and limit 32768 with base 0 index 32767
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '32768', '--trace', '--limit', '32768', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 0: 5eba1055cd8f1b829c25bc1460c6de4bc6500626a7f8fdc999c6b32db0751bec
verifier-backend-1  | INFO:     172.18.0.1:62878 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 4096 with step 0 and limit 4096 with base 0 index 4095
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '4096', '--trace', '--limit', '4096', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 1: 1c1dc4ad40164d9dbf283c73d421947980e566868851cc9bc1d0afebe0e57bba
verifier-backend-1  | INFO:     172.18.0.1:64174 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 512 with step 0 and limit 512 with base 0 index 511
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '512', '--trace', '--limit', '512', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 2: b8c1e32d63dfa8b38f63794301befa99d5b0ec22d09a05491c7488f952499d0a
verifier-backend-1  | INFO:     172.18.0.1:63468 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 64 with step 0 and limit 64 with base 0 index 63
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '64', '--trace', '--limit', '64', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 3: 954d4d3aa6a5499f820fad9f2b989f4cc0932e1dcaa5787561242364d31d07db
verifier-backend-1  | INFO:     172.18.0.1:64444 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 8 with step 0 and limit 8 with base 0 index 7
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '8', '--trace', '--limit', '8', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Executing command for list 16 with step 0 and limit 16 with base 0 index 15
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '16', '--trace', '--limit', '16', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 4: cefc68e69f8de3eabadfc0c8a13477a2ac2bcf1f3fb801969c984894d8d091fb
verifier-backend-1  | INFO:     172.18.0.1:65266 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 9 with step 0 and limit 9 with base 0 index 8
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '9', '--trace', '--limit', '9', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 5: 37fc2e1c758e8851e0720fc9b994f7235ef3e6690487ba5d827429628bef61fb
verifier-backend-1  | INFO:     172.18.0.1:64648 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Checking correct hash challenge. Previous hash (correct): 7202fa663a04c6a051f052e6bd998bf04d6e55e08636b8b3114a6830ace70388, write trace: f0000008e07ffbe18000009400, next hash(incorrect): ae9a13792503a58393565d93a13f51a5077652682187173d582c53496941967d
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
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }} }} }]
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }} }, 10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }} }]
verifier-backend-1  | Trigger execution challenge transaction: 0320b5ff85d3659bccd615c0d1246bc041194e7c910bf8a9d33b237df7f71e22
verifier-backend-1  | INFO:     172.18.0.1:64478 - "POST /api/v1/next_step HTTP/1.1" 200 OK
```


## bitcoin-regtest-node logs
```bash
❯ docker compose up bitcoin-regtest-node                                                                                    [14:57:15]
[+] Running 1/0
 ✔ Container bitvmx_protocol-bitcoin-regtest-node-1  Created                                                                      0.0s
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
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Ignoring unknown configuration value regtest.rpcclienttimeout
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Bitcoin Core version v28.0.0 (release build)
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z parameter interaction: -listen=0 -> setting -upnp=0
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z parameter interaction: -listen=0 -> setting -natpmp=0
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z parameter interaction: -listen=0 -> setting -discover=0
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z parameter interaction: -listen=0 -> setting -listenonion=0
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z parameter interaction: -listen=0 -> setting -i2pacceptincoming=0
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Script verification uses 7 additional threads
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Using the 'sse4(1way),sse41(4way)' SHA256 implementation
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Default data directory /bitcoin/.bitcoin
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Using data directory /bitcoin/.bitcoin/regtest
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Config file: /bitcoin/.bitcoin/bitcoin.conf
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Config file arg: disablewallet="0"
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Config file arg: listen="0"
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Config file arg: regtest="1"
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Config file arg: server="1"
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Config file arg: txindex="1"
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Config file arg: [regtest] dbcache="512"
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Config file arg: [regtest] fallbackfee="0.0002"
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Config file arg: [regtest] printtoconsole="1"
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Config file arg: [regtest] rpcallowip="0.0.0.0/0"
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Config file arg: [regtest] rpcbind=":8443"
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Config file arg: [regtest] rpcpassword=****
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Config file arg: [regtest] rpcport="8443"
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Config file arg: [regtest] rpcuser=****
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Command-line arg: rpcallowip="0.0.0.0/0"
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Command-line arg: rpcbind=":8332"
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Using at most 125 automatic connections (1048576 file descriptors available)
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z scheduler thread start
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Binding RPC on address  port 8332
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z WARNING: the RPC server is not safe to expose to untrusted networks such as the public internet
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Binding RPC on address  port 8443
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z WARNING: the RPC server is not safe to expose to untrusted networks such as the public internet
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Config options rpcuser and rpcpassword will soon be deprecated. Locally-run instances may remove rpcuser to use cookie-based auth, or may be replaced with rpcauth. Please see share/rpcauth for rpcauth auth generation.
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Starting HTTP server with 4 worker threads
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Using wallet directory /bitcoin/.bitcoin/regtest/wallets
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z init message: Verifying wallet(s)…
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Using /16 prefix for IP bucketing
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z init message: Loading P2P addresses…
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Loaded 0 addresses from peers.dat  1ms
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z init message: Loading banlist…
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z SetNetworkActive: true
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Script verification uses 7 additional threads
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Cache configuration:
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z * Using 2.0 MiB for block index database
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z * Using 63.8 MiB for transaction index database
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z * Using 8.0 MiB for chain state database
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z * Using 438.2 MiB for in-memory UTXO set (plus up to 286.1 MiB of unused mempool space)
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Using obfuscation key for blocksdir *.dat files (/bitcoin/.bitcoin/regtest/blocks): '6ca7fce9d002eadf'
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Using 16 MiB out of 16 MiB requested for signature cache, able to store 524288 elements
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Using 16 MiB out of 16 MiB requested for script execution cache, able to store 524288 elements
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z init message: Loading block index…
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Validating signatures for all blocks.
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Setting nMinimumChainWork=0000000000000000000000000000000000000000000000000000000000000000
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Opening LevelDB in /bitcoin/.bitcoin/regtest/blocks/index
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Opened LevelDB successfully
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Using obfuscation key for /bitcoin/.bitcoin/regtest/blocks/index: 0000000000000000
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z LoadBlockIndexDB: last block file = 0
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z LoadBlockIndexDB: last block file info: CBlockFileInfo(blocks=119, size=321664, heights=0...118, time=2011-02-02...2024-12-18)
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Checking all blk files are present...
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Initializing chainstate Chainstate [ibd] @ height -1 (null)
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Opening LevelDB in /bitcoin/.bitcoin/regtest/chainstate
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Opened LevelDB successfully
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Using obfuscation key for /bitcoin/.bitcoin/regtest/chainstate: 21b02792ec946d0c
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Loaded best chain: hashBestChain=7c01c39713f2fb2652812e718dc2947b315edb13ddc198a78872bc055af0ca3f height=118 date=2024-12-18T01:09:24Z progress=1.000000
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Opening LevelDB in /bitcoin/.bitcoin/regtest/chainstate
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Opened LevelDB successfully
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Using obfuscation key for /bitcoin/.bitcoin/regtest/chainstate: 21b02792ec946d0c
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z [Chainstate [ibd] @ height 118 (7c01c39713f2fb2652812e718dc2947b315edb13ddc198a78872bc055af0ca3f)] resized coinsdb cache to 8.0 MiB
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z [Chainstate [ibd] @ height 118 (7c01c39713f2fb2652812e718dc2947b315edb13ddc198a78872bc055af0ca3f)] resized coinstip cache to 438.2 MiB
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z init message: Verifying blocks…
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Verifying last 6 blocks at level 3
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Verification progress: 0%
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Verification progress: 16%
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Verification progress: 33%
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Verification progress: 50%
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Verification progress: 66%
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Verification progress: 83%
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Verification progress: 99%
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Verification: No coin database inconsistencies in last 6 blocks (14 transactions)
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z  block index              53ms
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Opening LevelDB in /bitcoin/.bitcoin/regtest/indexes/txindex
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Opened LevelDB successfully
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Using obfuscation key for /bitcoin/.bitcoin/regtest/indexes/txindex: 0000000000000000
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Setting NODE_NETWORK on non-prune mode
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z initload thread start
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z block tree size = 119
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z nBestHeight = 118
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z txindex thread start
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z txindex is enabled at height 118
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z txindex thread exit
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Loading 0 mempool transactions from file...
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Loaded 0 addresses from "anchors.dat"
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Imported mempool transactions from file: 0 succeeded, 0 failed, 0 expired, 0 already there, 0 waiting for initial broadcast
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z initload thread exit
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z 0 block-relay-only anchors will be tried for connections.
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z init message: Starting network threads…
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z net thread start
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z dnsseed thread start
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z addcon thread start
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z opencon thread start
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z msghand thread start
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z Loading addresses from DNS seed dummySeed.invalid.
bitcoin-regtest-node-1  | 2024-12-18T17:57:19Z init message: Done loading
bitcoin-regtest-node-1  | 2024-12-18T17:57:20Z 0 addresses found from DNS seeds
bitcoin-regtest-node-1  | 2024-12-18T17:57:20Z dnsseed thread exit
bitcoin-regtest-node-1  | 2024-12-18T17:57:22Z Using SQLite Version 3.38.5
bitcoin-regtest-node-1  | 2024-12-18T17:57:22Z Using wallet /bitcoin/.bitcoin/regtest/wallets/testwallet
bitcoin-regtest-node-1  | 2024-12-18T17:57:22Z init message: Loading wallet…
bitcoin-regtest-node-1  | 2024-12-18T17:57:22Z [testwallet] Wallet file version = 10500, last client version = 280000
bitcoin-regtest-node-1  | 2024-12-18T17:57:23Z [testwallet] Descriptors: 8, Descriptor Keys: 1 plaintext, 0 encrypted, 1 total.
bitcoin-regtest-node-1  | 2024-12-18T17:57:23Z [testwallet] Setting spkMan to active: id = 6a3d0ffade22e866e1aa586a62a1a96caef9fc6139c883148b1721d494d52f33, type = legacy, internal = false
bitcoin-regtest-node-1  | 2024-12-18T17:57:23Z [testwallet] Setting spkMan to active: id = 96bfc3a91b5e8b41411ede03a3d6e92672bebcebbeb2655e1edb7270a3385bdd, type = p2sh-segwit, internal = false
bitcoin-regtest-node-1  | 2024-12-18T17:57:23Z [testwallet] Setting spkMan to active: id = 4ff6eafcca14dfcac5a04ed0f555506ffb0f8bfa0192392b21b3a1e40d726da9, type = bech32, internal = false
bitcoin-regtest-node-1  | 2024-12-18T17:57:23Z [testwallet] Setting spkMan to active: id = 5d41d7bf99c7dd65b7c224bc8e8af0db205ad8c6ac67bd4f055975de9bcc4aee, type = bech32m, internal = false
bitcoin-regtest-node-1  | 2024-12-18T17:57:23Z [testwallet] Setting spkMan to active: id = a74cbdb68f72c2d0c16c5a3126b16905c796cd7e7e72f61c414d15ebbce7df2c, type = legacy, internal = true
bitcoin-regtest-node-1  | 2024-12-18T17:57:23Z [testwallet] Setting spkMan to active: id = a2423c2236f75eaf8df8c709900d1cbb75a68849be4ee986d24e5bbf6b790817, type = p2sh-segwit, internal = true
bitcoin-regtest-node-1  | 2024-12-18T17:57:23Z [testwallet] Setting spkMan to active: id = e7858d6855faaf286edc9639bb2c3c65f254e7803de3452a4762e7341003efac, type = bech32, internal = true
bitcoin-regtest-node-1  | 2024-12-18T17:57:23Z [testwallet] Setting spkMan to active: id = 611940158f027063d475e5b3f5972dc6e38474c4d0bf67b9fd133fb79f6a61be, type = bech32m, internal = true
bitcoin-regtest-node-1  | 2024-12-18T17:57:23Z [testwallet] Wallet completed loading in             449ms
bitcoin-regtest-node-1  | 2024-12-18T17:57:23Z [testwallet] setKeyPool.size() = 8000
bitcoin-regtest-node-1  | 2024-12-18T17:57:23Z [testwallet] mapWallet.size() = 122
bitcoin-regtest-node-1  | 2024-12-18T17:57:23Z [testwallet] m_address_book.size() = 4
bitcoin-regtest-node-1  | 2024-12-18T17:58:19Z Leaving InitialBlockDownload (latching to false)
bitcoin-regtest-node-1  | 2024-12-18T17:58:20Z Adding fixed seeds as 60 seconds have passed and addrman is empty for at least one reachable network
bitcoin-regtest-node-1  | 2024-12-18T17:58:20Z Added 0 fixed seeds from reachable networks.
bitcoin-regtest-node-1  | 2024-12-18T17:59:04Z [testwallet] Coin Selection: Algorithm:knapsack, Waste Metric Score:1980
bitcoin-regtest-node-1  | 2024-12-18T17:59:04Z [testwallet] Fee Calculation: Fee:2820 Bytes:141 Tgt:6 (requested 6) Reason:"Fallback fee" Decay 0.96200: Estimation: (-1 - -1) 0.00% 0.0/(0.0 0 mem 0.0 out) Fail: (0 - 1e+99) 100.00% 11.2/(11.2 0 mem 0.0 out)
bitcoin-regtest-node-1  | 2024-12-18T17:59:04Z [testwallet] Coin Selection: Algorithm:knapsack, Waste Metric Score:1980
bitcoin-regtest-node-1  | 2024-12-18T17:59:04Z [testwallet] Fee Calculation: Fee:2820 Bytes:141 Tgt:6 (requested 6) Reason:"Fallback fee" Decay 0.96200: Estimation: (-1 - -1) 0.00% 0.0/(0.0 0 mem 0.0 out) Fail: (0 - 1e+99) 100.00% 11.2/(11.2 0 mem 0.0 out)
bitcoin-regtest-node-1  | 2024-12-18T17:59:04Z [testwallet] Fee non-grouped = 2820, grouped = 2820, using grouped
bitcoin-regtest-node-1  | 2024-12-18T17:59:04Z [testwallet] CommitTransaction:
bitcoin-regtest-node-1  | CTransaction(hash=3adfdde710, ver=2, vin.size=1, vout.size=2, nLockTime=0)
bitcoin-regtest-node-1  |     CTxIn(COutPoint(432c67bc53, 1), scriptSig=, nSequence=4294967293)
bitcoin-regtest-node-1  |     CScriptWitness(304402204cfaf821707d82e9a6593aae26fac2b12060ec3b0516321983c4fa37d2bbab27022047bf812bed356541bef111046e6bde42a5efadbc022378ae299bc1691a22d32901, 038a7ac983f0b75003e83ca295780d2401df2d2edc87a9a5f59a70cfa6f2d9f074)
bitcoin-regtest-node-1  |     CTxOut(nValue=0.01030000, scriptPubKey=0014d19156af772f3ebefa4096a2fe)
bitcoin-regtest-node-1  |     CTxOut(nValue=49.95868720, scriptPubKey=0014adb8a45c2abe88d4afe9c22853)
bitcoin-regtest-node-1  | 2024-12-18T17:59:04Z [testwallet] AddToWallet 3adfdde71008e05fabcc63840e3b090b06b1f44d78fa05046ae0cb2cbed5276f  newupdate Inactive (abandoned=0)
bitcoin-regtest-node-1  | 2024-12-18T17:59:04Z [testwallet] Submitting wtx 3adfdde71008e05fabcc63840e3b090b06b1f44d78fa05046ae0cb2cbed5276f to mempool for relay
bitcoin-regtest-node-1  | 2024-12-18T17:59:04Z [testwallet] AddToWallet 3adfdde71008e05fabcc63840e3b090b06b1f44d78fa05046ae0cb2cbed5276f   InMempool
bitcoin-regtest-node-1  | 2024-12-18T18:29:35Z Potential stale tip detected, will try using extra outbound peer (last tip update: 1891 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T18:53:36Z Potential stale tip detected, will try using extra outbound peer (last tip update: 3332 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T19:03:55Z Potential stale tip detected, will try using extra outbound peer (last tip update: 3951 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T19:14:24Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2024-12-18T19:14:25Z Potential stale tip detected, will try using extra outbound peer (last tip update: 4581 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T19:24:55Z Potential stale tip detected, will try using extra outbound peer (last tip update: 5211 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T19:35:25Z Potential stale tip detected, will try using extra outbound peer (last tip update: 5841 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T19:45:55Z Potential stale tip detected, will try using extra outbound peer (last tip update: 6471 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T19:56:25Z Potential stale tip detected, will try using extra outbound peer (last tip update: 7101 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T20:06:55Z Potential stale tip detected, will try using extra outbound peer (last tip update: 7731 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T20:14:24Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2024-12-18T20:17:25Z Potential stale tip detected, will try using extra outbound peer (last tip update: 8361 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T20:27:55Z Potential stale tip detected, will try using extra outbound peer (last tip update: 8991 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T20:36:19Z CreateNewBlock(): block weight: 1934 txs: 2 fees: 32820 sigops 402
bitcoin-regtest-node-1  | 2024-12-18T20:36:19Z Saw new header hash=635f88624da5a04048646e97446ae6511a29b5e9b55af87c0ac6e6871cb01213 height=119
bitcoin-regtest-node-1  | 2024-12-18T20:36:19Z UpdateTip: new best=635f88624da5a04048646e97446ae6511a29b5e9b55af87c0ac6e6871cb01213 height=119 version=0x20000000 log2_work=7.906891 tx=143 date='2024-12-18T20:36:19Z' progress=1.000000 cache=0.3MiB(4txo)
bitcoin-regtest-node-1  | 2024-12-18T20:36:19Z [testwallet] AddToWallet 6e858bcfd436de2db936e1c3f9288cffccd3bc3035dab39fa16d26f60c628b5f  new Confirmed (block=635f88624da5a04048646e97446ae6511a29b5e9b55af87c0ac6e6871cb01213, height=119, index=0)
bitcoin-regtest-node-1  | 2024-12-18T20:36:19Z [testwallet] AddToWallet 3adfdde71008e05fabcc63840e3b090b06b1f44d78fa05046ae0cb2cbed5276f  update Confirmed (block=635f88624da5a04048646e97446ae6511a29b5e9b55af87c0ac6e6871cb01213, height=119, index=1)
bitcoin-regtest-node-1  | 2024-12-18T22:17:18Z Potential stale tip detected, will try using extra outbound peer (last tip update: 6059 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T22:35:37Z Potential stale tip detected, will try using extra outbound peer (last tip update: 7158 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T22:40:51Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2024-12-18T22:46:07Z Potential stale tip detected, will try using extra outbound peer (last tip update: 7788 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T22:56:37Z Potential stale tip detected, will try using extra outbound peer (last tip update: 8418 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T23:07:07Z Potential stale tip detected, will try using extra outbound peer (last tip update: 9048 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T23:17:37Z Potential stale tip detected, will try using extra outbound peer (last tip update: 9678 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T23:28:07Z Potential stale tip detected, will try using extra outbound peer (last tip update: 10308 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T23:38:37Z Potential stale tip detected, will try using extra outbound peer (last tip update: 10938 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T23:40:51Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2024-12-18T23:49:07Z Potential stale tip detected, will try using extra outbound peer (last tip update: 11568 seconds ago)
bitcoin-regtest-node-1  | 2024-12-18T23:59:38Z Potential stale tip detected, will try using extra outbound peer (last tip update: 12199 seconds ago)
bitcoin-regtest-node-1  | 2024-12-19T00:10:08Z Potential stale tip detected, will try using extra outbound peer (last tip update: 12829 seconds ago)
bitcoin-regtest-node-1  | 2024-12-19T00:20:38Z Potential stale tip detected, will try using extra outbound peer (last tip update: 13459 seconds ago)
bitcoin-regtest-node-1  | 2024-12-19T00:26:42Z CreateNewBlock(): block weight: 9964 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T00:26:42Z Saw new header hash=6b463735b0639cfe38503dbc649c873d907683597d93e7f7957c5edaaf11b1ba height=120
bitcoin-regtest-node-1  | 2024-12-19T00:26:42Z UpdateTip: new best=6b463735b0639cfe38503dbc649c873d907683597d93e7f7957c5edaaf11b1ba height=120 version=0x20000000 log2_work=7.918863 tx=145 date='2024-12-19T00:26:42Z' progress=1.000000 cache=0.3MiB(5txo)
bitcoin-regtest-node-1  | 2024-12-19T00:26:42Z [testwallet] AddToWallet a549a32bca71a47b95237c8908ca8e451ae2b76fb412054f66b4b8c6a8663e17  new Confirmed (block=6b463735b0639cfe38503dbc649c873d907683597d93e7f7957c5edaaf11b1ba, height=120, index=0)
bitcoin-regtest-node-1  | 2024-12-19T00:26:48Z CreateNewBlock(): block weight: 3503 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T00:26:48Z Saw new header hash=3c881c4c99a200b227e4e890bdbd013883be7ac922aa013fd49ded54399775b5 height=121
bitcoin-regtest-node-1  | 2024-12-19T00:26:48Z UpdateTip: new best=3c881c4c99a200b227e4e890bdbd013883be7ac922aa013fd49ded54399775b5 height=121 version=0x20000000 log2_work=7.930737 tx=147 date='2024-12-19T00:26:48Z' progress=1.000000 cache=0.3MiB(6txo)
bitcoin-regtest-node-1  | 2024-12-19T00:26:48Z [testwallet] AddToWallet 223d6ea9ed23134ac320640e34f960418dd5143a03008a97f21e4e295c632238  new Confirmed (block=3c881c4c99a200b227e4e890bdbd013883be7ac922aa013fd49ded54399775b5, height=121, index=0)
bitcoin-regtest-node-1  | 2024-12-19T00:26:55Z CreateNewBlock(): block weight: 47144 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T00:26:55Z Saw new header hash=7be80ba88f0b5fd79e577ce947e0f708bb0c69a2c43b458c4623a4ce1bab12db height=122
bitcoin-regtest-node-1  | 2024-12-19T00:26:55Z UpdateTip: new best=7be80ba88f0b5fd79e577ce947e0f708bb0c69a2c43b458c4623a4ce1bab12db height=122 version=0x20000000 log2_work=7.942515 tx=149 date='2024-12-19T00:26:55Z' progress=1.000000 cache=0.3MiB(7txo)
bitcoin-regtest-node-1  | 2024-12-19T00:26:55Z [testwallet] AddToWallet f2e32d842e2c5843f6383072ddbc1aa8de2022871403ec2a550c770b5704f785  new Confirmed (block=7be80ba88f0b5fd79e577ce947e0f708bb0c69a2c43b458c4623a4ce1bab12db, height=122, index=0)
bitcoin-regtest-node-1  | 2024-12-19T00:27:00Z CreateNewBlock(): block weight: 1684 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T00:27:00Z Saw new header hash=31fe78ae8b813dfb3657563e72da5108d219803859786bd5b04c7d357101e5c8 height=123
bitcoin-regtest-node-1  | 2024-12-19T00:27:00Z UpdateTip: new best=31fe78ae8b813dfb3657563e72da5108d219803859786bd5b04c7d357101e5c8 height=123 version=0x20000000 log2_work=7.954196 tx=151 date='2024-12-19T00:27:00Z' progress=1.000000 cache=0.3MiB(8txo)
bitcoin-regtest-node-1  | 2024-12-19T00:27:00Z [testwallet] AddToWallet 1cf783154a655c99f2df3c1be642d40e68df625190f177b17c52bfdcd49ab9e8  new Confirmed (block=31fe78ae8b813dfb3657563e72da5108d219803859786bd5b04c7d357101e5c8, height=123, index=0)
bitcoin-regtest-node-1  | 2024-12-19T00:27:06Z CreateNewBlock(): block weight: 47452 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T00:27:06Z Saw new header hash=3472f9280ada0318049cb9d43c08c7bf348dc99dd4fbf3d646bf8d1707c6e25b height=124
bitcoin-regtest-node-1  | 2024-12-19T00:27:06Z UpdateTip: new best=3472f9280ada0318049cb9d43c08c7bf348dc99dd4fbf3d646bf8d1707c6e25b height=124 version=0x20000000 log2_work=7.965784 tx=153 date='2024-12-19T00:27:06Z' progress=1.000000 cache=0.3MiB(9txo)
bitcoin-regtest-node-1  | 2024-12-19T00:27:06Z [testwallet] AddToWallet 91fa9d7190127e674cbc32d94a0a1ff72918e3705da9e7c0af7e93b3c4607e2d  new Confirmed (block=3472f9280ada0318049cb9d43c08c7bf348dc99dd4fbf3d646bf8d1707c6e25b, height=124, index=0)
bitcoin-regtest-node-1  | 2024-12-19T00:27:12Z CreateNewBlock(): block weight: 1684 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T00:27:12Z Saw new header hash=105f89075bcce1ef4f2e9ed48c02a043fda66780895349ee80185a2cdf456389 height=125
bitcoin-regtest-node-1  | 2024-12-19T00:27:12Z UpdateTip: new best=105f89075bcce1ef4f2e9ed48c02a043fda66780895349ee80185a2cdf456389 height=125 version=0x20000000 log2_work=7.977280 tx=155 date='2024-12-19T00:27:12Z' progress=1.000000 cache=0.3MiB(10txo)
bitcoin-regtest-node-1  | 2024-12-19T00:27:12Z [testwallet] AddToWallet 651d39780660007d4559dd045492f06e516323e4c124a69e1f4cc3a9884ffebf  new Confirmed (block=105f89075bcce1ef4f2e9ed48c02a043fda66780895349ee80185a2cdf456389, height=125, index=0)
bitcoin-regtest-node-1  | 2024-12-19T00:27:18Z CreateNewBlock(): block weight: 47464 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T00:27:18Z Saw new header hash=1b2d3bd13ee152c70ce674d9b3c27105148e86c5014f089ba063b2995ff0849d height=126
bitcoin-regtest-node-1  | 2024-12-19T00:27:18Z UpdateTip: new best=1b2d3bd13ee152c70ce674d9b3c27105148e86c5014f089ba063b2995ff0849d height=126 version=0x20000000 log2_work=7.988685 tx=157 date='2024-12-19T00:27:18Z' progress=1.000000 cache=0.3MiB(11txo)
bitcoin-regtest-node-1  | 2024-12-19T00:27:18Z [testwallet] AddToWallet d726d8252f592af0ce4cf3c9582cbdc397ef3a37c1fb210d9c851090d17e30aa  new Confirmed (block=1b2d3bd13ee152c70ce674d9b3c27105148e86c5014f089ba063b2995ff0849d, height=126, index=0)
bitcoin-regtest-node-1  | 2024-12-19T00:27:23Z CreateNewBlock(): block weight: 1684 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T00:27:23Z Saw new header hash=0ddaae75663f02652594d04d24e91b9d2126b40e967b3766aa4230575757858a height=127
bitcoin-regtest-node-1  | 2024-12-19T00:27:23Z UpdateTip: new best=0ddaae75663f02652594d04d24e91b9d2126b40e967b3766aa4230575757858a height=127 version=0x20000000 log2_work=8.000000 tx=159 date='2024-12-19T00:27:23Z' progress=1.000000 cache=0.3MiB(12txo)
bitcoin-regtest-node-1  | 2024-12-19T00:27:23Z [testwallet] AddToWallet 9b491b6b2cad94551a0cbf170ca37df82f3777abd9e35881277bd81de4b9cf06  new Confirmed (block=0ddaae75663f02652594d04d24e91b9d2126b40e967b3766aa4230575757858a, height=127, index=0)
bitcoin-regtest-node-1  | 2024-12-19T00:27:29Z CreateNewBlock(): block weight: 47463 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T00:27:29Z Saw new header hash=60db87e24f8eba367b4dbe7b97f6b03155536344959e103248f84d7cbf2921fb height=128
bitcoin-regtest-node-1  | 2024-12-19T00:27:29Z UpdateTip: new best=60db87e24f8eba367b4dbe7b97f6b03155536344959e103248f84d7cbf2921fb height=128 version=0x20000000 log2_work=8.011227 tx=161 date='2024-12-19T00:27:29Z' progress=1.000000 cache=0.3MiB(13txo)
bitcoin-regtest-node-1  | 2024-12-19T00:27:29Z [testwallet] AddToWallet c4cda67609ed5d8e649eee28d06ebaabff67f9c11a92aae5ab3dbdb67e6043c2  new Confirmed (block=60db87e24f8eba367b4dbe7b97f6b03155536344959e103248f84d7cbf2921fb, height=128, index=0)
bitcoin-regtest-node-1  | 2024-12-19T00:27:34Z CreateNewBlock(): block weight: 1688 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T00:27:34Z Saw new header hash=08bdc9a3b08b9b2d3e453bafdca0667904a6b8528b8c7609e4086eef493968b6 height=129
bitcoin-regtest-node-1  | 2024-12-19T00:27:34Z UpdateTip: new best=08bdc9a3b08b9b2d3e453bafdca0667904a6b8528b8c7609e4086eef493968b6 height=129 version=0x20000000 log2_work=8.022368 tx=163 date='2024-12-19T00:27:34Z' progress=1.000000 cache=0.3MiB(14txo)
bitcoin-regtest-node-1  | 2024-12-19T00:27:34Z [testwallet] AddToWallet fc86b548bb4b2cd0672da774083c77fe41ed871f1f32b8805ff267c6a4a42af0  new Confirmed (block=08bdc9a3b08b9b2d3e453bafdca0667904a6b8528b8c7609e4086eef493968b6, height=129, index=0)
bitcoin-regtest-node-1  | 2024-12-19T00:27:40Z CreateNewBlock(): block weight: 47462 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T00:27:40Z Saw new header hash=39b0b32e7c06e4ebe9a807719dd76fdae6ad6eaca383106ec566ef1d6d3fcd2e height=130
bitcoin-regtest-node-1  | 2024-12-19T00:27:40Z UpdateTip: new best=39b0b32e7c06e4ebe9a807719dd76fdae6ad6eaca383106ec566ef1d6d3fcd2e height=130 version=0x20000000 log2_work=8.033423 tx=165 date='2024-12-19T00:27:40Z' progress=1.000000 cache=0.3MiB(15txo)
bitcoin-regtest-node-1  | 2024-12-19T00:27:40Z [testwallet] AddToWallet dab78f5ee609b56b176e12ccae5ab2c08d59d5cc42b812b3f045b8b1cb65fcae  new Confirmed (block=39b0b32e7c06e4ebe9a807719dd76fdae6ad6eaca383106ec566ef1d6d3fcd2e, height=130, index=0)
bitcoin-regtest-node-1  | 2024-12-19T00:27:45Z CreateNewBlock(): block weight: 1689 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T00:27:45Z Saw new header hash=2899b93ab4ff34ed3ba552b44b1e3e4acc34b67dfcc19c399ec233b0562abad4 height=131
bitcoin-regtest-node-1  | 2024-12-19T00:27:45Z UpdateTip: new best=2899b93ab4ff34ed3ba552b44b1e3e4acc34b67dfcc19c399ec233b0562abad4 height=131 version=0x20000000 log2_work=8.044394 tx=167 date='2024-12-19T00:27:45Z' progress=1.000000 cache=0.3MiB(16txo)
bitcoin-regtest-node-1  | 2024-12-19T00:27:45Z [testwallet] AddToWallet 37ab11bdfdc63dd698001b6f47540091bc387c7e0c6153766ff2bc81206263a9  new Confirmed (block=2899b93ab4ff34ed3ba552b44b1e3e4acc34b67dfcc19c399ec233b0562abad4, height=131, index=0)
bitcoin-regtest-node-1  | 2024-12-19T00:27:52Z CreateNewBlock(): block weight: 47463 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T00:27:52Z Saw new header hash=0ce235b8742430a5f887b17e0b588074f876b1712fec371d2cac328378bc1ed9 height=132
bitcoin-regtest-node-1  | 2024-12-19T00:27:52Z UpdateTip: new best=0ce235b8742430a5f887b17e0b588074f876b1712fec371d2cac328378bc1ed9 height=132 version=0x20000000 log2_work=8.055282 tx=169 date='2024-12-19T00:27:52Z' progress=1.000000 cache=0.3MiB(17txo)
bitcoin-regtest-node-1  | 2024-12-19T00:27:52Z [testwallet] AddToWallet 4ec7f42262d8fff9c1a72c21becabe4777219486347cc4c949549b55e3bed5ea  new Confirmed (block=0ce235b8742430a5f887b17e0b588074f876b1712fec371d2cac328378bc1ed9, height=132, index=0)
bitcoin-regtest-node-1  | 2024-12-19T00:27:57Z CreateNewBlock(): block weight: 1689 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T00:27:57Z Saw new header hash=5bdfba630a5dba246e5054b6f2c1996bbcdd4cf990f7ecc9eedca1cd5cd40dd5 height=133
bitcoin-regtest-node-1  | 2024-12-19T00:27:57Z UpdateTip: new best=5bdfba630a5dba246e5054b6f2c1996bbcdd4cf990f7ecc9eedca1cd5cd40dd5 height=133 version=0x20000000 log2_work=8.066089 tx=171 date='2024-12-19T00:27:57Z' progress=1.000000 cache=0.3MiB(18txo)
bitcoin-regtest-node-1  | 2024-12-19T00:27:57Z [testwallet] AddToWallet d9054705c4124336e1c13cd26c0912a6b0171e85ce453b81c42a3e41ba700477  new Confirmed (block=5bdfba630a5dba246e5054b6f2c1996bbcdd4cf990f7ecc9eedca1cd5cd40dd5, height=133, index=0)
bitcoin-regtest-node-1  | 2024-12-19T00:28:02Z CreateNewBlock(): block weight: 13350 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T00:28:02Z Saw new header hash=31997a4bd3010e31121557650eb5611dd478c6901ba33a4ac5c9aae84508468e height=134
bitcoin-regtest-node-1  | 2024-12-19T00:28:02Z UpdateTip: new best=31997a4bd3010e31121557650eb5611dd478c6901ba33a4ac5c9aae84508468e height=134 version=0x20000000 log2_work=8.076816 tx=173 date='2024-12-19T00:28:02Z' progress=1.000000 cache=0.3MiB(19txo)
bitcoin-regtest-node-1  | 2024-12-19T00:28:02Z [testwallet] AddToWallet 0b4760bfd536011743db9364e626bc83fd259875e95b8ea946dfacb6e7ce1266  new Confirmed (block=31997a4bd3010e31121557650eb5611dd478c6901ba33a4ac5c9aae84508468e, height=134, index=0)
bitcoin-regtest-node-1  | 2024-12-19T00:40:51Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2024-12-19T01:02:38Z Potential stale tip detected, will try using extra outbound peer (last tip update: 2076 seconds ago)
bitcoin-regtest-node-1  | 2024-12-19T01:13:08Z Potential stale tip detected, will try using extra outbound peer (last tip update: 2706 seconds ago)
bitcoin-regtest-node-1  | 2024-12-19T01:23:38Z Potential stale tip detected, will try using extra outbound peer (last tip update: 3336 seconds ago)
bitcoin-regtest-node-1  | 2024-12-19T01:34:08Z Potential stale tip detected, will try using extra outbound peer (last tip update: 3966 seconds ago)
bitcoin-regtest-node-1  | 2024-12-19T01:40:51Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2024-12-19T01:44:38Z Potential stale tip detected, will try using extra outbound peer (last tip update: 4596 seconds ago)
bitcoin-regtest-node-1  | 2024-12-19T01:55:08Z Potential stale tip detected, will try using extra outbound peer (last tip update: 5226 seconds ago)
bitcoin-regtest-node-1  | 2024-12-19T02:02:11Z CreateNewBlock(): block weight: 25125 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-19T02:02:11Z Saw new header hash=5276d8520808885030f4736fcf937529a3fe667d2dc59f05aceb9bf405e7abd5 height=135
bitcoin-regtest-node-1  | 2024-12-19T02:02:11Z UpdateTip: new best=5276d8520808885030f4736fcf937529a3fe667d2dc59f05aceb9bf405e7abd5 height=135 version=0x20000000 log2_work=8.087463 tx=175 date='2024-12-19T02:02:11Z' progress=1.000000 cache=0.3MiB(20txo)
bitcoin-regtest-node-1  | 2024-12-19T02:02:11Z [testwallet] AddToWallet 180a42c190d71349f2c59657774fbc18976029e7d9ca42f402b3e14e4c6e18c6  new Confirmed (block=5276d8520808885030f4736fcf937529a3fe667d2dc59f05aceb9bf405e7abd5, height=135, index=0)
```
