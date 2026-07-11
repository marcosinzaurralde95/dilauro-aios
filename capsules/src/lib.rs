//! Capsules — WASI Micro-Container Runtime
//!
//! Lightweight, capability-based isolation for Dilauro applications.
//! Each app runs as a WebAssembly module (WASI) with minimal kernel surface.
//!
//! # Planned Features
//! - Load and execute WASM modules with WASI syscall translation
//! - Capability-based permission model (no ambient authority)
//! - Hot-swap and live-update of running capsules
//! - Cross-device capsule migration via Entanglement protocol
