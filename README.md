# BITVMX_PKMN_BTTL
![Alt Text](./img.jpg)

BITVMX_PKMN_BTTL is a Pokemon battling game where the prover needs to pick the right Pokemon to win the battle and execute it on Bitcoin using the BitVMX protocol.

You can read more about this game in the [following article]().

## Requirements

- Zig
- Rust
- Docker
- Clone all the submodules
- Python (optional)

To clone all the submodules run at the PROJECT_ROOT:

```
git submodule update --init --recursive
```

## Structure
```bash
.
├── bitvmx_protocol # BitVMX (submodule)
├── engine # Pokemon battle enegine (submodule)
├── pkmn_bttl # The game
├── README.md
├── build.sh
├── img.jpg
└── pkmn_bttl_details.md # Details about the example battle that is explained in the article
```
## Playing the game 
To play the pokemon game follow this steps:
1. Rename the `bitvmx_protocol/.example_env_*` files into `bitvmx_protocol/.env_*`
1. Specify the input at `build.sh` INPUT
2. Run `build.sh` to build the Pokemon program.
3. Last, but definitely not least, verify the program on Bitcoin as explained in the [article]() or in the BitVMX repository.
