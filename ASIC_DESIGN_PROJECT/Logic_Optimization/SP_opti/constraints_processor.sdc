#set sdc_version 2.1
reset_design

set PERIOD  10.0
set INPUT_DELAY  1.0
set OUTPUT_DELAY  1.0
set CLOCK_LATENCY 1.0
set SOURCE_LATENCY 1.0
set UNCERTAINTY 0.15
set MAX_TRANSITION 0.5
set MIN_CLOCK_LATENCY 0.5
set MIN_SOURCE_LATENCY 0.5
set MIN_IO_DELAY 0.5



## CLOCK BASICS
create_clock -name "clock" -period $PERIOD [get_ports Clock]

set_clock_latency $CLOCK_LATENCY [get_clocks clock]
#set_clock_latency -min $MIN_CLOCK_LATENCY [get_clocks clock]

set_clock_latency -source $SOURCE_LATENCY [get_clocks clock]
#set_clock_latency -source -min $MIN_SOURCE_LATENCY [get_clocks clock]

set_clock_uncertainty -setup $UNCERTAINTY [get_clocks clock]
set_clock_uncertainty -hold $UNCERTAINTY [get_clocks clock]

set_clock_transition 0.12 [get_clocks clock]


## GROUPING
group_path  -name CLOCK\
            -to clock\
            -weight 1

group_path  -name INPUTS\
            -through [all_inputs]\
            -weight 1

group_path  -name OUTPUTS\
            -to [all_outputs]\
            -weight 1


## IN/OUT
set INPUTPORTS [remove_from_collection [all_inputs] [get_ports Clock]]
set OUTPUTPORTS [all_outputs]
  
set_input_delay -clock "clock" -max $INPUT_DELAY $INPUTPORTS 
set_output_delay -clock "clock" -max $OUTPUT_DELAY $OUTPUTPORTS
set_input_delay -clock "clock" -min $MIN_IO_DELAY $INPUTPORTS 
set_output_delay -clock "clock" -min $MIN_IO_DELAY $OUTPUTPORTS

#set REFLIB [get_object_name [index_collection [get_libs *wc] 0]]
set REFLIB saed14rvt_tt0p8v125c
set BUFFER "SAEDRVT14_BUF_10"
set BUF_IN_PIN "A"
set BUF_OUT_PIN "X"

set_load [expr 10 * [load_of $REFLIB/$BUFFER/$BUF_IN_PIN]] [all_outputs]

set_driving_cell -library $REFLIB -lib_cell $BUFFER -pin $BUF_OUT_PIN $INPUTPORTS

#set_driving_cell -library $REFLIB \
                 -lib_cell $BUFFER \
                 -pin $BUF_OUT_PIN [all_inputs]

#remove_driving_cell [get_ports Clock]


## DRC
set_max_transition $MAX_TRANSITION [current_design]

set_max_fanout 20 [current_design]

set_max_capacitance 100 [current_design]



