# Dilauro AI-OS 🧠

> **An adaptive, AI-native operating system built in Rust — where the OS learns from you.**

[![Build](https://github.com/marcosinzaurralde95/dilauro-aios/actions/workflows/ci.yml/badge.svg)](https://github.com/marcosinzaurralde95/dilauro-aios/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Rust](https://img.shields.io/badge/rust-nightly-orange.svg)](https://www.rust-lang.org/)
[![Status: Alpha](https://img.shields.io/badge/status-alpha-red.svg)]()

---

## What is Dilauro AI-OS?

Dilauro AI-OS is a research operating system that integrates machine learning directly into its kernel, filesystem, and user environment. Instead of a static OS that serves all users the same way, Dilauro *adapts*: it learns usage patterns, optimizes resource allocation in real time, and delivers a unified experience across devices.

**Core philosophy:** _The OS should work for you — not the other way around._

---

## Key Components

| Component | Description | Status |
|-----------|-------------|--------|
| **D-Kernel** | Microkernel in Rust with ML-driven adaptive scheduler | 🔴 Planned |
| **DAM-Engine** | Dynamic Adaptive Memory — real-time resource optimization | 🔴 Planned |
| **SynapseFS** | Semantic filesystem with vector search and contextual metadata | 🔴 Planned |
| **Capsules** | WASI-based micro-container runtime for isolated apps | 🔴 Planned |
| **Entanglement** | Distributed computing protocol for seamless device hand-off | 🔴 Planned |
| **Liquid UI** | Adaptive, context-aware user interface layer | 🔴 Planned |
| **Neural Shield** | ML-powered heuristic security layer | 🔴 Planned |
| **HUT** | Universal Hardware Translator for cross-architecture binary compatibility | 🔴 Planned |

---

## Roadmap

```
Phase 1 — Genesis     (Months  1-12)  D-Kernel boot, adaptive scheduler, RPi/x86 demo
Phase 2 — Nebula      (Months 12-24)  Liquid UI, SynapseFS, Capsule SDK, first partners
Phase 3 — Flow        (Months 24-36)  Entanglement protocol, Neural Market beta, ARM mobile
Phase 4 — Titan       (Months 36-48)  Public launch, Enterprise tier, open-source release
```

---

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Kernel | Rust + microkernel architecture (seL4-inspired) |
| AI Runtime | ONNX / TFLite (no_std compatible) |
| UI | Flutter / Impeller |
| Filesystem | SQLite + FAISS vector index |
| App Containers | WebAssembly (WASI) |
| Networking | libp2p + mDNS |
| Security | eBPF + ML anomaly detection |

---

## Getting Started

### Prerequisites

```bash
# Install Rust nightly
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup toolchain install nightly
rustup override set nightly

# Add bare-metal target
rustup target add x86_64-unknown-none

# Install QEMU
# macOS:
brew install qemu
# Ubuntu/Debian:
sudo apt install qemu-system-x86
```

### Build & Run (QEMU)

```bash
git clone https://github.com/marcosinzaurralde95/dilauro-aios.git
cd dilauro-aios

# Build the kernel
cargo build --target x86_64-unknown-none

# Run in QEMU (once bootable image exists)
make qemu
```

> ⚠️ The kernel is in early development. A bootable image is not yet available.

---

## Project Structure

```
dilauro-aios/
├── kernel/              # D-Kernel — the core microkernel
│   ├── src/
│   │   ├── main.rs      # Entry point
│   │   ├── arch/        # Architecture-specific code (x86_64, ARM)
│   │   ├── scheduler/   # ML-driven adaptive scheduler
│   │   ├── memory/      # Memory management & allocator
│   │   └── interrupts/  # Interrupt handlers
│   └── Cargo.toml
├── dam-engine/          # Dynamic Adaptive Memory Engine
│   └── src/
├── synapse-fs/          # Semantic filesystem
│   └── src/
├── capsules/            # WASI micro-container runtime
│   └── src/
├── neural-shield/       # Security layer
│   └── src/
├── hut/                 # Hardware Universal Translator
│   └── src/
├── docs/                # Architecture diagrams, specs, RFCs
│   ├── architecture/
│   ├── rfcs/
│   └── specs/
├── scripts/             # Build, CI, and dev tooling scripts
├── tests/               # Integration and system tests
├── .github/
│   └── workflows/       # CI/CD pipelines
├── Makefile
├── rust-toolchain.toml
├── Cargo.toml           # Workspace root
└── README.md
```

---

## Contributing

Contributions are welcome! Please read [CONTRIBUTING.md](CONTRIBUTING.md) before submitting a PR.

Areas where help is most needed:
- Rust `no_std` kernel development
- ML inference on embedded/bare-metal targets
- WASM runtime integration
- Architecture documentation

---

## Resources

- 📖 [Writing an OS in Rust](https://os.phil-opp.com) — the best starting tutorial
- 📖 [OSDev Wiki](https://wiki.osdev.org) — low-level reference
- 📖 [Redox OS](https://gitlab.redox-os.org/redox-os/redox) — real-world OS in Rust
- 📖 [seL4 Microkernel](https://sel4.systems) — verified microkernel reference
- 📖 [OS: Three Easy Pieces](https://pages.cs.wisc.edu/~remzi/OSTEP/) — free OS fundamentals book

---

## License

MIT — see [LICENSE](LICENSE) for details.

---

<p align="center">
  <i>Built with Rust. Driven by AI. Designed for humans.</i>
</p>
