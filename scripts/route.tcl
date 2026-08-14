# NanoRoute Global & Detailed Routing Script
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail

# Post-Route Optimization & Fillers
optDesign -postRoute
addFiller -cell {FILL1 FILL2 FILL4 FILL8} -prefix FILLER

# Verify DRC and Connectivity
verify_drc -limit 1000 -report reports/drc_check.rpt
verify_connectivity -report reports/pin_check.txt

# Stream-Out GDSII
streamOut outputs/alu_32bit_case.gds -mapFile libs/gds2.map -outputCoord 2 -units 10000
saveDesign db/route.enc
