# Variables
YOSYS = yosys
DESIGN_NAME = your_design
SCRIPT_NAME = your_script.ys

# Default target
all: synthesize

# Synthesize the design
synthesize:
	yosys vsc-example/top.v -p synth_xilinx  -o top.json

pnr:
	nextpnr-nexus --json top.json --asc top.asc

# needs to be called from the terminal, not the makefile
source:
	source ~/bin/oss-cad-suite/environment