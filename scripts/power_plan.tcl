# Power Planning Script (VDD / VSS PG Rings & Stripes)
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *

# Create Power Rings (Metal8 / Metal9)
addRing -type core_rings -nets {VDD VSS} -width 2.0 -spacing 0.8 -layer {top Metal9 bottom Metal9 left Metal8 right Metal8}

# Create Power Stripes
addStripe -nets {VDD VSS} -layer Metal9 -direction horizontal -width 1.5 -spacing 0.8 -set_to_set_distance 20
addStripe -nets {VDD VSS} -layer Metal8 -direction vertical -width 1.5 -spacing 0.8 -set_to_set_distance 20

# Standard Cell Power Rail Routing (sroute)
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1 Metal9 } -targetViaLayerRange { Metal1 Metal9 }
