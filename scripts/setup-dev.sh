#!/usr/bin/env bash
# setup-dev.sh — Set up the Dilauro AI-OS development environment
set -euo pipefail

echo "🧠 Dilauro AI-OS — Dev Environment Setup"
echo "=========================================="

# Install Rust nightly
if ! command -v rustup &>/dev/null; then
    echo "→ Installing rustup..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source "$HOME/.cargo/env"
else
    echo "✓ rustup already installed"
fi

echo "→ Installing Rust nightly..."
rustup toolchain install nightly
rustup override set nightly
rustup target add x86_64-unknown-none
rustup component add rust-src llvm-tools-preview rustfmt clippy

# Install QEMU
if ! command -v qemu-system-x86_64 &>/dev/null; then
    echo "→ Installing QEMU..."
    if [[ "$OSTYPE" == "darwin"* ]]; then
        brew install qemu
    elif command -v apt &>/dev/null; then
        sudo apt install -y qemu-system-x86
    else
        echo "⚠️  Please install QEMU manually: https://www.qemu.org/download/"
    fi
else
    echo "✓ QEMU already installed"
fi

echo ""
echo "✅ Setup complete! Try: cargo build -p dilauro-kernel --target x86_64-unknown-none"
