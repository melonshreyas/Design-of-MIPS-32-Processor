set_svf "alu.svf"
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
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_tt0p8v125c.db"

set TARGET_LIBRARY_FILES    " \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_tt0p8v125c.db"

#saed14rvt_tt0p8v125c.db -- is my target library and subset of Link Library.

##########################################################################################
# User-defined variables for physical library setup in dc_setup.tcl
##########################################################################################


set MW_DESIGN_LIB MY_DESIGN_LIB;
# User-defined Milkyway design library name you can change the name according to ur wish


# Milkyway reference libraries
set MW_REFERENCE_LIB_DIRS "${SEARCH_PATH} "


set TECH_FILE "${DESIGN_REF_PATH}/tech/milkyway/saed14nm_1p9m_mw.tf" ;
# Milkyway technology file -- All the layers information
#.tf file open and see. Consists of Layer, VIA, DRC rules and many information available


set TLUPLUS_MAX_FILE  "${DESIGN_REF_PATH}/tech/star_rc/max/saed14nm_1p9m_Cmax.tluplus";
#Max TLUPlus file
# Contains capactiance file. 
# .itf file --- text file
# .tluplus file ----- binary file with encoded format


set TLUPLUS_MIN_FILE  "${DESIGN_REF_PATH}/tech/star_rc/min/saed14nm_1p9m_Cmin.tluplus";
#Min TLUPlus file
# Contains capactiance file. 
# .itf file -----> .tluplus 
# Convert .itf to .tluplus using StarRC tool. Contains Parastics information.
# .tluplus file ----- binary file


set MAP_FILE   "${DESIGN_REF_PATH}/tech/star_rc/saed14nm_tf_itf_tluplus.map" ;
# Mapping file for tluplus
# M2 - Horizontal direction.
# M3 - Vertical direction.
# Two metals routed in opposite direction.
# To ignore or remove crosstalk, Signal intgerity issues. 
# M1>M2>M3 Resistance and Current capabality is reverse order.

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
# Create only once 
# rm -rf ----> use to remove mw_design_library the library.
   
#create_mw_lib   -technology $TECH_FILE \
#                      -mw_reference_library $mw_reference_library \
#                      $mw_design_library

# Automatic checking if any library created or not ?
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
   
open_mw_lib     $mw_design_library


check_library
# check consitency between in logic library and physical library.


set_tlu_plus_files -max_tluplus $TLUPLUS_MAX_FILE -min_tluplus $TLUPLUS_MIN_FILE \
-tech2itf_map $MAP_FILE


check_tlu_plus_files


read_verilog ./alu.v
read_verilog ./comparator_block.v  
read_verilog ./ha.v 
read_verilog ./mux.v 
read_verilog ./shifter_block.v
read_verilog ./arith_block.v
read_verilog ./fa.v 
read_verilog ./logic_block.v
read_verilog ./reg_block.v


current_design alu

link

check_design

#source ./MYDESIGN_phys_cons.tcl
# Write constraints file
extract_physical_constraints ./floorplan/floorplan.def
#.def means design exchange file. Extraxct physical constraints from .def file

source ./constraints.sdc
check_timing

#set_wire_load_model -name "8000"
#set_wire_load_mode segmented

set_input_transition 0.05 [get_ports a]
set_input_transition 0.05 [get_ports b]
set_input_transition 0.05 [get_ports s]


set_load 2 [all_outputs]

#compile_ultra
compile_ultra -no_autoungroup

report_area
report_power
report_timing
report_timing -delay_type min

change_names -rule verilog -hier
write -hierarchy -format verilog -output ./phy_alu_netlist.v
# Give the Netlist filename


