# 74x694 IC FPGA Replication

A Verilog-based functional replication of the 74x694 (4-bit decimal latch/counter/multiplexer with synchronous and asynchronous resets), implemented and tested on a Xilinx Spartan-7 FPGA.

## Features
- Sequential logic with asynchronous and synchronous resets
- Multiplexed data routing
- Testbench-based functional simulation
- FPGA implementation using clock-divider logic and XDC constraints

## Tools & Technologies
- Verilog HDL
- Xilinx Vivado
- Xilinx Spartan-7 FPGA

## Project Files
- `RTL/` — Verilog design and clock divider
- `Testbench/` — Functional testbench
- `Constraints/` — FPGA pin and I/O constraints
- `Images/` — Simulation waveforms and hardware implementation
