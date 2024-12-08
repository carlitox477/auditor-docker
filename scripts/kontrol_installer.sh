#!/bin/bash

# Install nix
#sudo apt --assume-yes install nix-setup-systemd
#sh <(curl -L https://nixos.org/nix/install) --daemon
#echo "n y y y" # enter enter

#  $ sudo nix-daemon
#  $ nix-shell -p nix-info --run "nix-info -m"

#sudo mkdir -p /nix
#sudo chown -R $(whoami):$(whoami) /nix

# Install Kontrol
echo "y" | bash <(curl https://kframework.org/install)
sudo chown --recursive whitehat /nix
echo "y" | bash <(curl https://kframework.org/install)
. /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
kup install kontrol


# ln -sf /nix/var/nix/profiles/per-user/root/profile/bin ~/.local/bin/nix
# ln -sf /nix/var/nix/profiles/per-user/whitehat/profile/bin/kup  ~/.local/bin/kup
# kup install kontrol

# nix flake metadata github:runtimeverification/kontrol/release --json --extra-experimental-features "nix-command flakes" --refresh --show-trace --verbose

# scripts/kontrol_installer.sh

# source <(curl -L https://nixos.org/nix/install) --daemon --assume-yes
# github:runtimeverification/blockchain-k-plugin/c9264b240c00d1f6cc20e22aac83c94d1a499138
# llvm-backend/utils

# sudo apt --assume-yes install cmake 

# git clone https://github.com/runtimeverification/blockchain-k-plugin.git
# cd blockchain-k-plugin
# git submodule update --init --recursive
# make CXX=clang++-12 -j3 libff libcryptopp libsecp256k1
# make CXX=clang++-12 build -j3
# make test
# cd ..
# rm -rf blockchain-k-plugin


# sudo apt --assume-yes install      \
#  clang-15            \
#  cmake               \
#  flex                \
#  libboost-dev        \
#  libboost-test-dev   \
#  libfmt-dev          \
#  libgmp-dev          \
#  libjemalloc-dev     \
#  libmpfr-dev         \
#  libunwind-dev       \
#  libyaml-dev         \
#  lld-15              \
#  llvm-15-tools       \
#  maven               \
#  openjdk-17-jdk      \
#  pkg-config          \
#  xxd

# https://github.com/runtimeverification/llvm-backend/blob/master/INSTALL.md

#  #$ sudo ./nix-daemon
#  #$ nix-shell -p nix-info --run "nix-info -m"

#nix build github:runtimeverification/kontrol/acca16ffd6f4e693b7bda2dd8ca99eb335057dbe?narHash=sha256-602kaO3M814k0gJKol6E/SJl11oj7u8J7DI9sm3R8yU%3D#packages.aarch64-linux.kontrol --no-link --extra-experimental-features 'nix-command flakes' --refresh