rm -rf zig-out &&\
zig build &&\
cp zig-out/bin/pkmn_guess ../bitvmx_protocol/BitVMX-CPU/pkmn_guess.elf &&\
cp zig-out/bin/pkmn_guess ../bitvmx_protocol/execution_files/pkmn_guess.elf &&\

cd ../bitvmx_protocol/BitVMX-CPU/ &&\

# run program
cargo run --release --bin emulator -- execute --elf pkmn_guess.elf --debug --checkpoints --input 00001234deadbeef --input-as-little &&\

# generate rom-commitment and instruction_mapping
cargo run -p emulator -- generate-rom-commitment --elf pkmn_guess.elf --sections > ../execution_files/pkmn_rom_commitment.txt &&\
cargo run -p emulator -- instruction-mapping > ../execution_files/instruction_mapping.txt

# cargo run --release --bin emulator -- execute --step 0 --list 20 --trace --limit 20 --input 00001234deadbeef --input-as-little --verify --debug
# cargo run --release --bin emulator -- execute --elf pkmn_guess.elf --checkpoints --input 00001234 --input-as-little --trace --list 20  
# todo extract shared paths into a variable
