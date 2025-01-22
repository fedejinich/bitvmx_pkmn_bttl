# BITVMX_PKMN_BTTL

![Alt Text](./img.jpg)

This project is a simple Bitcoin-Pokemon game created to showcase BitVMX, a protocol that enables verifying arbitrary computations on Bitcoin. In this game, players choose a Pokemon to battle against Charizard. If their Pokemon wins, they can validate the result using BitVMX and claim locked Bitcoin funds.

You can read more about the game in the [following article]() and more about BitVMX on the following [link](https://bitvmx.org/).

## Requirements

- Zig
- Rust
- Docker
- Clone all the submodules
- Python (optional)

NOTE: This project requires to clone all the submodules. `bitvmx_protocol` submodule should be pointing to `bitvmx_pkmn_bttl` branch.

## Structure

```bash
.
├── bitvmx_protocol # BitVMX (submodule)
├── engine # Pokemon battle enegine (submodule)
├── pkmn_bttl # The game
├── README.md
├── build.sh
├── img.jpg
└── game_run_details.md # Details about the game-run explained in the article
```

## Run

Running the game involves setting up a BitVMX environment and acting as a prover that tries to compute the right output. To do that you can follow the next steps:
1. Run the initialization script `init.sh`
2. Specify the selected input at `build.sh` INPUT
3. Build the Pokemon program by running `build.sh`
4. Last, but definitely not least, validate the output with BitVMX as explained in the [article]() :)

NOTE: You can modify `bitvmx_protocol/../execution_trace_generation_service.py` to try different challenge scenarios.
