#!/bin/bash

# Exit the script if any command fails
set -e

NAME="pkmn_guess"

# Define paths
BUILD_DIR="zig-out"
OUTPUT_FILE=$BUILD_DIR"/bin/"$NAME
BITVMX_CPU_DIR="../bitvmx_protocol/BitVMX-CPU"
ELF_FILE_NAME=$NAME".elf"

# Clean previous build
echo "Cleaning previous build..."
rm -rf $BUILD_DIR

# Build the project
echo "Building project..."
zig build

# Copy the ELF file to the required directories
echo "Copying $ELF_FILE_NAME to target directories..."
cp $OUTPUT_FILE $BITVMX_CPU_DIR/$ELF_FILE_NAME
cp $OUTPUT_FILE "../bitvmx_protocol/execution_files/"$ELF_FILE_NAME

# Change to the BitVMX-CPU directory
cd $BITVMX_CPU_DIR

# Run the program
echo "Running the program..."
cargo run --release --bin emulator -- execute --elf $ELF_FILE_NAME --debug --checkpoints --input 00001234deadbeef --input-as-little

# Generate ROM commitment
echo "Generating ROM commitment..."
cargo run --release --bin emulator -- generate-rom-commitment --elf $ELF_FILE_NAME --sections > ../execution_files/pkmn_rom_commitment.txt

# Generate instruction mapping
echo "Generating instruction mapping..."
cargo run --release --bin emulator -- instruction-mapping > ../execution_files/instruction_mapping.txt

echo "Build completed successfully!"

