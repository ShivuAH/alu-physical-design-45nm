# Cadence Innovus Master PnR Script for 32-bit ALU
# Executes full Netlist-to-GDSII flow sequentially

puts "--- STEP 1: Initializing Design ---"
source inputs/Default.globals
init_design

puts "--- STEP 2: Floorplanning & Pin Assignment ---"
source scripts/floorplan_new.tcl

puts "--- STEP 3: Power Planning (PG Mesh & Rails) ---"
source scripts/power_plan.tcl

puts "--- STEP 4: Standard Cell Placement ---"
source scripts/placement.tcl

puts "--- STEP 5: Clock Tree Synthesis (CTS) ---"
source scripts/cts.tcl

puts "--- STEP 6: Global & Detail Routing (NanoRoute) ---"
source scripts/route.tcl

puts "--- PHYSICAL DESIGN FLOW COMPLETED SUCCESSFULLY ---"
