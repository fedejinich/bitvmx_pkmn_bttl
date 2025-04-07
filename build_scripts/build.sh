#!/bin/bash

set -euo pipefail

# root is the previous folder
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

printf "Cleaning previous build...\n"
rm -rf "$ROOT_DIR/pkmn_bttl/zig-out"

printf "Building project...\n"
(cd "$ROOT_DIR/pkmn_bttl" && zig build)

printf "Copying ELF file to necessary locations...\n"
ELF="$ROOT_DIR/pkmn_bttl/zig-out/bin/pkmn_bttl"
cp "$ELF" "$ROOT_DIR/bitvmx_protocol/BitVMX-CPU/pkmn_bttl.elf"
cp "$ELF" "$ROOT_DIR/bitvmx_protocol/BitVMX-CPU/docker-riscv32/riscv32/build/pkmn_bttl.elf"
cp "$ELF" "$ROOT_DIR/pkmn_bttl/pkmn_bttl.elf"
mkdir -p "$ROOT_DIR/bitvmx_protocol/execution_files"
cp -p "$ELF" "$ROOT_DIR/bitvmx_protocol/execution_files/pkmn_bttl.elf"

printf "Running the emulator with input: 00001234\n"
cargo run --manifest-path "$ROOT_DIR/bitvmx_protocol/BitVMX-CPU/Cargo.toml" \
  --release --bin emulator -- \
  execute --elf "$ELF" --debug --checkpoints --input 00001234 --input-as-little

printf "Generating ROM commitment...\n"
cargo run --manifest-path "$ROOT_DIR/bitvmx_protocol/BitVMX-CPU/Cargo.toml" \
  --release --bin emulator -- \
  generate-rom-commitment --elf "$ELF" --sections \
  >"$ROOT_DIR/bitvmx_protocol/execution_files/pkmn_rom_commitment.txt"

printf "Generating instruction mapping...\n"
cargo run --manifest-path "$ROOT_DIR/bitvmx_protocol/BitVMX-CPU/Cargo.toml" \
  --release --bin emulator -- \
  instruction-mapping \
  >"$ROOT_DIR/bitvmx_protocol/execution_files/instruction_mapping.txt"

printf "Build completed successfully!\n"
