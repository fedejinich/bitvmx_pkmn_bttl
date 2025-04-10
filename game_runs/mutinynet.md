# Game Run Details (Mutinynet)

In this document you can find more details about the game run described in this [web article]().

## Setup

We explicitly make the protocol fail on the prover side at step number 10.

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

We do the setup with the following params:

```json
{
  "max_amount_of_steps": 51957,
  "amount_of_bits_wrong_step_search": 3,
  "funding_tx_id": "9cab69b958c71d2eb32fa02e0b6abe3ba9514337bb8061d7a801af4156cac72e",
  "funding_index": 1,
  "secret_origin_of_funds": "42ed401277fa63fe373acb3aec8ba24493e298e0543beffebdb12b399bacaabb",
  "prover_destination_address": "tb1q8sjmjzps7qycgt54kl5udeud0fy7kz0pq2h3ym",
  "prover_signature_private_key": "ca8320c097a8e44e0941a34fab65decb48bbb6e6a7b6d3aa8d98b142b9b7ad48",
  "prover_signature_public_key": "03a326a07da5c763687cc59fbccebdd95f1bc9eb51d8d34bd7d083ed69ccc591e0",
  "amount_of_input_words": 1
}
```

This run produced this setup_uuid:

```json
{
  "setup_uuid": "da7da765-99ff-4dee-9cb6-a4a4623018a6"
}
```

### Transactions

#### Prover Transactions

| Tx                               | Txid            | Raw Size   | Virtual Size  | Explorer |
|----------------------------------|------------------|------------|----------------|----------|
| Funding (setup)                  | `5926...732a`    | 203 b      | 121.25 vB      | [link](https://mutinynet.com/tx/59260293fb9b17118bd3c5eeecb1145c691dde1985b8deca4c9eff8a79b9732a) |
| Hash result revelation           | `2743...6d26`    | 8.8 KB     | 2.27 kvB       | [link](https://mutinynet.com/tx/2743a8be44602235e8d8b89459c23e1b9ec4fd3a865300be99d02b7fad9a6d26) |
| Search hash iteration 0          | `b84a...46ac`    | 46 KB      | 11.57 kvB      | [link](https://mutinynet.com/tx/b84a4e2f567d7da60000bffb16377a8b90535159c2c03bd12d41134e0e8446ac) |
| Search hash iteration 1          | `29db...7f73`    | 46.29 KB   | 11.64 kvB      | [link](https://mutinynet.com/tx/29dbfc12f4310ed6d38adb9431e296be18dc26dfa3d3eb492ad7618e4d047f73) |
| Search hash iteration 2          | `814d...7233`    | 46.29 KB   | 11.64 kvB      | [link](https://mutinynet.com/tx/814dd48f1214fb05d9626b7c1b7dfe3169f4920fd7b9901675f2c1c3f577d233) |
| Search hash iteration 3          | `c97a...fcdf`    | 46.3 KB    | 11.65 kvB      | [link](https://mutinynet.com/tx/c97abf94a593338465d0ba9a3a2d7eacb7dafc1535bd189657b05ab4c374fcdf) |
| Search hash iteration 4          | `b92b...a428`    | 46.3 KB    | 11.65 kvB      | [link](https://mutinynet.com/tx/b92bcf559cd824b20cf86b76ad58e8bfc366c11ff5ee2ae6dfdb20f9c8b9a428) |
| Search hash iteration 5          | `51f7...dbda`    | 46.28 KB   | 11.64 kvB      | [link](https://mutinynet.com/tx/51f7d446e7abfd090ea1ea3a7c082d7c3a2bcc5078c717f445d19a5460a5dbda) |
| Trace transaction                | `657b...1626`    | 12.8 KB    | 3.12 kvB       | [link](https://mutinynet.com/tx/657bc62335aee81b4313d0ef6b7b410eff3553a6209b71758d86f8f11fcb1626) |

#### Verifier Transactions

| Tx                               | Txid            | Raw Size   | Virtual Size | Explorer |
|----------------------------------|------------------|------------|---------------|----------|
| Trigger protocol                 | `e25a...9c84`    | 2.33 kb    | 653.75 vB     | [link](https://mutinynet.com/tx/e25a3fd6bdced8b37f7ba667f48f257ea2c4583f65c6584f7edef9f7d4f09c84) |
| Search choice iteration 0        | `c3fd...66c8`    | 514 b      | 199 vB        | [link](https://mutinynet.com/tx/c3fdc659598a6d157a65cbd70f8fb0205dd5c71398467415b2f82304823c66c8) |
| Search choice iteration 1        | `927a...47c9`    | 514 b      | 199 vB        | [link](https://mutinynet.com/tx/927ae2af9ebeff46b2eff6456ccca39b115f41ecd1fe4dcb75f7b8baf37947c9) |
| Search choice iteration 2        | `edc4...9017`    | 514 b      | 199 vB        | [link](https://mutinynet.com/tx/edc4ba3bad938117c9f21448bd1e845c1fdaeea27fac21857d7bb2c9700b9017) |
| Search choice iteration 3        | `f819...4dd1`    | 514 b      | 199 vB        | [link](https://mutinynet.com/tx/f8190f60b5795c3103357245311c4735eacdd770d9d49e9f98bd9d74d7874dd1) |
| Search choice iteration 4        | `a679...1d9a`    | 515 b      | 199.25 vB     | [link](https://mutinynet.com/tx/a67980a12f033d211c63c680be686b823c93484021a72ad30866e8023dc51d9a) |
| Search choice iteration 5        | `db76...972d`    | 515 b      | 199.25 vB     | [link](https://mutinynet.com/tx/db7688f9d4b62731ea863ca6cc1bd3a0663da62000ad9e11e2b76abf2f05972d) |
| Trigger execution challenge      | `4a1e...6019`    | 23.96 kb   | 6.06 kvB      | [link](https://mutinynet.com/tx/4a1ec3a97638b267a327927e0676358b2af6db6bb078d3d858feb4595c286019) |

#### Totals

| Player | Raw Bytes | Virtual Bytes |
|------------|---------------|------------------|
| **Prover**   | 326,186.5 B   | ~ 75,18 kvB    |
| **Verifier** | 30,401.16 B   | ~  7.86 kvB       |
| **TOTAL**    | **356,587.66 B** | **~ 83.04 kvB**     |

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
    "setup_uuid": "da7da765-99ff-4dee-9cb6-a4a4623018a6"
  }
```

## Prover Logs

```bash
  ✔ Container bitvmx_protocol-prover-backend-1  Created     0.0s
  WARN[0000] could not start menu, an error occurred while starting.
  Attaching to prover-backend-1
  prover-backend-1  | INFO:     Started server process [1]
  prover-backend-1  | INFO:     Waiting for application startup.
  prover-backend-1  | INFO:     Application startup complete.
  prover-backend-1  | INFO:     Uvicorn running on http://0.0.0.0:80 (Press CTRL+C to quit)
  prover-backend-1  | INFO:     192.168.65.1:51868 - "GET /docs HTTP/1.1" 200 OK
  prover-backend-1  | INFO:     192.168.65.1:51868 - "GET /openapi.json HTTP/1.1" 200 OK
  prover-backend-1  | Public keys generated: 0.5041065216064453
  prover-backend-1  | Funding tx: 9cab69b958c71d2eb32fa02e0b6abe3ba9514337bb8061d7a801af4156cac72e
  prover-backend-1  | Verifier public keys generated: 4104.177073717117
  prover-backend-1  | Bitcoin scripts generated: 4110.385786294937
  prover-backend-1  | Call parallel hashed merkle root
  prover-backend-1  | End of parallel hashed merkle root in 3.707600172360738 minutes.
  prover-backend-1  | Transactions built: 8204.63442158699
  prover-backend-1  | Signatures generated: 8221.019044399261
  prover-backend-1  | Verifier signatures sent: 8246.312482118607
  prover-backend-1  | Funding transaction: 59260293fb9b17118bd3c5eeecb1145c691dde1985b8deca4c9eff8a79b9732a
  prover-backend-1  | INFO:     192.168.65.1:39056 - "POST /api/v1/setup HTTP/1.1" 200 OK
  prover-backend-1  | INFO:     192.168.65.1:28235 - "POST /api/v1/input HTTP/1.1" 200 OK
  prover-backend-1  | pkmn_bttl.elf
  prover-backend-1  | ./execution_files/pkmn_rom_commitment.txt
  prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--elf', '../../BitVMX-CPU/docker-riscv32/riscv32/build/pkmn_bttl.elf', '--debug', '--checkpoints', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
  prover-backend-1  | Executing command for list 51948 with step 0 and limit 51948 with base 0 index 51947
  prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51948', '--trace', '--limit', '51948', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
  prover-backend-1  | Done executing command
  prover-backend-1  | d80ace8d2ae584baf0c842d1821431355e4419d61e16da67cb4fec2e1a2a9266
  prover-backend-1  | Hash result revelation transaction: 2743a8be44602235e8d8b89459c23e1b9ec4fd3a865300be99d02b7fad9a6d26
  prover-backend-1  | INFO:     192.168.65.1:52676 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
  prover-backend-1  | Search hash iteration transaction 0: b84a4e2f567d7da60000bffb16377a8b90535159c2c03bd12d41134e0e8446ac
  prover-backend-1  | INFO:     192.168.65.1:61032 - "POST /api/v1/next_step HTTP/1.1" 200 OK
  qprover-backend-1  | Executing command for list 4096 with step 0 and limit 4096 with base 0 index 4095
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
  prover-backend-1  | Search hash iteration transaction 1: 29dbfc12f4310ed6d38adb9431e296be18dc26dfa3d3eb492ad7618e4d047f73
  prover-backend-1  | INFO:     192.168.65.1:19209 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
  prover-backend-1  | Search hash iteration transaction 2: 814dd48f1214fb05d9626b7c1b7dfe3169f4920fd7b9901675f2c1c3f577d233
  prover-backend-1  | INFO:     192.168.65.1:36419 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
  prover-backend-1  | Search hash iteration transaction 3: c97abf94a593338465d0ba9a3a2d7eacb7dafc1535bd189657b05ab4c374fcdf
  prover-backend-1  | INFO:     192.168.65.1:58401 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
  prover-backend-1  | Search hash iteration transaction 4: b92bcf559cd824b20cf86b76ad58e8bfc366c11ff5ee2ae6dfdb20f9c8b9a428
  prover-backend-1  | INFO:     192.168.65.1:18599 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
  prover-backend-1  | Search hash iteration transaction 5: 51f7d446e7abfd090ea1ea3a7c082d7c3a2bcc5078c717f445d19a5460a5dbda
  prover-backend-1  | INFO:     192.168.65.1:65258 - "POST /api/v1/next_step HTTP/1.1" 200 OK
  prover-backend-1  | First wrong step: 9
  prover-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
  prover-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little', '--fail-execute', '10']
  prover-backend-1  | Done executing command
  prover-backend-1  | Trace transaction: 657bc62335aee81b4313d0ef6b7b410eff3553a6209b71758d86f8f11fcb1626
  prover-backend-1  | INFO:     192.168.65.1:47634 - "POST /api/v1/next_step HTTP/1.1" 200 OK
  ^R
  prover-backend-1  | Call parallel hashed merkle root
  prover-backend-1  | End of parallel hashed merkle root in 3.712724181016286 minutes.
  prover-backend-1  | Instruction index: 8001623c00
  prover-backend-1  | Start control block computation
  prover-backend-1  | End of control block computation in 220.58062767982483 seconds.
  prover-backend-1  | INFO:     192.168.65.1:16721 - "POST /api/v1/next_step HTTP/1.1" 500 Internal Server Error
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
  prover-backend-1  |   File "/bitvmx-backend/blockchain_query_services/services/mutinynet_api/broadcast_transaction_service.py", line 27, in __call__
  prover-backend-1  |     raise Exception(response.text)
  prover-backend-1  | Exception: sendrawtransaction RPC error: {"code":-26,"message":"mandatory-script-verify-flag-failed (Script failed an OP_EQUALVERIFY operation)"}
```

## Verifier Logs

```bash
  ➜  bitvmx_protocol git:(setup_script) ✗ docker compose up verifier-backend
  [+] Running 1/1
  ✔ Container bitvmx_protocol-verifier-backend-1  Created   0.0s
  WARN[0003] could not start menu, an error occurred while starting.
  Attaching to verifier-backend-1
  verifier-backend-1  | INFO:     Started server process [1]
  verifier-backend-1  | INFO:     Waiting for application startup.
  verifier-backend-1  | INFO:     Application startup complete.
  verifier-backend-1  | INFO:     Uvicorn running on http://0.0.0.0:80 (Press CTRL+C to quit)
  nverifier-backend-1  | fede - setup fund from verifier
  verifier-backend-1  | Init setup for id da7da765-99ff-4dee-9cb6-a4a4623018a6
  verifier-backend-1  | INFO:     192.168.65.1:34972 - "POST /api/v1/setup HTTP/1.1" 200 OK
  verifier-backend-1  | Call generate public keys: 0.003195047378540039
  verifier-backend-1  | Call generate scripts: 0.007977962493896484
  verifier-backend-1  | Call compute trigger trace challenge address: 6.156073331832886
  verifier-backend-1  | Call transactions time: 3721.8597736358643
  verifier-backend-1  | Call parallel hashed merkle root
  verifier-backend-1  | End of parallel hashed merkle root in 3.766665597756704 minutes.
  verifier-backend-1  | Call create protocol setup properties time: 4097.136417388916
  verifier-backend-1  | Public keys controller total time: 4103.412282466888
  verifier-backend-1  | INFO:     192.168.65.1:54230 - "POST /api/v1/public_keys HTTP/1.1" 200 OK
  verifier-backend-1  | Signatures controller total time: 25.033560037612915
  verifier-backend-1  | INFO:     192.168.65.1:23382 - "POST /api/v1/signatures HTTP/1.1" 200 OK
  verifier-backend-1  | Processing new step
  verifier-backend-1  | pkmn_bttl.elf
  verifier-backend-1  | ./execution_files/pkmn_rom_commitment.txt
  verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--elf', '../../BitVMX-CPU/docker-riscv32/riscv32/build/pkmn_bttl.elf', '--debug', '--checkpoints', '--input', '00001234', '--input-as-little']
  verifier-backend-1  | Executing command for list 51948 with step 0 and limit 51948 with base 0 index 51947
  verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '51948', '--trace', '--limit', '51948', '--input', '00001234', '--input-as-little']
  verifier-backend-1  | Done executing command
  verifier-backend-1  | Trigger protocol transaction: e25a3fd6bdced8b37f7ba667f48f257ea2c4583f65c6584f7edef9f7d4f09c84
  verifier-backend-1  | INFO:     192.168.65.1:64271 - "POST /api/v1/next_step HTTP/1.1" 200 OK
  verifier-backend-1  | Processing new step
  verifier-backend-1  | Executing command for list 32768 with step 0 and limit 32768 with base 0 index 32767
  verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '32768', '--trace', '--limit', '32768', '--input', '00001234', '--input-as-little']
  verifier-backend-1  | Done executing command
  verifier-backend-1  | Search choice iteration transaction 0: c3fdc659598a6d157a65cbd70f8fb0205dd5c71398467415b2f82304823c66c8
  verifier-backend-1  | INFO:     192.168.65.1:55174 - "POST /api/v1/next_step HTTP/1.1" 200 OK
  verifier-backend-1  | Processing new step
  verifier-backend-1  | Executing command for list 4096 with step 0 and limit 4096 with base 0 index 4095
  verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '4096', '--trace', '--limit', '4096', '--input', '00001234', '--input-as-little']
  verifier-backend-1  | Done executing command
  verifier-backend-1  | Search choice iteration transaction 1: 927ae2af9ebeff46b2eff6456ccca39b115f41ecd1fe4dcb75f7b8baf37947c9
  verifier-backend-1  | INFO:     192.168.65.1:30840 - "POST /api/v1/next_step HTTP/1.1" 200 OK
  verifier-backend-1  | Processing new step
  verifier-backend-1  | Executing command for list 512 with step 0 and limit 512 with base 0 index 511
  verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '512', '--trace', '--limit', '512', '--input', '00001234', '--input-as-little']
  verifier-backend-1  | Done executing command
  verifier-backend-1  | Search choice iteration transaction 2: edc4ba3bad938117c9f21448bd1e845c1fdaeea27fac21857d7bb2c9700b9017
  verifier-backend-1  | INFO:     192.168.65.1:33591 - "POST /api/v1/next_step HTTP/1.1" 200 OK
  verifier-backend-1  | Processing new step
  verifier-backend-1  | Executing command for list 64 with step 0 and limit 64 with base 0 index 63
  verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '64', '--trace', '--limit', '64', '--input', '00001234', '--input-as-little']
  verifier-backend-1  | Done executing command
  verifier-backend-1  | Search choice iteration transaction 3: f8190f60b5795c3103357245311c4735eacdd770d9d49e9f98bd9d74d7874dd1
  verifier-backend-1  | INFO:     192.168.65.1:54160 - "POST /api/v1/next_step HTTP/1.1" 200 OK
  verifier-backend-1  | Processing new step
  verifier-backend-1  | Executing command for list 8 with step 0 and limit 8 with base 0 index 7
  verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '8', '--trace', '--limit', '8', '--input', '00001234', '--input-as-little']
  verifier-backend-1  | Done executing command
  verifier-backend-1  | Executing command for list 16 with step 0 and limit 16 with base 0 index 15
  verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '16', '--trace', '--limit', '16', '--input', '00001234', '--input-as-little']
  verifier-backend-1  | Done executing command
  verifier-backend-1  | Search choice iteration transaction 4: a67980a12f033d211c63c680be686b823c93484021a72ad30866e8023dc51d9a
  verifier-backend-1  | INFO:     192.168.65.1:44172 - "POST /api/v1/next_step HTTP/1.1" 200 OK
  verifier-backend-1  | Processing new step
  verifier-backend-1  | Executing command for list 9 with step 0 and limit 9 with base 0 index 8
  verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '9', '--trace', '--limit', '9', '--input', '00001234', '--input-as-little']
  verifier-backend-1  | Done executing command
  verifier-backend-1  | Executing command for list 10 with step 0 and limit 10 with base 0 index 9
  verifier-backend-1  | ['cargo', 'run', '--manifest-path', '../../BitVMX-CPU/Cargo.toml', '--release', '--bin', 'emulator', '--', 'execute', '--step', '0', '--list', '10', '--trace', '--limit', '10', '--input', '00001234', '--input-as-little']
  verifier-backend-1  | Done executing command
  verifier-backend-1  | Search choice iteration transaction 5: db7688f9d4b62731ea863ca6cc1bd3a0663da62000ad9e11e2b76abf2f05972d
  verifier-backend-1  | INFO:     192.168.65.1:45319 - "POST /api/v1/next_step HTTP/1.1" 200 OK
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
  verifier-backend-1  | Trigger execution challenge transaction: 4a1ec3a97638b267a327927e0676358b2af6db6bb078d3d858feb4595c286019
  verifier-backend-1  | INFO:     192.168.65.1:31405 - "POST /api/v1/next_step HTTP/1.1" 200 OK
```
