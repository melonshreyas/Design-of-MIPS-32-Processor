
####### Setting Up Target & Link Libraries #############
source ./Simple_Processor_common_setup.tcl

####### Creating library of the block ########

set link_library  $LINK_LIBRARY_FILES_CLG
set target_library $TARGET_LIBRARY_FILES_CLG

create_lib -ref_libs $NDM_REFERENCE_LIB_DIRS_CLG -technology $TECH_FILE ./lib

#read netlist
read_verilog ./Simple_Processor_mvt_netlist.v

#set current design -top level module name
current_design simple_processor_Top

#linking library + netlist
link

save_lib -as post_import_design


#defining attributes for metal layers -- HVH (preferable) or VHV 
define_user_attribute -type string -name routing_direction -classes routing_rule

#for horizontal ---- odd number of layers
set_attribute -objects [get_layers {M1 M3 M5 M7 M9}] -name routing_direction -value horizontal

#for vertical ---- even number of layers
set_attribute -objects [get_layers {M2 M4 M6 M8 MRDL}] -name routing_direction -value vertical


#reading TLU+ file ---max file -----> Worst parastics delay Parastic of Resistor and Capacitor.
read_parasitic_tech -tlup /home/synopsys/SAED14nm_EDK/tech/star_rc/max/saed14nm_1p9m_Cmax.tluplus -layermap /home/synopsys/SAED14nm_EDK/tech/star_rc/saed14nm_tf_itf_tluplus.map -name worst_para

#min file
read_parasitic_tech -tlup /home/synopsys/SAED14nm_EDK/tech/star_rc/min/saed14nm_1p9m_Cmin.tluplus -layermap /home/synopsys/SAED14nm_EDK/tech/star_rc/saed14nm_tf_itf_tluplus.map -name best_para

#reading the .sdc file 
#read_sdc inputs/dtmf_recvr_core.sdc
source -e -v ./Simple_Processor_mcmm.tcl


#save_block -as minsoc_data1
save_block -as import_done

save_lib

#close_blocks -force
#close_lib





















