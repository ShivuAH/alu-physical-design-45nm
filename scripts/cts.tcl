# Clock Tree Synthesis (CCOpt) Script
create_ccopt_clock_tree_spec
ccopt_design

# Post-CTS Optimization
optDesign -postCTS
saveDesign db/cts.enc
