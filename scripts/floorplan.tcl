# Comprehensive Floorplan Script with dbGet queries
floorPlan -r 1.0 0.50 5 5 5 5

# Set IO Pin Spacing and Layer Constraints
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -assign {a[*]} -side Left -layer Metal3
editPin -fixedPin 1 -assign {b[*]} -side Right -layer Metal3
editPin -fixedPin 1 -assign {f[*]} -side Bottom -layer Metal3
editPin -fixedPin 1 -assign {y[*]} -side Top -layer Metal4

# Check Floorplan Metrics
dbGet top.fPlan.coreBox
