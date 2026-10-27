# Structural NOR Gate Verilog Simulation

A basic digital logic project implementing a 2-input NOR gate circuit, simulated using Icarus Verilog (`iverilog`) and verified visually using GTKWave on Ubuntu.

## NOR Gate Truth Table
A NOR gate outputs a high signal (`1`) only when both inputs are low (`0`).

| Input 1 (`in1`) | Input 2 (`in2`) | Output (`out`) |
| :---: | :---: | :---: |
| 0 | 0 | **1** |
| 0 | 1 | **0** |
| 1 | 0 | **0** |
| 1 | 1 | **0** |

## Files In This Repository
* `simple_nor.v` - Primary Verilog source design file implementing the boolean inversion function (`~ ( in1 | in2 )`).
* `tb_simple_nor.v` - Testbench environment driving discrete combinations to systematically verify the full truth table.

## How to Run & Verify Locally
Ensure you have `iverilog` and `gtkwave` installed on your Linux system. Run the following commands from this directory:

```bash
# Compile the design module and testbench together
iverilog -o design_simple_nor simple_nor.v tb_simple_nor.v

# Execute the simulation engine to generate waveform logs
vvp design_simple_nor

# Open the logic analyzer display window
gtkwave sim_output.vcd
```
