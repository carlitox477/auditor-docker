#!/bin/bash

# Download gambit installer
git clone https://github.com/Certora/gambit.git

# Install gambit
cd gambit
cargo install --path .

# Remove gambit installer repo
cd ..
rm -rf gambit
