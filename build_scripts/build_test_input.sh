#!/bin/bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
INPUT="00001234deadbeef"
ELF="$ROOT_DIR/bitvmx_protocol/execution_files_example/test_input.elf"

printf "Running the emulator with input: %s\n" "$INPUT"
cargo run --manifest-path "$ROOT_DIR/bitvmx_protocol/BitVMX-CPU/Cargo.toml" \
  --release --bin emulator -- \
  execute --elf "$ELF" --debug --checkpoints --input "$INPUT" --input-as-little

printf "Generating ROM commitment...\n"
cargo run --manifest-path "$ROOT_DIR/bitvmx_protocol/BitVMX-CPU/Cargo.toml" \
  --release --bin emulator -- \
  generate-rom-commitment --elf "$ELF" --sections \
  >"$ROOT_DIR/bitvmx_protocol/execution_files/instruction_commitment_input.txt"

printf "Copying test_input.elf to required directories...\n"
cp "$ELF" "$ROOT_DIR/bitvmx_protocol/BitVMX-CPU/test_input.elf"
cp "$ELF" "$ROOT_DIR/bitvmx_protocol/BitVMX-CPU/docker-riscv32/riscv32/build/test_input.elf"
mkdir -p "$ROOT_DIR/bitvmx_protocol/execution_files"
cp -p "$ELF" "$ROOT_DIR/bitvmx_protocol/execution_files/test_input.elf"

printf "Generating instruction mapping...\n"
cargo run --manifest-path "$ROOT_DIR/bitvmx_protocol/BitVMX-CPU/Cargo.toml" \
  --release --bin emulator -- \
  instruction-mapping \
  >"$ROOT_DIR/bitvmx_protocol/execution_files/instruction_mapping.txt"

printf "Test input build completed successfully!\n"
