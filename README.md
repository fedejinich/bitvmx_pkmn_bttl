# PKMN_BTTL

![Alt Text](./img.jpg)

This project is a simple Bitcoin-Pokemon game created to showcase BitVMX, a protocol that enables verifying arbitrary computations on Bitcoin. In this game, players choose a Pokemon to battle against Charizard. If their Pokemon wins, they can validate the result using BitVMX and claim locked Bitcoin funds.

You can read more about the game in the [following article](https://blog.rootstock.io/noticia/pkmn_bttl-a-pokemon-battle-game-written-in-zig-and-executed-with-bitvmx/) and more about BitVMX [here](https://bitvmx.org/).

---

NOTE: the [first article](https://blog.rootstock.io/noticia/pkmn_bttl-a-pokemon-battle-game-written-in-zig-and-executed-with-bitvmx/) is based on the `regtest` branch, `master` branch corresponds to the second part of the article where we run the game on mutinynet.

## Requirements

- Zig 0.13.0
- Rust
- Docker
- Clone all the submodules
  - `bitvmx_protocol` submodule must point `bitvmx_pkmn_bttl` branch
- Python (optional)

## Structure

```bash
.
├── bitvmx_protocol/ # BitVMX (submodule)
├── engine/ # Pokemon battle engine (submodule)
├── game_runs/ # Detailed data about game runs in each environment (mutinynet and regtest)
├── pkmn_bttl/ # The game
├── build.sh # Build script for 'pkmn_bttl'
├── build_test_input.sh # Build script for 'test_input' (an out of scope and reduced BitVMX program example)
├── init.sh # Initialization script
├── img.jpg
└── README.md
```

## Run

Running the game involves setting up a BitVMX environment and acting as a prover that tries to compute the right output. To do that you can follow the next steps:

- Run the initialization script `init.sh`

```bash
./init.sh
```

- Specify the selected input at `build.sh` INPUT and build the Pokemon program by running the build script
  - This script validates that the program succeeds (using the right input) and moves it into the required folders for later verification.

```bash
./build.sh
```

- Last, but definitely not least, setup a BitVMX environment and validate the proof (the program with the right input) as explained in the [article](https://blog.rootstock.io/noticia/pkmn_bttl-a-pokemon-battle-game-written-in-zig-and-executed-with-bitvmx/) :)
  - Start from "Running on Bitcoin - Step 5. Start services"
  - You can modify `bitvmx_protocol/../execution_trace_generation_service.py` to try different challenge scenarios.
