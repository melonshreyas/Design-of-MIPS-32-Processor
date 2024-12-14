set_svf "Simple_Processor_Phy_Synth.svf"
## Point to the new 14nm SAED libs
set DESIGN_REF_PATH "/home/synopsys/SAED14nm_EDK"

set SEARCH_PATH      " \
        ${DESIGN_REF_PATH}/stdcell_hvt/milkyway/saed14nm_hvt_1p9m \
        ${DESIGN_REF_PATH}/stdcell_rvt/milkyway/saed14nm_rvt_1p9m \
        ${DESIGN_REF_PATH}/stdcell_lvt/milkyway/saed14nm_lvt_1p9m "

# Milkway database ---
# Layout physical format
# Two views are available 
# 1.Abstarct view(FRAM) --- Place and route, size, routing, no. of metal layers just view not exact one.
# 2.Layout view(CELL VIEW) --- Exact and complex version one.
  
set LINK_LIBRARY_FILES   "* \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_tt0p6v125c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_ff0p7v125c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_ff0p88v125c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_ss0p6v125c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_ss0p72v125c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_ss0p6vm40c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_ss0p72vm40c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_ff0p7vm40c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_ff0p88vm40c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_tt0p6vm40c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_tt0p8vm40c.db \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_ss0p6v125c.db \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_ss0p72v125c.db \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_ff0p7v125c.db \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_ff0p88v125c.db \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_tt0p6vm40c.db \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_tt0p8vm40c.db \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_ff0p7vm40c.db \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_ff0p88vm40c.db \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_ss0p6vm40c.db \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_ss0p72vm40c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_ss0p6vm40c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_ss0p72vm40c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_ff0p7vm40c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_ff0p88vm40c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_tt0p6vm40c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_tt0p8vm40c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_tt0p6v125c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_ff0p7v125c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_ff0p88v125c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_ss0p6v125c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_ss0p72v125c.db "

set TARGET_LIBRARY_FILES    " \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_tt0p8v125c.db"

#saed14rvt_tt0p8v125c.db -- is my target library and subset of Link Library

##########################################################################################
# User-defined variables for physical library setup in dc_setup.tcl
##########################################################################################

set MW_DESIGN_LIB        MY_DESIGN_LIB_PROCESSOR          ;
# User-defined Milkyway design library name

# Milkyway reference libraries
set MW_REFERENCE_LIB_DIRS "${SEARCH_PATH} "

set TECH_FILE "${DESIGN_REF_PATH}/tech/milkyway/saed14nm_1p9m_mw.tf" ;#  Milkyway technology file

set TLUPLUS_MAX_FILE  "${DESIGN_REF_PATH}/tech/star_rc/max/saed14nm_1p9m_Cmax.tluplus" ;#Max TLUPlus file

set TLUPLUS_MIN_FILE  "${DESIGN_REF_PATH}/tech/star_rc/min/saed14nm_1p9m_Cmin.tluplus" ;#Min TLUPlus file

set MAP_FILE   "${DESIGN_REF_PATH}/tech/star_rc/saed14nm_tf_itf_tluplus.map" ;#  Mapping file for TLUplus


######################################################################
# Logical Library Settings
######################################################################
set_app_var search_path "$SEARCH_PATH"
set_app_var target_library "$TARGET_LIBRARY_FILES"
set_app_var link_library " $LINK_LIBRARY_FILES "
######################################################################
# Physical Library Settings
######################################################################

set_app_var mw_reference_library $MW_REFERENCE_LIB_DIRS
set_app_var mw_design_library $MW_DESIGN_LIB

# create new Milkyway design library 
    
#create_mw_lib   -technology $TECH_FILE \
#                      -mw_reference_library $mw_reference_library \
#                      $mw_design_library

# Only create new Milkyway design library if it doesn't already exist
    if {![file isdirectory $mw_design_library ]} {
      create_mw_lib   -technology $TECH_FILE \
                      -mw_reference_library $mw_reference_library \
                      -hier_separator {/} \
                      -bus_naming_style {[%d]} \
                      $mw_design_library
    } else {
# If Milkyway design library already exists, continue by opening the existing library
    }
   
open_mw_lib $mw_design_library
check_library
set_tlu_plus_files -max_tluplus $TLUPLUS_MAX_FILE -min_tluplus $TLUPLUS_MIN_FILE \
-tech2itf_map $MAP_FILE

check_tlu_plus_files

read_verilog ./controller_12_april.v
read_verilog ./Datapath_path_work_version_2.v
read_verilog ./Decoders.v 
read_verilog ./Simple_Processor_Top_Module.v

current_design simple_processor_Top 
link
check_design

source ./MYDESIGN_phys_cons.tcl
extract_physical_constraints ./floorplan/floorplan.def

source ./constraints.sdc
check_timing

#set_wire_load_model -name "8000"
#set_wire_load_mode segmented

# input Run, Resetn, Clock;
# input [8:0] DIN;
set_input_transition 0.05 [get_ports Run]
set_input_transition 0.05 [get_ports Resetn]
set_input_transition 0.05 [get_ports DIN]

set_power_prediction true
set_load 2 [all_outputs]

#compile_ultra
compile_ultra -no_autoungroup

report_area
report_power
report_timing
report_timing -delay_type min

change_names -rule verilog -hier
write -hierarchy -format verilog -output ./phy_simple_processor_netlist.v


