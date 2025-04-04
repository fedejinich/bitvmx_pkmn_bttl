#!/bin/bash

# exit the script if any command fails
set -e

INPUT=00001234 # set the input here

NAME="pkmn_bttl"

# todo(fede) improve directories references
BUILD_DIR="zig-out"
OUTPUT_FILE=$BUILD_DIR"/bin/"$NAME
BITVMX_CPU_DIR="../bitvmx_protocol/BitVMX-CPU"
ELF_FILE_NAME=$NAME".elf"

cd $NAME

echo "Cleaning previous build..."
rm -rf $BUILD_DIR

echo "Building project..."
zig build

echo "Copying $ELF_FILE_NAME to CPU directories..."
cp $OUTPUT_FILE $BITVMX_CPU_DIR/$ELF_FILE_NAME
cp $OUTPUT_FILE $BITVMX_CPU_DIR/docker-riscv32/riscv32/build/$ELF_FILE_NAME
cp $OUTPUT_FILE "../pkmn_bttl/"$ELF_FILE_NAME
mkdir -p "../bitvmx_protocol/execution_files" && cp -p $OUTPUT_FILE "../bitvmx_protocol/execution_files/"$ELF_FILE_NAME

echo "Running the program..."
cargo run --manifest-path ../bitvmx_protocol/BitVMX-CPU/Cargo.toml --release --bin emulator -- execute --elf $ELF_FILE_NAME --debug --checkpoints --input $INPUT --input-as-little

echo "Generating ROM commitment..."
cargo run --manifest-path ../bitvmx_protocol/BitVMX-CPU/Cargo.toml --release --bin emulator -- generate-rom-commitment --elf $ELF_FILE_NAME --sections >../bitvmx_protocol/execution_files/pkmn_rom_commitment.txt

echo "Generating instruction mapping..."
cargo run --manifest-path ../bitvmx_protocol/BitVMX-CPU/Cargo.toml --release --bin emulator -- instruction-mapping >../bitvmx_protocol/execution_files/instruction_mapping.txt

echo "Build completed successfully!"
