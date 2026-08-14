# Synopsys Design Constraints (SDC) for 32-bit ALU
current_design alu_32bit_case

# Clock Definition (Target Frequency: 185.18 MHz -> 5.4 ns Period)
create_clock -name "clk" -period 5.400 -waveform {0.000 2.700}

# Input / Output Delays
set_input_delay -clock clk 1.0 [all_inputs]
set_output_delay -clock clk 1.0 [all_outputs]

# Driving Cell & Load Constraints
set_driving_cell -lib_cell INVX1 [all_inputs]
set_load -pin_load 0.05 [all_outputs]
