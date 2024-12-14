################################################################################
#
# Design name:  29th_MAY_ROUTE_DONE
#
# Created by icc2 write_sdc on Sun May 29 23:07:00 2022
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: fast
# Scenario: func_fast

# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 46; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 47; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 48; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 47; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 48
create_clock -name clock -period 10 -waveform {0 5} [get_ports {Clock}]
set_propagated_clock [get_clocks {clock}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 46
group_path -default -to [get_clocks {clock}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 54; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 54
group_path -name CLOCK -to [get_clocks {clock}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 58; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 58
group_path -name INPUTS -through [get_ports {Run Resetn Clock DIN[8] DIN[7] \
    DIN[6] DIN[5] DIN[4] DIN[3] DIN[2] DIN[1] DIN[0]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 61; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 61
group_path -name OUTPUTS -to [get_ports {Bus[8] Bus[7] Bus[6] Bus[5] Bus[4] \
    Bus[3] Bus[2] Bus[1] Bus[0] Done}]
set_load -pin_load 11.36 [get_ports {Bus[8]}]
set_load -pin_load 11.36 [get_ports {Bus[7]}]
set_load -pin_load 11.36 [get_ports {Bus[6]}]
set_load -pin_load 11.36 [get_ports {Bus[5]}]
set_load -pin_load 11.36 [get_ports {Bus[4]}]
set_load -pin_load 11.36 [get_ports {Bus[3]}]
set_load -pin_load 11.36 [get_ports {Bus[2]}]
set_load -pin_load 11.36 [get_ports {Bus[1]}]
set_load -pin_load 11.36 [get_ports {Bus[0]}]
set_load -pin_load 11.36 [get_ports {Done}]
set_clock_latency -source 1 [get_clocks {clock}]
# Set latency for io paths.
# -origin user
set_clock_latency 0.0340652 [get_clocks {clock}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {Clock}]
set_clock_uncertainty 0.15 [get_clocks {clock}]
set_clock_transition 0.12 [get_clocks {clock}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 15
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {Run}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 17
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {Resetn}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 19
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {DIN[8]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 21
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {DIN[7]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 23
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {DIN[6]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 25
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {DIN[5]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 27
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {DIN[4]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 29
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {DIN[3]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 31
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {DIN[2]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 33
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {DIN[1]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 35
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {DIN[0]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 62; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 63
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {Run}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {Run}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 64; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 65
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {Resetn}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {Resetn}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 66; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 67
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {DIN[8]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {DIN[8]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 68; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 69
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {DIN[7]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {DIN[7]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 70; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 71
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {DIN[6]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {DIN[6]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 72; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 73
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {DIN[5]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {DIN[5]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 74; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 75
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {DIN[4]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {DIN[4]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 76; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 77
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {DIN[3]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {DIN[3]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 78; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 79
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {DIN[2]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {DIN[2]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 80; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 81
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {DIN[1]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {DIN[1]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 82; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 83
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {DIN[0]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {DIN[0]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 84; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 85
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {Bus[8]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {Bus[8]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 86; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 87
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {Bus[7]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {Bus[7]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 88; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 89
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {Bus[6]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {Bus[6]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 90; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 91
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {Bus[5]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {Bus[5]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 92; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 93
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {Bus[4]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {Bus[4]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 94; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 95
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {Bus[3]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {Bus[3]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 96; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 97
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {Bus[2]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {Bus[2]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 98; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 99
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {Bus[1]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {Bus[1]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 100; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 101
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {Bus[0]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {Bus[0]}]
# /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 102; \
#   /home/userdata/21mvd0086/Simple_Processor_Working/Physical_Synthesis_ICC2_Version2/Simple_Processor.sdc, \
#   line 103
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {Done}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {Done}]
set_max_transition 0.5 [current_design]
set_max_capacitance 100 [current_design]
