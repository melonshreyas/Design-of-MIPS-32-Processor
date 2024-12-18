set_svf "Simple_Processor.svf"
# Serial vector Format .svf file is an ASCII text file that stores programming data for programming, verfying and blank checking.

## Point to the new 14nm SAED libs

set DESIGN_REF_PATH "/home/synopsys/SAED14nm_EDK"

# Current Working Directory ./ ----> Where Verilog Files available
# lvt, hvt and rvt library ------> Read on this

set SEARCH_PATH      " ./ \
        ${DESIGN_REF_PATH}/stdcell_rvt/db_nldm \
        ${DESIGN_REF_PATH}/stdcell_hvt/db_nldm \
        ${DESIGN_REF_PATH}/stdcell_lvt/db_nldm "

# Link Library -----> Check for refernce for all cells are available or not.

#14nm tech rvt library two types:
#1) ccs 
#2) nldm

#Atleast one library should be available and that should aslo be there in Target library
#1. nldm---Non linear delay Model 
#ccs is more accurate than nldm.
#saed14rvt_tt0p6v125c.db.
#tt----for nmos pmos.
#0p6----0.6.
#125----operating temparture.
#Multi Vt then include many libraries.

set LINK_LIBRARY_FILES   " \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_tt0p8v125c.db"

# Target Library choose cells from targeted i.e, with specific library
# slack, speed, area, power varies with lvt and hvt libraries

set TARGET_LIBRARY_FILES    " \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_tt0p8v125c.db"


######################################################################
# Logical Library Settings
######################################################################
# set_app_var -----> tool variable 
# Tool goes and searches for these variable and file_location pointed by it.
# set_app_var search_path $DIR1 $DIR2 $DIR3


set_app_var search_path "$SEARCH_PATH"
set_app_var target_library "$TARGET_LIBRARY_FILES"
set_app_var link_library " $LINK_LIBRARY_FILES "

set HVT_lib saed14hvt_tt0p8v125c
set LVT_lib saed14lvt_tt0p8v125c
set_attribute [get_libs $HVT_lib]
default_threshold_voltage_group HVt
set_attribute [get_libs $LVT_lib]
default_threshold_voltage_group LVt
set_multi_vth_constraint -lvth_groups {LVt} -lvth_percentage 50 -type hard -include_blackboxes
#changed this
set_dynamic_optimization true
set_leakage_optimization true

#read_verilog tool set as top_module of alu.v
#at the end file will be top_level_module ------> Testbench module
#or use current_design testbench_module_name -------> Setting for Top Module

read_verilog Simple_Processor_Top_Top_Module.v
read_verilog Simple_Processor_Top_Module.v
read_verilog Decoders.v
read_verilog controller_12_april.v
read_verilog Datapath_path_work_version_2.v


current_design simple_processor_Top_Top

#Module Name should be written here

####################### Environment Variables ###############################
#1. Output Load.
#   tdelay(rise) = f(load cap from next block, I/p transition time)
#   Provide some value. How to set load cap? 
#   1. like 10fF
#   2. Drive some 10 buffers all i/p cap of buffer becomes as load cap for #      previopus block.

#2. Operating Condition. (Temperature: 1.Industrial 2.Military 3.Automobile)
#   These are defined in libraries set minimum and max temp range value

#3. Wire Load module.
#   Estimate Net delay of Interconnecting wire and net. 
#   Estimation of delay using Wire Load module.
#   Based on 1. transistor size. 2. Fanout
#   The wire load module varies.
#   It will take default wire module. It is not accurate delay but it gives   #   some approx values.
#   

#4. Drive cell or Input Transistion.

##############################################################################

set_operating_conditions tt0p8v125c
#set_operating_conditions -min ff0p88v125c -max ss0p6v125c

link

## Generating intermediate technology independet (GTECH) design ###########
############### Architecture Mapped File ###################################
# invoke gui to check what architecture it has done 
write_file -format verilog -output ./Simple_Processor_gtech.vs

# Like Linting problems.
# Instatntaion problems or missed any constaraints or some mapping is wrong or not mapped according to us.
# check design quality.

check_design

###############################################################################
########################## Set Design Constraints ############################

source ./constraints_processor.sdc

check_timing

set_wire_load_model -name "8000"
set_wire_load_mode segmented

#compile_ultra
#compile_ultra -no_autoungroup -gate_clock

#set_fix_multiple_port_nets –all –buffer_constants
read_saif -input ./Simple_Processor_SAIF_Move_Operation.saif -instance simple_processor_testbench_mv_op/T3
#testbench_filename/instance of top_module

compile_ultra -no_autoungroup
#compile -ungroup_all
#set_donot_touch


# Report gives number of details
report_area
report_power
report_timing
report_constraint -verbose
report_qor
report_clock_gating

change_names -rule verilog -hier
write -hierarchy -format verilog -output ./Simple_Processor_netlist.v
write_sdc ./Simple_Processor.sdc

#Reporting reg2reg timing path 
#set_false_path -to [all_outputs]
#set_false_path -from [all_inputs]
#Above command will disable timing paths from input ports and to output ports and report_timing will give reg2reg path
#report_timing

#Reporting more than one timing paths and setup slack less than 0
#report_timing -max_paths 10 -slack_lesser_than 0
#report_timing -max_paths 10 -delay_type min -slack_lesser_than 0

#set_fix_hold [all_clocks]

#to optimize the paths
#compile_ultra -incremental
