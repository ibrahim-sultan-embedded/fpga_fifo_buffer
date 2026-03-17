# FPGA FIFO Buffer

A synchronous FIFO buffer implemented in Verilog.

## Features
- Parameterized data width and depth
- Write and read operations
- Full and empty flags
- Verified using simulation

## Simulation
The FIFO correctly stores and outputs data in FIFO order:

Input:  A1 → B2 → C3  
Output: A1 → B2 → C3
