#add_buffer [get_nets -of [get_ports *]] [get_lib_cells */SAEDRVT14_BUF_20]
#magnet_plalcement [get_ports *]
#set_attribute [get_cells eco_cel*] physical_status fixed

#After Powerplan done do check_design below command
check_design -checks pre_placement_stage

# No Scan Def design in our file
set_app_options -name place.coarse.continue_on_missing_scandef -value true

##placement density setting
#Specify a maximum density that controls how densely the tool can place cells in uncongested areas during wire-length-driven placement
set_app_options -name place.coarse.max_density -value 0.6

#Specify a maximum utilization that controls how densely the tool can place cells in less congested areas that surround highly congested areas, so 
#that the cells in the congested areas can be spread out to reduce the congestion
set_app_options -name place.coarse.congestion_driven_max_util -value 0.6

#to analyze all cells have proper or legal location
analyze_lib_cell_placement -lib_cells *
#for placement of cells
create_placement -congestion

#set RC delay for timings which were set during "DATA PREPARATION"
set_parasitic_parameters -early_spec best_para
set_parasitic_parameters -late_spec worst_para

check_legality -verbose

legalize_placement

# Checking again overlapping is removed
check_legality -verbose

#TIMING REPORT 
report_qor -summary

### setting VTH percentage

set_attribute [get_lib_cells */*LVT*] threshold_voltage_group LVT
set_threshold_voltage_group_type -type low_vt LVT
set_multi_vth_constraint -low_vt_percentage 5 -cost cell_count

# List of cells
#get_lib_cell */*ADDF_*

#Manual replace the Cell with LVT Cell.
#size_cell ab/f1/U1/CO SAEDLVT14_ADDF_V1_0P5

#report_timing -transition_time -physical -nets

#Insert Buffer Command
#insert_buffer ab/m1/U1/X SAEDLVT14_BUF_S_20

#get_lib_cell */*LVT14_BUF_*

#report_timing -transition_time -physical -nets

#get_flat_cells ab/m1/eco_cell
# To see in gui where it is connected and highlited in the Design GUI
#change_selection [get_flat_cells ab/m1/eco_cell]

##Analyzing bufferability of nets
#check_bufferability -nets < give any net name>

### analyzing violations that cannot be fixed
analyze_design_violations

#for OPTIMIZATION

place_opt -to final_opto



#TIMING REPORT

report_qor -summary

report_timing




