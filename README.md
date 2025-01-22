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

To clone all the submodules run at the PROJECT_ROOT:

```bash
git submodule update --init --recursive && cd bitvmx_protocol && git checkout bitvmx_pkmn_bttl && cd ..
```

NOTE: `bitvmx_protocol` submodule should be pointing to the `bitvmx_pkmn_bttl` branch.

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
1. Rename the `bitvmx_protocol/.example_env_*` files into `bitvmx_protocol/.env_*`
1. Specify the selected input at `build.sh` INPUT
3. Build the Pokemon program with `build.sh`
4. Last, but definitely not least, validate the output with BitVMX as explained in the [article]() :)

NOTE: You can modify `bitvmx_protocol/../execution_trace_generation_service.py` to try different challenge scenarios.
