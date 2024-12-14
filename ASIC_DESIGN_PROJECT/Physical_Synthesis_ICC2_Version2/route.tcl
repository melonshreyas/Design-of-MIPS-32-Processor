check_design -checks pre_route_stage
check_routability

# Run the following commands to set the options. 

set_app_options -name route.detail.timing_driven -value true
set_app_options -name route.track.timing_driven -value true
set_app_options -name route.track.crosstalk_driven -value true
set_app_options -name route.global.timing_driven -value true

# Define the routing layers that needs to be used  for routing

set_ignored_layers -max_routing_layer M7 -min_routing_layer M2

#Set the options to allow routing below the minimum layer only for  pin  connections.

set_app_options -name route.common.global_min_layer_mode -value allow_pin_connection


#Set the option to use a layer above the maximum layer as soft. This sets the tool to routing above the maximum layer is discouraged, but not disallowed. 

set_app_options -name route.common.global_max_layer_mode -value soft



#Enabling the Crosstalk aware and Delay Calculations

set_app_options -name time.si_enable_analysis -value true

set_app_options -name time.enable_si_timing_windows -value true

check_design -checks pre_route_stage
check_routability

# Run the following commands to set the options. 

set_app_options -name route.detail.timing_driven -value true
set_app_options -name route.track.timing_driven -value true
set_app_options -name route.track.crosstalk_driven -value true
set_app_options -name route.global.timing_driven -value true

# Define the routing layers that needs to be used  for routing

set_ignored_layers -max_routing_layer M7 -min_routing_layer M2

#Set the options to allow routing below the minimum layer only for  pin  connections.

set_app_options -name route.common.global_min_layer_mode -value allow_pin_connection


#Set the option to use a layer above the maximum layer as soft. This sets the tool to routing above the maximum layer is discouraged, but not disallowed. 

set_app_options -name route.common.global_max_layer_mode -value soft



#Enabling the Crosstalk aware and Delay Calculations

set_app_options -name time.si_enable_analysis -value true

set_app_options -name time.enable_si_timing_windows -value true

set_app_options -name time.enable_ccs_rcv_cap -value true

#route_global
#route_track
#route_detail
route_auto
save_block -as initial_route

route_opt
save_block -as route_done

################### Upto Here it is DONE ###################################




#############################################################################################################################################
####################################### ECO ROUTING #########################################################################################
####  helps to reduce drcs 
route_eco -open_net_driven true -reuse_existing_global_route true -utilize_dangling_wires true

# VT distribution
#report_threshold_voltage_group

# Report Utilization 
#create_utilization_configuration -scope block core_utilization -include {all}
#report_utilization -config core_utilization
check_design -checks pre_route_stage
check_routability

# Run the following commands to set the options. 

set_app_options -name route.detail.timing_driven -value true
set_app_options -name route.track.timing_driven -value true
set_app_options -name route.track.crosstalk_driven -value true
set_app_options -name route.global.timing_driven -value true

# Define the routing layers that needs to be used  for routing

set_ignored_layers -max_routing_layer M7 -min_routing_layer M2

#Set the options to allow routing below the minimum layer only for  pin  connections.

set_app_options -name route.common.global_min_layer_mode -value allow_pin_connection


#Set the option to use a layer above the maximum layer as soft. This sets the tool to routing above the maximum layer is discouraged, but not disallowed. 

set_app_options -name route.common.global_max_layer_mode -value soft



#Enabling the Crosstalk aware and Delay Calculations

set_app_options -name time.si_enable_analysis -value true

set_app_options -name time.enable_si_timing_windows -value true

set_app_options -name time.enable_ccs_rcv_cap -value true

#route_global
#route_track
#route_detail
route_auto
save_block -as initial_route

route_opt
save_block -as route_done


####  helps to reduce drcs 
route_eco -open_net_driven true -reuse_existing_global_route true -utilize_dangling_wires true

# VT distribution
#report_threshold_voltage_group

# Report Utilization 
#create_utilization_configuration -scope block core_utilization -include {all}
#report_utilization -config core_utilization
set_app_options -name time.enable_ccs_rcv_cap -value true

#route_global
#route_track
#route_detail
route_auto
save_block -as 30th_MAY_ECO_ROUTING

route_opt
save_block -as 30th_MAY_After_ECO_ROUTING


####  helps to reduce drcs 
#route_eco -open_net_driven true -reuse_existing_global_route true -utilize_dangling_wires true

# VT distribution
#report_threshold_voltage_group

# Report Utilization 
#create_utilization_configuration -scope block core_utilization -include {all}
#report_utilization -config core_utilization


