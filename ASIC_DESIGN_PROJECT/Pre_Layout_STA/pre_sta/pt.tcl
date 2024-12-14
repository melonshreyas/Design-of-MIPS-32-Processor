
set DESIGN_REF_PATH "/home/synopsys/SAED14nm_EDK"

set SEARCH_PATH      " ./ \
        ${DESIGN_REF_PATH}/stdcell_rvt/db_nldm \
        ${DESIGN_REF_PATH}/stdcell_hvt/db_nldm \
        ${DESIGN_REF_PATH}/stdcell_lvt/db_nldm "

set TARGET_LIBRARY_FILES    " \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_tt0p8v125c.db"

set LINK_LIBRARY_FILES   "* \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_tt0p8v125c.db"

set_app_var search_path "$SEARCH_PATH"
set_app_var target_library "$TARGET_LIBRARY_FILES"
set_app_var link_library " $LINK_LIBRARY_FILES "

read_verilog ./alu_netlist_mvt.v
current_design alu
link

source ./constraints.sdc
check_timing



report_timing
report_timing -delay_type min
report_analysis_coverage

report_timing -from [all_inputs] -max_paths 20 -to [all_registers -data_pins]  > reports/timing.rpt
report_timing -from [all_register -clock_pins] -max_paths 20 -to [all_registers -data_pins] > reports/su.timing.rpt
report_timing -from [all_register -clock_pins] -max_paths 20 -to [all_registers -data_pins] -delay_type min > reports/hold.timing.rpt
report_timing -from [all_registers -clock_pins] -max_paths 20 -to [all_outputs] >> reports/timing.rpt
report_timing -from [all_inputs] -to [all_outputs] -max_paths 20 >> reports/timing.rpt
report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type max  >> reports/timing.rpt
report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type min  >> reports/timing.rpt


report_timing -transition_time -capacitance -nets -input_pins -from [all_registers -clock_pins] -to [all_registers -data_pins]  > reports/timing.tran.cap.rpt

