//! Interrupt handling for the D-Kernel.
//!
//! Sets up the Interrupt Descriptor Table (IDT) and handles
//! CPU exceptions, hardware IRQs, and software interrupts.

/// Initialize interrupt handling.
pub fn init() {
    // TODO: load IDT
    // TODO: configure PIC / APIC
    // TODO: enable interrupts
}

/// Handler for CPU double faults (unrecoverable).
pub extern "x86-interrupt" fn double_fault_handler() -> ! {
    loop {}
}
