set std_cell_delay_corner "tt0p8v125c"
#set macro_cell_delay_corner "ff1p16v125c"

#provide path for routed netlist
#this should be dumped from the icc2 session and used as input here.
set input_verilog "../Simple_Processor_ROUTED.v"

#provide path for sdc
set input_sdc "../Simple_Processor_ROUTED.sdc"

#provide path for spef
set input_spef "../starrc/29th_MAY_ROUTE_DONE.cworst.spef"

set my_design "simple_processor_Top"

set DESIGN_REF_PATH "/home/synopsys/SAED14nm_EDK"

set search_path      " \ 
        ${DESIGN_REF_PATH}/stdcell_rvt/db_nldm \
        ${DESIGN_REF_PATH}/stdcell_hvt/db_nldm \
        ${DESIGN_REF_PATH}/stdcell_lvt/db_nldm "


set link_path   "* \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_tt0p8v125c.db"

set target_library " \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_tt0p8v125c.db"


catch {sh mkdir db report_post_layout}

read_verilog "${input_verilog}"
#read_verilog "./${input_verilog}"
#set link_create_black_boxes false
current_design $my_design
link_design $my_design
read_sdc "${input_sdc}"
#read_sdc "./${input_sdc}"
read_parasitics "${input_spef}" -keep_capacitive_coupling -format SPEF
#read_parasitics "./${input_spef}" -keep_capacitive_coupling -format SPEF
update_timing -full
save_session ./db/${my_design}.session

