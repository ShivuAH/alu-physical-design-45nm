# Floorplanning Script for 32-bit ALU in Cadence Innovus
# Initialize Floorplan: Aspect Ratio 1.0, Utilization 0.50 (50%), Core Margins 5um
floorPlan -r 1.0 0.50 5 5 5 5

# Add Physical Cells: WellTap and EndCap cells
addWellTap -cell WELLTAPX1 -cellInterval 45 -checkerBoard
addEndCap -preCap ENDCAPL -postCap ENDCAPR -prefix ENDCAP

# Save Floorplan State
saveDesign db/floorplan.enc
