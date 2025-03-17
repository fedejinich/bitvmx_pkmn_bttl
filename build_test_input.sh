#!/bin/bash

set -e # exit the script if any command fails

INPUT=00001234deadbeef

cd ./bitvmx_protocol/BitVMX-CPU/

echo "Running the program..."
cargo run --release --bin emulator -- execute --elf ../execution_files_example/test_input.elf --debug --checkpoints --input $INPUT --input-as-little

echo "Generating ROM commitment..."
cargo run --release --bin emulator -- generate-rom-commitment --elf ../execution_files_example/test_input.elf --sections >../execution_files/instruction_commitment_input.txt

cd ../../

echo "Copying test_input to CPU directories..."
cp ./bitvmx_protocol/execution_files_example/test_input.elf ./bitvmx_protocol/BitVMX-CPU
cp ./bitvmx_protocol/execution_files_example/test_input.elf ./bitvmx_protocol/BitVMX-CPU/docker-riscv32/riscv32/build/test_input.elf
mkdir -p "./bitvmx_protocol/execution_files" && cp -p ./bitvmx_protocol/execution_files_example/test_input.elf "./bitvmx_protocol/execution_files/test_input.elf"

cd "./bitvmx_protocol/BitVMX-CPU/"

echo "Generating instruction mapping..."
cargo run --release --bin emulator -- instruction-mapping >../execution_files/instruction_mapping.txt

echo "Build completed successfully!"
