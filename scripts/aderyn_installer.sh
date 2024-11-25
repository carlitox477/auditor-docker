#!/bin/bash

# Execute if cyfrinup is not in the PATH
if ! grep -qxF 'export PATH="$PATH:/home/whitehat/.cyfrin/bin"' ~/.bashrc; then
    # Install cyfrinup
    source <(curl -L https://raw.githubusercontent.com/Cyfrin/aderyn/dev/cyfrinup/install)
    # create symbolic link for cyfrinup
    ln -sf $HOME/.cyfrin/bin/cyfrinup ~/.local/bin/cyfrinup
fi

# Install aderyn
cyfrinup

# Create symbolic links
ln -sf $HOME/.cyfrin/bin/aderyn ~/.local/bin/aderyn