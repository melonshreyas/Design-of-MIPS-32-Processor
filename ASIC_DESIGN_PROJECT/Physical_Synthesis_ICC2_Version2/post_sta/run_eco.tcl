source post_sta/timing_eco_1.tcl

connect_pg_net -net VDD [get_pins -hier * -filter "name==VDD"]
connect_pg_net -net VSS [get_pins -hier * -filter "name==VSS"]

check_legality

#place_eco_cells -eco_changed_cells -displacement_threshold 5 -max_displacement_threshold 10
place_eco_cells -eco_changed_cells

check_legality
route_eco -utilize_dangling_wires true -reroute modified_nets_first_then_others -reuse_existing_global_route true

save_block -as eco_done

report_timing
report_timing -delay_type min
report_constraints -all_violators
current_scenario func_slow
report_constraints -all_violators

#get_flat_cells *ropt*



