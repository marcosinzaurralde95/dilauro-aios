# Dilauro AI-OS — Makefile

KERNEL_TARGET := x86_64-unknown-none
QEMU          := qemu-system-x86_64
QEMU_FLAGS    := -nographic -serial mon:stdio -bios /usr/share/ovmf/OVMF.fd

.PHONY: all build check test clippy fmt qemu clean help

all: build

## Build the kernel and all components
build:
	cargo build --target $(KERNEL_TARGET) -p dilauro-kernel

## Build in release mode
release:
	cargo build --target $(KERNEL_TARGET) -p dilauro-kernel --release

## Run all tests (host-side unit tests)
test:
	cargo test --workspace

## Run clippy linter
clippy:
	cargo clippy --workspace -- -D warnings

## Run rustfmt
fmt:
	cargo fmt --all

## Check formatting without writing
fmt-check:
	cargo fmt --all -- --check

## Run the kernel in QEMU (requires bootable image)
qemu: build
	@echo "Launching Dilauro AI-OS in QEMU..."
	$(QEMU) $(QEMU_FLAGS) -kernel target/$(KERNEL_TARGET)/debug/dilauro-kernel

## Clean build artifacts
clean:
	cargo clean

## Show this help
help:
	@echo ""
	@echo "  Dilauro AI-OS — available targets:"
	@grep -E '^## ' Makefile | sed 's/## /    /'
	@echo ""
