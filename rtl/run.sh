#!/bin/bash
# RTL Simulation script using Icarus Verilog / ModelSim / VCS
echo "Compiling 32-bit ALU RTL and Testbench..."
iverilog -o alu_tb.vvp rtl/alu_32bit_case.v rtl/alu_32bit_case_tb.v
echo "Running Simulation..."
vvp alu_tb.vvp
echo "Simulation Finished."
