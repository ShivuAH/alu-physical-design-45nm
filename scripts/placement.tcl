# Standard Cell Placement & Pre-CTS Timing Optimization
setMode -place_global_place_io_pins true
place_design -concurrent_macros

# Pre-CTS Timing & Congestion Optimization
optDesign -preCTS
saveDesign db/placement.enc
