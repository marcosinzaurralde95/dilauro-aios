//! Dilauro AI-OS — D-Kernel entry point
//!
//! This is the bare-metal entry point for the Dilauro kernel.
//! It runs in a `no_std` environment with no operating system beneath it.

#![no_std]
#![no_main]
#![feature(custom_test_frameworks)]

mod arch;
mod interrupts;
mod memory;
mod scheduler;

use core::panic::PanicInfo;

/// Kernel entry point — called by the bootloader.
#[no_mangle]
pub extern "C" fn _start() -> ! {
    // TODO: initialize VGA output
    // TODO: initialize GDT, IDT
    // TODO: initialize memory allocator
    // TODO: start adaptive scheduler

    loop {}
}

/// Panic handler — required for `no_std`.
#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}
