#!/bin/bash

# Install Starkli (works)
curl https://get.starkli.sh | sh
. "/home/whitehat/.starkli/env"
ln -sf $HOME/.starkli/bin/starkliup ~/.local/bin/starkliup
starkliup
ln -sf $HOME/.starkli/bin/starkli ~/.local/bin/starkli


# Instal scarb
asdf plugin add scarb
asdf install scarb latest
asdf global scarb latest


# Install starknet foundry
asdf plugin add starknet-foundry
asdf install starknet-foundry latest
asdf global starknet-foundry latest

# Include cairo extensions
code --install-extension starkware.cairo1
code --install-extension cairo*.vsix
