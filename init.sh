#!/bin/bash

set -e # exit the script if any command fails

echo "Initializing repository..."

echo "Cloning submodules..."
git submodule update --init --recursive
cd bitvmx_protocol
git checkout bitvmx_pkmn_bttl

echo "Creating necesary folders..."
mkdir execution_files

echo "Renaming .env files"
mv .example_env_common .env_common
mv .example_env_prover .env_prover
mv .example_env_verifier .env_verifier

cd ..

echo "Repository initialized successfully!"

