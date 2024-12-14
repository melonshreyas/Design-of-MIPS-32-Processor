fix_eco_drc -type max_transition -verbose -methods size_cell
fix_eco_drc -type max_capacitance -verbose -methods size_cell
fix_eco_drc -type max_transition -verbose -buffer_list {SAEDLVT14_BUF_4 SAEDLVT14_BUF_2 SAEDLVT14_BUF_6 SAEDLVT14_BUF_8}
fix_eco_drc -type max_capacitance -verbose -buffer_list {SAEDLVT14_BUF_4 SAEDLVT14_BUF_2 SAEDLVT14_BUF_6 SAEDLVT14_BUF_8}
fix_eco_timing -type setup -slack_lesser_than 0 -buffer_list {SAEDLVT14_BUF_4 SAEDLVT14_BUF_2 SAEDLVT14_BUF_6 SAEDLVT14_BUF_8}
#fix_eco_timing -type hold -slack_lesser_than 0 -buffer_list {SAEDHVT14_BUF_4 SAEDHVT14_BUF_2 SAEDHVT14_BUF_6 SAEDHVT14_BUF_8}

write_changes -format icctcl -output timing_eco_1.tcl

