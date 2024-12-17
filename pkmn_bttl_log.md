## setup
one battle round
```bash
{
  "max_amount_of_steps": 25945,
  "amount_of_bits_wrong_step_search": 3,
  "secret_origin_of_funds": "7920e3e47f7c977dab446d6d55ee679241b13c28edf363d519866ede017ef1b4",
  "amount_of_input_words": 1
}
{
  "setup_uuid": "c2a44f04-9915-4f0f-943b-e324336fdb7b"
}
```
class BitVMXWrapper:

    def __init__(self, base_path: str):
        self.base_path = base_path
        self.execution_checkpoint_interval = 50000000
        # self.fail_actor = "verifier"
        self.fail_actor = "prover"
        # self.fail_step = "1234567890"
        # self.fail_step = "1"
        self.fail_step = "10"
        # self.fail_step = None
        self.fail_type = "--fail-execute"
        # self.fail_type = "--fail-hash"
        # self.fail_type = "--fail-pc"
        self.fail_input = False
        self.fail_actor_input = "prover"

## prover 
```bash
❯ docker compose up prover-backend                                                 [17:25:20]

[+] Running 1/0
 ✔ Container bitvmx_protocol-prover-backend-1  Created                                   0.0s
Attaching to prover-backend-1
prover-backend-1  | INFO:     Started server process [1]
prover-backend-1  | INFO:     Waiting for application startup.
prover-backend-1  | INFO:     Application startup complete.
prover-backend-1  | INFO:     Uvicorn running on http://0.0.0.0:80 (Press CTRL+C to quit)
prover-backend-1  | INFO:     172.18.0.1:64700 - "GET /docs HTTP/1.1" 200 OK
prover-backend-1  | INFO:     172.18.0.1:64700 - "GET /openapi.json HTTP/1.1" 200 OK
prover-backend-1  | INFO:     172.18.0.1:64700 - "GET /docs HTTP/1.1" 200 OK
prover-backend-1  | INFO:     172.18.0.1:64700 - "GET /openapi.json HTTP/1.1" 200 OK
prover-backend-1  | fede - setup fund from prover
prover-backend-1  | Public keys generated: 0.09336614608764648
prover-backend-1  | Funding tx: ddd7b5da83eabdfa36a9c916c45f4d59f54c0b4257fbee10cd89618e5d36f215
prover-backend-1  | Verifier public keys generated: 3432.3871693611145
prover-backend-1  | Bitcoin scripts generated: 3438.762447118759
prover-backend-1  | fede3
prover-backend-1  | fede4
prover-backend-1  | fede5
prover-backend-1  | prob
prover-backend-1  | [45]
prover-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }} }} }]
prover-backend-1  | [45]
prover-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }} }, 10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }} }]
prover-backend-1  | this
prover-backend-1  | a
prover-backend-1  | fede6
prover-backend-1  | Call parallel hashed merkle root
prover-backend-1  | End of parallel hashed merkle root in 3.7616057554880777 minutes.
prover-backend-1  | fede9
prover-backend-1  | fede10
prover-backend-1  | fede11
prover-backend-1  | [45]
prover-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }} }} }]
prover-backend-1  | fede12
prover-backend-1  | Transactions built: 6839.447550535202
prover-backend-1  | Signatures generated: 6852.316356420517
prover-backend-1  | Verifier signatures sent: 6875.596288204193
prover-backend-1  | Funding transaction: f0942fcae46a154fa9ad2ae3e8dca479e0c3277c5541012171f935cfd158a648
prover-backend-1  | INFO:     127.0.0.1:47166 - "POST /api/v1/setup HTTP/1.1" 200 OK
prover-backend-1  | INFO:     172.18.0.1:62070 - "POST /api/v1/setup/fund HTTP/1.1" 200 OK
prover-backend-1  | INFO:     172.18.0.1:65102 - "POST /api/v1/input HTTP/1.1" 200 OK
prover-backend-1  | pkmn_guess.elf
prover-backend-1  | ./execution_files/pkmn_rom_commitment.txt
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--elf', '../../BitVMX-CPU/docker-riscv32/riscv32/build/pkmn_guess.elf', '--debug', '--checkpoints', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Executing command for list 25945 with step 0 and limit 25945 with base 0 index 25944
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '25945', '--trace', '--limit', '25945', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | 403effa21e608d7a8894f40e788a93c444f090607651467981fa774d0303f7f0
prover-backend-1  | Hash result revelation transaction: 8fb13b6f06e2eea5e1844c3d3ae438723fcc865b9159e5dc2f452e4a7aaa8f22
prover-backend-1  | INFO:     172.18.0.1:59880 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
prover-backend-1  | Executing command for list 25945 with step 0 and limit 25945 with base 0 index 25944
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '25945', '--trace', '--limit', '25945', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Search hash iteration transaction 0: e9b4f20bf67fdb4dd31e14171e431f6c9abc0d72375b8da027398d4e22358991
prover-backend-1  | INFO:     172.18.0.1:60930 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
prover-backend-1  | Search hash iteration transaction 1: 68a5832a78f49e6cc5946e3056fa16fd37dcd7e268846ccd85270439564de801
prover-backend-1  | INFO:     172.18.0.1:55538 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
prover-backend-1  | Search hash iteration transaction 2: 6fe15777136d01bedbe3d0a36ba5edd3d0c9704edf87a165f3a3c189e09cae2c
prover-backend-1  | INFO:     172.18.0.1:65476 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
prover-backend-1  | Search hash iteration transaction 3: 9011f69e93d2c6704b666e69f1f37a535ab863f38ff5913ff558d17d5d686fc8
prover-backend-1  | INFO:     172.18.0.1:59482 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
prover-backend-1  | Search hash iteration transaction 4: 44668ee0b80ae3ec5dde86d17099770993b7969988c9733d23939c67b3cdeef3
prover-backend-1  | INFO:     172.18.0.1:59708 - "POST /api/v1/next_step HTTP/1.1" 200 OK
prover-backend-1  | First wrong step: 9
prover-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
prover-backend-1  | Done executing command
prover-backend-1  | Trace transaction: 77485b92d64e7c2555ae160053b36ae507723f9f154d69909debfad2dc7d7571
prover-backend-1  | INFO:     172.18.0.1:58162 - "POST /api/v1/next_step HTTP/1.1" 200 OK
prover-backend-1  | Call parallel hashed merkle root
prover-backend-1  | End of parallel hashed merkle root in 3.8027649243672688 minutes.
prover-backend-1  | Instruction index: 8001667800
prover-backend-1  | Start control block computation
prover-backend-1  | End of control block computation in 229.1449637413025 seconds.
prover-backend-1  | INFO:     172.18.0.1:63452 - "POST /api/v1/next_step HTTP/1.1" 500 Internal Server Error
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
❯ docker compose up verifier-backend                                                [17:25:19]
[+] Running 1/0
 ✔ Container bitvmx_protocol-verifier-backend-1  Created                                  0.0s
Attaching to verifier-backend-1
verifier-backend-1  | INFO:     Started server process [1]
verifier-backend-1  | INFO:     Waiting for application startup.
verifier-backend-1  | INFO:     Application startup complete.
verifier-backend-1  | INFO:     Uvicorn running on http://0.0.0.0:80 (Press CTRL+C to quit)
verifier-backend-1  | fede - setup fund from verifier
verifier-backend-1  | Init setup for id e77f90bc-65ef-4111-9398-f62488e672c8
verifier-backend-1  | INFO:     172.18.0.1:55686 - "POST /api/v1/setup HTTP/1.1" 200 OK
verifier-backend-1  | Call generate public keys: 0.00131988525390625
verifier-backend-1  | Call generate scripts: 0.006169795989990234
verifier-backend-1  | Call compute trigger trace challenge address: 6.308813095092773
verifier-backend-1  | prob
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }} }, 10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }} }]
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }} }} }]
verifier-backend-1  | this
verifier-backend-1  | Call transactions time: 3067.2557520866394
verifier-backend-1  | fede3
verifier-backend-1  | fede4
verifier-backend-1  | fede5
verifier-backend-1  | a
verifier-backend-1  | fede6
verifier-backend-1  | Call parallel hashed merkle root
verifier-backend-1  | End of parallel hashed merkle root in 3.9246821800867715 minutes.
verifier-backend-1  | fede9
verifier-backend-1  | fede10
verifier-backend-1  | fede11
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }} }} }]
verifier-backend-1  | fede12
verifier-backend-1  | Call create protocol setup properties time: 3423.9838407039642
verifier-backend-1  | Public keys controller total time: 3431.8361241817474
verifier-backend-1  | INFO:     172.18.0.1:55696 - "POST /api/v1/public_keys HTTP/1.1" 200 OK
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }} }, 10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }} }]
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }} }} }]
verifier-backend-1  | Signatures controller total time: 22.985939502716064
verifier-backend-1  | INFO:     172.18.0.1:65174 - "POST /api/v1/signatures HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | pkmn_guess.elf
verifier-backend-1  | ./execution_files/pkmn_rom_commitment.txt
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--elf', '../../BitVMX-CPU/docker-riscv32/riscv32/build/pkmn_guess.elf', '--debug', '--checkpoints', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Executing command for list 25945 with step 0 and limit 25945 with base 0 index 25944
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '25945', '--trace', '--limit', '25945', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Trigger protocol transaction: 7aae8fe1ed0cd2ebd50bedc246d60b34fa46220ec93d5c005891903ebba57758
verifier-backend-1  | INFO:     172.18.0.1:63802 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 4096 with step 0 and limit 4096 with base 0 index 4095
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '4096', '--trace', '--limit', '4096', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 0: 7de05028e4b6dadc3540676d27763731839f332c46bf845986d01627bcb71b88
verifier-backend-1  | INFO:     172.18.0.1:60764 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 512 with step 0 and limit 512 with base 0 index 511
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '512', '--trace', '--limit', '512', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 1: dfa1a93edf3d353f5f89a5eb8b2d2c6a7f2ef1d695209b3511e057abf73b63a6
verifier-backend-1  | INFO:     172.18.0.1:60776 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 64 with step 0 and limit 64 with base 0 index 63
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '64', '--trace', '--limit', '64', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 2: 6fd77ed7d352f31e6d6147d9463909d717e883977c86f278e0c09e5bf1231e5d
verifier-backend-1  | INFO:     172.18.0.1:56804 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 8 with step 0 and limit 8 with base 0 index 7
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '8', '--trace', '--limit', '8', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Executing command for list 16 with step 0 and limit 16 with base 0 index 15
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '16', '--trace', '--limit', '16', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 3: b8a1be953d6e9b581ced89bc13ed0e00a335061697484cdfbde89abc76c2292f
verifier-backend-1  | INFO:     172.18.0.1:63892 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 9 with step 0 and limit 9 with base 0 index 8
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '9', '--trace', '--limit', '9', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Search choice iteration transaction 4: 6a5e322e7a0a1f3c6a22ac5a83595833a583587fdc2364b5fc1fcf75387e5af9
verifier-backend-1  | INFO:     172.18.0.1:60876 - "POST /api/v1/next_step HTTP/1.1" 200 OK
verifier-backend-1  | Processing new step
verifier-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little']
verifier-backend-1  | Done executing command
verifier-backend-1  | Checking correct hash challenge. Previous hash (correct): 37c45e7ac0147f1fb854f18b91cbb6db25467f597eef96f614887e3d90b31b00, write trace: f0000028e07fff618001667c00, next hash(incorrect): c04d518efb588575554076f422246ad6b8f642258cc394f44721af8b09c74da0
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
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }, 11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }} }} }]
verifier-backend-1  | [45]
verifier-backend-1  | [StructuredScript { size: 25, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8 OP_0)), Call(10791093485084251662), Call(13234228732929855735)], script_map: {10791093485084251662: StructuredScript { size: 15, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0 OP_DUP OP_2DUP)), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406), Call(16329752875843546406)], script_map: {16329752875843546406: StructuredScript { size: 2, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::hash::sha256_u4::padding", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_2DUP OP_2DUP))], script_map: {} }} }, 13234228732929855735: StructuredScript { size: 8, stack_hint: None, debug_identifier: "bitvm::hash::sha256_u4::padding bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0)), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(11693102406951390485), Call(8036139062677729067), Call(273670838320084397), Call(12193961059090562603)], script_map: {11693102406951390485: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_0))], script_map: {} }, 12193961059090562603: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_8))], script_map: {} }, 8036139062677729067: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_1))], script_map: {} }, 273670838320084397: StructuredScript { size: 1, stack_hint: None, debug_identifier: "bitvm::u4::u4_std::u4_number_to_nibble bitvm::u4::u4_std::u4_number_to_nibble", num_unclosed_ifs: 0, unclosed_if_positions: [], extra_endif_positions: [], max_if_interval: (0, 0), blocks: [Script(Script(OP_PUSHNUM_6))], script_map: {} }} }} }]
verifier-backend-1  | Trigger execution challenge transaction: 1d8999878a2b4e0a4c781e03a7c327b3668116724bee91270806e22fddaade18
verifier-backend-1  | INFO:     172.18.0.1:63014 - "POST /api/v1/next_step HTTP/1.1" 200 OK

```

## regtest

```bash
❯ docker compose up bitcoin-regtest-node                                                                                                                                           [17:25:12]
[+] Running 1/0
 ✔ Container bitvmx_protocol-bitcoin-regtest-node-1  Created                                                                                                                             0.0s
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
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Ignoring unknown configuration value regtest.rpcclienttimeout
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Bitcoin Core version v28.0.0 (release build)
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z parameter interaction: -listen=0 -> setting -upnp=0
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z parameter interaction: -listen=0 -> setting -natpmp=0
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z parameter interaction: -listen=0 -> setting -discover=0
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z parameter interaction: -listen=0 -> setting -listenonion=0
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z parameter interaction: -listen=0 -> setting -i2pacceptincoming=0
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Script verification uses 7 additional threads
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Using the 'sse4(1way),sse41(4way)' SHA256 implementation
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Default data directory /bitcoin/.bitcoin
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Using data directory /bitcoin/.bitcoin/regtest
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Config file: /bitcoin/.bitcoin/bitcoin.conf
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Config file arg: disablewallet="0"
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Config file arg: listen="0"
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Config file arg: regtest="1"
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Config file arg: server="1"
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Config file arg: txindex="1"
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Config file arg: [regtest] dbcache="512"
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Config file arg: [regtest] fallbackfee="0.0002"
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Config file arg: [regtest] printtoconsole="1"
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Config file arg: [regtest] rpcallowip="0.0.0.0/0"
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Config file arg: [regtest] rpcbind=":8443"
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Config file arg: [regtest] rpcpassword=****
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Config file arg: [regtest] rpcport="8443"
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Config file arg: [regtest] rpcuser=****
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Command-line arg: rpcallowip="0.0.0.0/0"
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Command-line arg: rpcbind=":8332"
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Using at most 125 automatic connections (1048576 file descriptors available)
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z scheduler thread start
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Binding RPC on address  port 8332
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z WARNING: the RPC server is not safe to expose to untrusted networks such as the public internet
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Binding RPC on address  port 8443
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z WARNING: the RPC server is not safe to expose to untrusted networks such as the public internet
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Config options rpcuser and rpcpassword will soon be deprecated. Locally-run instances may remove rpcuser to use cookie-based auth, or may be replaced with rpcauth. Please see share/rpcauth for rpcauth auth generation.
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Starting HTTP server with 4 worker threads
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Using wallet directory /bitcoin/.bitcoin/regtest/wallets
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z init message: Verifying wallet(s)…
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Using /16 prefix for IP bucketing
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z init message: Loading P2P addresses…
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Loaded 0 addresses from peers.dat  2ms
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z init message: Loading banlist…
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z SetNetworkActive: true
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Script verification uses 7 additional threads
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Cache configuration:
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z * Using 2.0 MiB for block index database
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z * Using 63.8 MiB for transaction index database
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z * Using 8.0 MiB for chain state database
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z * Using 438.2 MiB for in-memory UTXO set (plus up to 286.1 MiB of unused mempool space)
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Using obfuscation key for blocksdir *.dat files (/bitcoin/.bitcoin/regtest/blocks): 'd426608dfb37eae3'
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Using 16 MiB out of 16 MiB requested for signature cache, able to store 524288 elements
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Using 16 MiB out of 16 MiB requested for script execution cache, able to store 524288 elements
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z init message: Loading block index…
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Validating signatures for all blocks.
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Setting nMinimumChainWork=0000000000000000000000000000000000000000000000000000000000000000
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Opening LevelDB in /bitcoin/.bitcoin/regtest/blocks/index
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Opened LevelDB successfully
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Using obfuscation key for /bitcoin/.bitcoin/regtest/blocks/index: 0000000000000000
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z LoadBlockIndexDB: last block file = 0
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z LoadBlockIndexDB: last block file info: CBlockFileInfo(blocks=143, size=579038, heights=0...142, time=2011-02-02...2024-12-16)
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Checking all blk files are present...
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Initializing chainstate Chainstate [ibd] @ height -1 (null)
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Opening LevelDB in /bitcoin/.bitcoin/regtest/chainstate
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Opened LevelDB successfully
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Using obfuscation key for /bitcoin/.bitcoin/regtest/chainstate: 26a139bcedf2374e
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Loaded best chain: hashBestChain=5ce65e3e37f01e1799c3d2e257bff3c988dfb3b24f26e3da66a7a322a0ef62f1 height=142 date=2024-12-16T19:20:03Z progress=1.000000
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Opening LevelDB in /bitcoin/.bitcoin/regtest/chainstate
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Opened LevelDB successfully
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Using obfuscation key for /bitcoin/.bitcoin/regtest/chainstate: 26a139bcedf2374e
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z [Chainstate [ibd] @ height 142 (5ce65e3e37f01e1799c3d2e257bff3c988dfb3b24f26e3da66a7a322a0ef62f1)] resized coinsdb cache to 8.0 MiB
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z [Chainstate [ibd] @ height 142 (5ce65e3e37f01e1799c3d2e257bff3c988dfb3b24f26e3da66a7a322a0ef62f1)] resized coinstip cache to 438.2 MiB
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z init message: Verifying blocks…
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Verifying last 6 blocks at level 3
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Verification progress: 0%
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Verification progress: 16%
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Verification progress: 33%
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Verification progress: 50%
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Verification progress: 66%
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Verification progress: 83%
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Verification progress: 99%
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Verification: No coin database inconsistencies in last 6 blocks (12 transactions)
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z  block index              92ms
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Opening LevelDB in /bitcoin/.bitcoin/regtest/indexes/txindex
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Opened LevelDB successfully
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Using obfuscation key for /bitcoin/.bitcoin/regtest/indexes/txindex: 0000000000000000
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Setting NODE_NETWORK on non-prune mode
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z initload thread start
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z block tree size = 143
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z nBestHeight = 142
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z txindex thread start
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z txindex is enabled at height 142
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z txindex thread exit
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Loading 0 mempool transactions from file...
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Loaded 0 addresses from "anchors.dat"
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Imported mempool transactions from file: 0 succeeded, 0 failed, 0 expired, 0 already there, 0 waiting for initial broadcast
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z initload thread exit
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z 0 block-relay-only anchors will be tried for connections.
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z init message: Starting network threads…
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z net thread start
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z dnsseed thread start
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z addcon thread start
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z opencon thread start
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z msghand thread start
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z Loading addresses from DNS seed dummySeed.invalid.
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z init message: Done loading
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z 0 addresses found from DNS seeds
bitcoin-regtest-node-1  | 2024-12-16T20:25:15Z dnsseed thread exit
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z Using SQLite Version 3.38.5
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z Using wallet /bitcoin/.bitcoin/regtest/wallets/testwallet
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z init message: Loading wallet…
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z [testwallet] Wallet file version = 10500, last client version = 280000
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z [testwallet] Descriptors: 8, Descriptor Keys: 1 plaintext, 0 encrypted, 1 total.
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z [testwallet] Setting spkMan to active: id = 5fa5894c3214f1971022f2ac0cb41234312de041d0101d8ff659021fa78f6213, type = legacy, internal = false
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z [testwallet] Setting spkMan to active: id = c19bbf9c1fc504a2da6e565484727e3da28509408480aef30224004f731ce2d3, type = p2sh-segwit, internal = false
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z [testwallet] Setting spkMan to active: id = 3e38ea76103fbe8da866e498ddaa578751bf571faed2dfcc16434ce60cb6c08b, type = bech32, internal = false
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z [testwallet] Setting spkMan to active: id = 1c5cb8d2204e9ee946c538fad807128953c05199be767adee66e5c1528c308ab, type = bech32m, internal = false
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z [testwallet] Setting spkMan to active: id = 4a20bb5039294aec11a04c3e4e3e9046ab0aa1c4f8e30fa0de3894ecdb527d00, type = legacy, internal = true
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z [testwallet] Setting spkMan to active: id = 1e2f7fb29e5a628e9b98d4b54647060c6010d061e75d25a8061c040ef5e5bed0, type = p2sh-segwit, internal = true
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z [testwallet] Setting spkMan to active: id = 571591fca33377c85dfecac501e9d2e77d08eae8808171610e9190f85f68ae41, type = bech32, internal = true
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z [testwallet] Setting spkMan to active: id = 0b4adb065510a9657c30b34357c706e527015bae39637d20796c055593ad4be4, type = bech32m, internal = true
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z [testwallet] Wallet completed loading in             447ms
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z [testwallet] setKeyPool.size() = 8000
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z [testwallet] mapWallet.size() = 145
bitcoin-regtest-node-1  | 2024-12-16T20:25:24Z [testwallet] m_address_book.size() = 8
bitcoin-regtest-node-1  | 2024-12-16T20:26:05Z Leaving InitialBlockDownload (latching to false)
bitcoin-regtest-node-1  | 2024-12-16T20:26:05Z [testwallet] Coin Selection: Algorithm:knapsack, Waste Metric Score:4546
bitcoin-regtest-node-1  | 2024-12-16T20:26:05Z [testwallet] Fee Calculation: Fee:6473 Bytes:141 Tgt:6 (requested 6) Reason:"Half Target 60% Threshold" Decay 0.96200: Estimation: (5791.82 - 1e+99) 100.00% 15.2/(15.2 0 mem 0.0 out) Fail: (0 - 5791.82) 100.00% 5.8/(5.8 0 mem 0.0 out)
bitcoin-regtest-node-1  | 2024-12-16T20:26:05Z [testwallet] Coin Selection: Algorithm:knapsack, Waste Metric Score:4546
bitcoin-regtest-node-1  | 2024-12-16T20:26:05Z [testwallet] Fee Calculation: Fee:6473 Bytes:141 Tgt:6 (requested 6) Reason:"Half Target 60% Threshold" Decay 0.96200: Estimation: (5791.82 - 1e+99) 100.00% 15.2/(15.2 0 mem 0.0 out) Fail: (0 - 5791.82) 100.00% 5.8/(5.8 0 mem 0.0 out)
bitcoin-regtest-node-1  | 2024-12-16T20:26:05Z [testwallet] Fee non-grouped = 6473, grouped = 6473, using grouped
bitcoin-regtest-node-1  | 2024-12-16T20:26:05Z [testwallet] CommitTransaction:
bitcoin-regtest-node-1  | CTransaction(hash=ddd7b5da83, ver=2, vin.size=1, vout.size=2, nLockTime=87)
bitcoin-regtest-node-1  |     CTxIn(COutPoint(89d72930ae, 0), scriptSig=, nSequence=4294967293)
bitcoin-regtest-node-1  |     CScriptWitness(3044022038533cc6a82679c4989201c3d329affb80872602e67973d9e3a4c3c217c0cc610220205e74fa5c097d6fd48a850c67f0d26f5f734fec58ec450458692cd4c5591ed201, 031458e74f50e8c849f9bb3877928ff4e83a63ff7f059a999b8cdb572e7b6b1f42)
bitcoin-regtest-node-1  |     CTxOut(nValue=49.95866022, scriptPubKey=0014e9412afe6837a22ad4a6195584)
bitcoin-regtest-node-1  |     CTxOut(nValue=0.01030000, scriptPubKey=0014d19156af772f3ebefa4096a2fe)
bitcoin-regtest-node-1  | 2024-12-16T20:26:05Z [testwallet] AddToWallet ddd7b5da83eabdfa36a9c916c45f4d59f54c0b4257fbee10cd89618e5d36f215  newupdate Inactive (abandoned=0)
bitcoin-regtest-node-1  | 2024-12-16T20:26:05Z [testwallet] Submitting wtx ddd7b5da83eabdfa36a9c916c45f4d59f54c0b4257fbee10cd89618e5d36f215 to mempool for relay
bitcoin-regtest-node-1  | 2024-12-16T20:26:05Z [testwallet] AddToWallet ddd7b5da83eabdfa36a9c916c45f4d59f54c0b4257fbee10cd89618e5d36f215   InMempool
bitcoin-regtest-node-1  | 2024-12-16T20:26:16Z Adding fixed seeds as 60 seconds have passed and addrman is empty for at least one reachable network
bitcoin-regtest-node-1  | 2024-12-16T20:26:16Z Added 0 fixed seeds from reachable networks.
bitcoin-regtest-node-1  | 2024-12-16T20:57:30Z Potential stale tip detected, will try using extra outbound peer (last tip update: 1890 seconds ago)
bitcoin-regtest-node-1  | 2024-12-16T21:08:01Z Potential stale tip detected, will try using extra outbound peer (last tip update: 2521 seconds ago)
bitcoin-regtest-node-1  | 2024-12-16T21:18:31Z Potential stale tip detected, will try using extra outbound peer (last tip update: 3151 seconds ago)
bitcoin-regtest-node-1  | 2024-12-16T21:25:15Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2024-12-16T21:29:01Z Potential stale tip detected, will try using extra outbound peer (last tip update: 3781 seconds ago)
bitcoin-regtest-node-1  | 2024-12-16T21:39:31Z Potential stale tip detected, will try using extra outbound peer (last tip update: 4411 seconds ago)
bitcoin-regtest-node-1  | 2024-12-16T21:50:01Z Potential stale tip detected, will try using extra outbound peer (last tip update: 5041 seconds ago)
bitcoin-regtest-node-1  | 2024-12-16T22:00:31Z Potential stale tip detected, will try using extra outbound peer (last tip update: 5671 seconds ago)
bitcoin-regtest-node-1  | 2024-12-16T22:11:01Z Potential stale tip detected, will try using extra outbound peer (last tip update: 6301 seconds ago)
bitcoin-regtest-node-1  | 2024-12-16T22:20:54Z CreateNewBlock(): block weight: 1938 txs: 2 fees: 36473 sigops 402
bitcoin-regtest-node-1  | 2024-12-16T22:20:54Z Saw new header hash=170de65a6ffd819fc435392014210dcb03050c822914df7972c83f3b603d4ba5 height=143
bitcoin-regtest-node-1  | 2024-12-16T22:20:54Z UpdateTip: new best=170de65a6ffd819fc435392014210dcb03050c822914df7972c83f3b603d4ba5 height=143 version=0x20000000 log2_work=8.169925 tx=190 date='2024-12-16T22:20:54Z' progress=1.000000 cache=0.3MiB(4txo)
bitcoin-regtest-node-1  | 2024-12-16T22:20:54Z [testwallet] AddToWallet 294579d77b3bdc20fdb8e98a8a9490919e65dc0d52e802c5089d3857db01f25e  new Confirmed (block=170de65a6ffd819fc435392014210dcb03050c822914df7972c83f3b603d4ba5, height=143, index=0)
bitcoin-regtest-node-1  | 2024-12-16T22:20:54Z [testwallet] AddToWallet ddd7b5da83eabdfa36a9c916c45f4d59f54c0b4257fbee10cd89618e5d36f215  update Confirmed (block=170de65a6ffd819fc435392014210dcb03050c822914df7972c83f3b603d4ba5, height=143, index=1)
bitcoin-regtest-node-1  | 2024-12-16T22:25:15Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2024-12-16T22:41:38Z CreateNewBlock(): block weight: 9963 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-16T22:41:38Z Saw new header hash=4cf36e01711bc06c3f98858f6ac93407e5598d564e2bc789dec28900c26d7399 height=144
bitcoin-regtest-node-1  | 2024-12-16T22:41:38Z UpdateTip: new best=4cf36e01711bc06c3f98858f6ac93407e5598d564e2bc789dec28900c26d7399 height=144 version=0x30000000 log2_work=8.179909 tx=192 date='2024-12-16T22:41:38Z' progress=1.000000 cache=0.3MiB(5txo)
bitcoin-regtest-node-1  | 2024-12-16T22:41:38Z [testwallet] AddToWallet 0363ebc07bcd5047cb3b5a0917b7150a9f6523045798d81ebde20ee2d8c14128  new Confirmed (block=4cf36e01711bc06c3f98858f6ac93407e5598d564e2bc789dec28900c26d7399, height=144, index=0)
bitcoin-regtest-node-1  | 2024-12-16T22:41:43Z CreateNewBlock(): block weight: 3505 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-16T22:41:43Z Saw new header hash=1e5a2139f959ed7fa5e1b55d0b0d07e36085ca12ffe1868051f73cb94994402f height=145
bitcoin-regtest-node-1  | 2024-12-16T22:41:43Z UpdateTip: new best=1e5a2139f959ed7fa5e1b55d0b0d07e36085ca12ffe1868051f73cb94994402f height=145 version=0x30000000 log2_work=8.189825 tx=194 date='2024-12-16T22:41:43Z' progress=1.000000 cache=0.3MiB(6txo)
bitcoin-regtest-node-1  | 2024-12-16T22:41:43Z [testwallet] AddToWallet 30cbc45fe427ba5ae7683c686e1ffd7674af56f9feb0cfb9ce0b8a414f49371e  new Confirmed (block=1e5a2139f959ed7fa5e1b55d0b0d07e36085ca12ffe1868051f73cb94994402f, height=145, index=0)
bitcoin-regtest-node-1  | 2024-12-16T22:41:48Z CreateNewBlock(): block weight: 47149 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-16T22:41:48Z Saw new header hash=3b0061de547b9caf5cfeba0add6a18e0ea76eb806bbdd02fb8ff135f5b9d0fa7 height=146
bitcoin-regtest-node-1  | 2024-12-16T22:41:48Z UpdateTip: new best=3b0061de547b9caf5cfeba0add6a18e0ea76eb806bbdd02fb8ff135f5b9d0fa7 height=146 version=0x30000000 log2_work=8.199672 tx=196 date='2024-12-16T22:41:48Z' progress=1.000000 cache=0.3MiB(7txo)
bitcoin-regtest-node-1  | 2024-12-16T22:41:48Z [testwallet] AddToWallet 8c1a95c89ca0874bb7d2516b7bc194d0ade48e7b15ec17eaf1ec89fbc00984af  new Confirmed (block=3b0061de547b9caf5cfeba0add6a18e0ea76eb806bbdd02fb8ff135f5b9d0fa7, height=146, index=0)
bitcoin-regtest-node-1  | 2024-12-16T22:41:52Z CreateNewBlock(): block weight: 1688 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-16T22:41:52Z Saw new header hash=24a821f0b2d0a6e933ae56b08d705d26d6d7d1b3365a37a8462ea6bf3af765bf height=147
bitcoin-regtest-node-1  | 2024-12-16T22:41:52Z UpdateTip: new best=24a821f0b2d0a6e933ae56b08d705d26d6d7d1b3365a37a8462ea6bf3af765bf height=147 version=0x30000000 log2_work=8.209453 tx=198 date='2024-12-16T22:41:52Z' progress=1.000000 cache=0.3MiB(8txo)
bitcoin-regtest-node-1  | 2024-12-16T22:41:52Z [testwallet] AddToWallet 8a6444214d10f87f274b0accc75a6b340eec682c5b9252deaeec6b7c1d1483a6  new Confirmed (block=24a821f0b2d0a6e933ae56b08d705d26d6d7d1b3365a37a8462ea6bf3af765bf, height=147, index=0)
bitcoin-regtest-node-1  | 2024-12-16T22:41:57Z CreateNewBlock(): block weight: 47471 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-16T22:41:57Z Saw new header hash=1a58d5425ee16971ba1045b22e9ef9c648e1e2a314c848b04828e412bac1de06 height=148
bitcoin-regtest-node-1  | 2024-12-16T22:41:57Z UpdateTip: new best=1a58d5425ee16971ba1045b22e9ef9c648e1e2a314c848b04828e412bac1de06 height=148 version=0x30000000 log2_work=8.219169 tx=200 date='2024-12-16T22:41:57Z' progress=1.000000 cache=0.3MiB(9txo)
bitcoin-regtest-node-1  | 2024-12-16T22:41:57Z [testwallet] AddToWallet e7b20b5fc416009d9e8b58faa93502be47e75e22fc49d4f87e11ca421a776612  new Confirmed (block=1a58d5425ee16971ba1045b22e9ef9c648e1e2a314c848b04828e412bac1de06, height=148, index=0)
bitcoin-regtest-node-1  | 2024-12-16T22:42:01Z CreateNewBlock(): block weight: 1688 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-16T22:42:01Z Saw new header hash=2e9c0e6650d4ee358b51c0c4b54e4d7abd4a8bf14e43c4ebbd22053ecd94e339 height=149
bitcoin-regtest-node-1  | 2024-12-16T22:42:01Z UpdateTip: new best=2e9c0e6650d4ee358b51c0c4b54e4d7abd4a8bf14e43c4ebbd22053ecd94e339 height=149 version=0x30000000 log2_work=8.228819 tx=202 date='2024-12-16T22:42:01Z' progress=1.000000 cache=0.3MiB(10txo)
bitcoin-regtest-node-1  | 2024-12-16T22:42:01Z [testwallet] AddToWallet 28ecda537d4d31c0362af14a5fd00bd05bd0516e0e4565e22b9ea57f964a362b  new Confirmed (block=2e9c0e6650d4ee358b51c0c4b54e4d7abd4a8bf14e43c4ebbd22053ecd94e339, height=149, index=0)
bitcoin-regtest-node-1  | 2024-12-16T22:42:06Z CreateNewBlock(): block weight: 47467 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-16T22:42:06Z Saw new header hash=47f5acd8e633113ac0e35e099333ef07dd50c64753ddea6b5bdc21e884fdfbf9 height=150
bitcoin-regtest-node-1  | 2024-12-16T22:42:06Z UpdateTip: new best=47f5acd8e633113ac0e35e099333ef07dd50c64753ddea6b5bdc21e884fdfbf9 height=150 version=0x30000000 log2_work=8.238405 tx=204 date='2024-12-16T22:42:06Z' progress=1.000000 cache=0.3MiB(11txo)
bitcoin-regtest-node-1  | 2024-12-16T22:42:06Z [testwallet] AddToWallet f4f4273121aa824a0bc3a1c0d252907ec345f8a406a056a3edb0d5900e937404  new Confirmed (block=47f5acd8e633113ac0e35e099333ef07dd50c64753ddea6b5bdc21e884fdfbf9, height=150, index=0)
bitcoin-regtest-node-1  | 2024-12-16T22:42:10Z CreateNewBlock(): block weight: 1688 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-16T22:42:10Z Saw new header hash=609f80f289e73a89a0f3502b84c048180a31b61bb0c60717a578c192d5cf1794 height=151
bitcoin-regtest-node-1  | 2024-12-16T22:42:10Z UpdateTip: new best=609f80f289e73a89a0f3502b84c048180a31b61bb0c60717a578c192d5cf1794 height=151 version=0x30000000 log2_work=8.247928 tx=206 date='2024-12-16T22:42:10Z' progress=1.000000 cache=0.3MiB(12txo)
bitcoin-regtest-node-1  | 2024-12-16T22:42:10Z [testwallet] AddToWallet 946198143c46b5c6485706b89e63828ef50cb36196715591a872f516250776e9  new Confirmed (block=609f80f289e73a89a0f3502b84c048180a31b61bb0c60717a578c192d5cf1794, height=151, index=0)
bitcoin-regtest-node-1  | 2024-12-16T22:42:15Z CreateNewBlock(): block weight: 47469 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-16T22:42:15Z Saw new header hash=15955573188ebe36c16e9cc6930f72f5e5f18d36f89839da89f27521282c03e5 height=152
bitcoin-regtest-node-1  | 2024-12-16T22:42:15Z UpdateTip: new best=15955573188ebe36c16e9cc6930f72f5e5f18d36f89839da89f27521282c03e5 height=152 version=0x30000000 log2_work=8.257388 tx=208 date='2024-12-16T22:42:15Z' progress=1.000000 cache=0.3MiB(13txo)
bitcoin-regtest-node-1  | 2024-12-16T22:42:15Z [testwallet] AddToWallet d504fa6a3b20311d019eb1afe39ff3554e0ed980e92f6595cd5a9887d66b6c70  new Confirmed (block=15955573188ebe36c16e9cc6930f72f5e5f18d36f89839da89f27521282c03e5, height=152, index=0)
bitcoin-regtest-node-1  | 2024-12-16T22:42:21Z CreateNewBlock(): block weight: 1689 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-16T22:42:21Z Saw new header hash=0fd96dad665c3cf2d20c55d292c54ec9b39de0e12eaedd3a6506d56118e81a8a height=153
bitcoin-regtest-node-1  | 2024-12-16T22:42:21Z UpdateTip: new best=0fd96dad665c3cf2d20c55d292c54ec9b39de0e12eaedd3a6506d56118e81a8a height=153 version=0x30000000 log2_work=8.266787 tx=210 date='2024-12-16T22:42:21Z' progress=1.000000 cache=0.3MiB(14txo)
bitcoin-regtest-node-1  | 2024-12-16T22:42:21Z [testwallet] AddToWallet 78b74bfc00ddbdb7dcc47d5b6cb02b8e2af41bb0eedde2cfb2aba6f355694352  new Confirmed (block=0fd96dad665c3cf2d20c55d292c54ec9b39de0e12eaedd3a6506d56118e81a8a, height=153, index=0)
bitcoin-regtest-node-1  | 2024-12-16T22:42:27Z CreateNewBlock(): block weight: 47463 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-16T22:42:27Z Saw new header hash=47b3c271e04aa3648c3658233b9254a5e9bec0bacbb9180c0ccc3d3b90e04ae5 height=154
bitcoin-regtest-node-1  | 2024-12-16T22:42:27Z UpdateTip: new best=47b3c271e04aa3648c3658233b9254a5e9bec0bacbb9180c0ccc3d3b90e04ae5 height=154 version=0x30000000 log2_work=8.276124 tx=212 date='2024-12-16T22:42:27Z' progress=1.000000 cache=0.3MiB(15txo)
bitcoin-regtest-node-1  | 2024-12-16T22:42:27Z [testwallet] AddToWallet c589dbbebce5a14308d6bee0f54a1967ab7a1e9cc8dc01eb95bfa26296686dda  new Confirmed (block=47b3c271e04aa3648c3658233b9254a5e9bec0bacbb9180c0ccc3d3b90e04ae5, height=154, index=0)
bitcoin-regtest-node-1  | 2024-12-16T22:42:32Z CreateNewBlock(): block weight: 1689 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-16T22:42:32Z Saw new header hash=7a88595204fd67303512140ba09e29cbcf03a235dc24c46a374bd4d1af88a119 height=155
bitcoin-regtest-node-1  | 2024-12-16T22:42:32Z UpdateTip: new best=7a88595204fd67303512140ba09e29cbcf03a235dc24c46a374bd4d1af88a119 height=155 version=0x30000000 log2_work=8.285402 tx=214 date='2024-12-16T22:42:32Z' progress=1.000000 cache=0.3MiB(16txo)
bitcoin-regtest-node-1  | 2024-12-16T22:42:32Z [testwallet] AddToWallet 8602858270aa489be2f7bce47f819f4d5420c16389897e3ec5db83b6c81fd7de  new Confirmed (block=7a88595204fd67303512140ba09e29cbcf03a235dc24c46a374bd4d1af88a119, height=155, index=0)
bitcoin-regtest-node-1  | 2024-12-16T22:42:35Z CreateNewBlock(): block weight: 13353 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-16T22:42:35Z Saw new header hash=01fa88ced33599bae331b17927f9da31feff2a10a96ba0ad2af38d24241473f8 height=156
bitcoin-regtest-node-1  | 2024-12-16T22:42:35Z UpdateTip: new best=01fa88ced33599bae331b17927f9da31feff2a10a96ba0ad2af38d24241473f8 height=156 version=0x30000000 log2_work=8.294621 tx=216 date='2024-12-16T22:42:35Z' progress=1.000000 cache=0.3MiB(17txo)
bitcoin-regtest-node-1  | 2024-12-16T22:42:35Z [testwallet] AddToWallet 2160d0edd5101fee4fc6ca0bc70ef9a3f42a14c7b0e054b9c65bfe2804d250d8  new Confirmed (block=01fa88ced33599bae331b17927f9da31feff2a10a96ba0ad2af38d24241473f8, height=156, index=0)
bitcoin-regtest-node-1  | 2024-12-16T23:14:02Z Potential stale tip detected, will try using extra outbound peer (last tip update: 1887 seconds ago)
bitcoin-regtest-node-1  | 2024-12-16T23:24:32Z Potential stale tip detected, will try using extra outbound peer (last tip update: 2517 seconds ago)
bitcoin-regtest-node-1  | 2024-12-16T23:25:15Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2024-12-16T23:35:02Z Potential stale tip detected, will try using extra outbound peer (last tip update: 3147 seconds ago)
bitcoin-regtest-node-1  | 2024-12-16T23:45:32Z Potential stale tip detected, will try using extra outbound peer (last tip update: 3777 seconds ago)
bitcoin-regtest-node-1  | 2024-12-16T23:56:02Z Potential stale tip detected, will try using extra outbound peer (last tip update: 4407 seconds ago)
bitcoin-regtest-node-1  | 2024-12-16T23:58:34Z CreateNewBlock(): block weight: 25131 txs: 1 fees: 30000 sigops 400
bitcoin-regtest-node-1  | 2024-12-16T23:58:34Z Saw new header hash=149bcae31477954b103ca0733bee45c3eaca0cb68ce45167af6336b5f5bf2a63 height=157
bitcoin-regtest-node-1  | 2024-12-16T23:58:34Z UpdateTip: new best=149bcae31477954b103ca0733bee45c3eaca0cb68ce45167af6336b5f5bf2a63 height=157 version=0x30000000 log2_work=8.303781 tx=218 date='2024-12-16T23:58:34Z' progress=1.000000 cache=0.3MiB(18txo)
bitcoin-regtest-node-1  | 2024-12-16T23:58:34Z [testwallet] AddToWallet f21c664f2dc30216e0b584eebc02ee8a981909a12e5a326cdaf8f893235f80ce  new Confirmed (block=149bcae31477954b103ca0733bee45c3eaca0cb68ce45167af6336b5f5bf2a63, height=157, index=0)
bitcoin-regtest-node-1  | 2024-12-17T00:25:15Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2024-12-17T00:38:03Z Potential stale tip detected, will try using extra outbound peer (last tip update: 2369 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T00:48:33Z Potential stale tip detected, will try using extra outbound peer (last tip update: 2999 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T00:59:03Z Potential stale tip detected, will try using extra outbound peer (last tip update: 3629 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T01:09:33Z Potential stale tip detected, will try using extra outbound peer (last tip update: 4259 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T01:20:03Z Potential stale tip detected, will try using extra outbound peer (last tip update: 4889 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T01:25:15Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2024-12-17T01:30:33Z Potential stale tip detected, will try using extra outbound peer (last tip update: 5519 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T01:41:03Z Potential stale tip detected, will try using extra outbound peer (last tip update: 6149 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T01:51:33Z Potential stale tip detected, will try using extra outbound peer (last tip update: 6779 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T02:02:03Z Potential stale tip detected, will try using extra outbound peer (last tip update: 7409 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T02:12:33Z Potential stale tip detected, will try using extra outbound peer (last tip update: 8039 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T02:23:03Z Potential stale tip detected, will try using extra outbound peer (last tip update: 8669 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T02:25:15Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2024-12-17T02:33:33Z Potential stale tip detected, will try using extra outbound peer (last tip update: 9299 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T02:44:04Z Potential stale tip detected, will try using extra outbound peer (last tip update: 9930 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T02:54:34Z Potential stale tip detected, will try using extra outbound peer (last tip update: 10560 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T03:05:04Z Potential stale tip detected, will try using extra outbound peer (last tip update: 11190 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T03:15:34Z Potential stale tip detected, will try using extra outbound peer (last tip update: 11820 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T03:25:15Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2024-12-17T03:26:04Z Potential stale tip detected, will try using extra outbound peer (last tip update: 12450 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T03:36:34Z Potential stale tip detected, will try using extra outbound peer (last tip update: 13080 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T03:47:04Z Potential stale tip detected, will try using extra outbound peer (last tip update: 13710 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T03:57:34Z Potential stale tip detected, will try using extra outbound peer (last tip update: 14340 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T04:08:04Z Potential stale tip detected, will try using extra outbound peer (last tip update: 14970 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T04:18:34Z Potential stale tip detected, will try using extra outbound peer (last tip update: 15600 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T04:25:15Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2024-12-17T04:29:05Z Potential stale tip detected, will try using extra outbound peer (last tip update: 16231 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T04:39:35Z Potential stale tip detected, will try using extra outbound peer (last tip update: 16861 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T04:50:05Z Potential stale tip detected, will try using extra outbound peer (last tip update: 17491 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T05:00:35Z Potential stale tip detected, will try using extra outbound peer (last tip update: 18121 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T05:11:05Z Potential stale tip detected, will try using extra outbound peer (last tip update: 18751 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T05:21:35Z Potential stale tip detected, will try using extra outbound peer (last tip update: 19381 seconds ago)
bitcoin-regtest-node-1  | 2024-12-17T05:25:15Z Flushed fee estimates to fee_estimates.dat.
bitcoin-regtest-node-1  | 2024-12-17T05:32:05Z Potential stale tip detected, will try using extra outbound peer (last tip update: 20011 seconds ago)
```