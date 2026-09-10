# ECE 128 Lab 1 – 8-to-1 Multiplexer

## Project Description

This project implements an 8-to-1 multiplexer (MUX) in Verilog using
structural, behavioral, and dataflow modeling. The design uses eight data
inputs, three select inputs, and one output. Each modeling method is
implemented and compared based on FPGA resource utilization.

## Simulation

1. Open the project in Vivado.
2. Add the desired 8-to-1 MUX module as a design source.
3. Add the corresponding testbench as a simulation source.
4. Set the testbench as the simulation top module.
5. Run Behavioral Simulation.
6. Verify from the waveform that each select input combination (000–111)
   produces the expected MUX output.

## FPGA Implementation

1. Select the Basys 3 as the target FPGA board.
2. Select one of the MUX implementations as the top module.
3. Add the Basys 3 constraints file and assign the MUX inputs/select lines
   to switches and the output to an LED.
4. Run Synthesis.
5. Run Implementation.
6. Generate the Bitstream.
7. Connect and power the Basys 3.
8. Open Hardware Manager and program the FPGA with the generated bitstream.
9. Test different switch/select combinations and verify that the LED output
   matches the expected MUX behavior.
