################################################################################
#
# Design name:  initial_route_23rd_May
#
# Created by icc2 write_sdc on Wed May 25 18:04:47 2022
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

# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 70; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 71; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 72; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 71; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 72
create_clock -name clock -period 10 -waveform {0 5} [get_ports {clk}]
set_propagated_clock [get_clocks {clock}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 70
group_path -default -to [get_clocks {clock}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 78; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 78
group_path -name CLOCK -to [get_clocks {clock}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 84; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 84
group_path -name INPUTS -through [get_ports {a[7] a[6] a[5] a[4] a[3] a[2] a[1] \
    a[0] b[7] b[6] b[5] b[4] b[3] b[2] b[1] b[0] s[3] s[2] s[1] s[0] clk rst}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 88; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 88
group_path -name OUTPUTS -to [get_ports {f[7] f[6] f[5] f[4] f[3] f[2] f[1] \
    f[0] z c v agtb altb aeqb}]
set_load -pin_load 11.36 [get_ports {f[7]}]
set_load -pin_load 11.36 [get_ports {f[6]}]
set_load -pin_load 11.36 [get_ports {f[5]}]
set_load -pin_load 11.36 [get_ports {f[4]}]
set_load -pin_load 11.36 [get_ports {f[3]}]
set_load -pin_load 11.36 [get_ports {f[2]}]
set_load -pin_load 11.36 [get_ports {f[1]}]
set_load -pin_load 11.36 [get_ports {f[0]}]
set_load -pin_load 11.36 [get_ports {z}]
set_load -pin_load 11.36 [get_ports {c}]
set_load -pin_load 11.36 [get_ports {v}]
set_load -pin_load 11.36 [get_ports {agtb}]
set_load -pin_load 11.36 [get_ports {altb}]
set_load -pin_load 11.36 [get_ports {aeqb}]
set_clock_latency -source 1 [get_clocks {clock}]
# Set latency for io paths.
# -origin user
set_clock_latency -min 0.280418 [get_clocks {clock}]
# -origin user
set_clock_latency -max 0.289612 [get_clocks {clock}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {clk}]
set_clock_uncertainty 0.15 [get_clocks {clock}]
set_clock_transition 0.12 [get_clocks {clock}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 15
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {a[7]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 17
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {a[6]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 19
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {a[5]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 21
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {a[4]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 23
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {a[3]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 25
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {a[2]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 27
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {a[1]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 29
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {a[0]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 31
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {b[7]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 33
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {b[6]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 35
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {b[5]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 37
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {b[4]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 39
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {b[3]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 41
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {b[2]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 43
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {b[1]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 45
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {b[0]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 47
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {s[3]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 49
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {s[2]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 51
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {s[1]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 53
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {s[0]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 55
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X -library \
    saed14rvt_tt0p8v125c [get_ports {rst}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 131; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 132
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {f[7]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {f[7]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 133; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 134
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {f[6]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {f[6]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 135; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 136
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {f[5]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {f[5]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 137; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 138
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {f[4]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {f[4]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 139; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 140
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {f[3]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {f[3]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 141; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 142
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {f[2]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {f[2]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 143; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 144
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {f[1]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {f[1]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 145; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 146
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {f[0]}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {f[0]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 147; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 148
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {z}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {z}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 149; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 150
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {c}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {c}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 151; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 152
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {v}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {v}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 153; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 154
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {agtb}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {agtb}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 155; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 156
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {altb}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {altb}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 157; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 158
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {aeqb}]
set_output_delay -clock [get_clocks {clock}] -max 1 [get_ports {aeqb}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 89; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 90
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {a[7]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {a[7]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 91; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 92
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {a[6]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {a[6]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 93; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 94
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {a[5]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {a[5]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 95; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 96
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {a[4]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {a[4]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 97; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 98
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {a[3]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {a[3]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 99; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 100
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {a[2]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {a[2]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 101; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 102
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {a[1]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {a[1]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 103; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 104
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {a[0]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {a[0]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 105; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 106
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {b[7]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {b[7]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 107; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 108
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {b[6]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {b[6]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 109; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 110
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {b[5]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {b[5]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 111; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 112
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {b[4]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {b[4]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 113; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 114
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {b[3]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {b[3]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 115; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 116
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {b[2]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {b[2]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 117; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 118
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {b[1]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {b[1]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 119; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 120
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {b[0]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {b[0]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 121; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 122
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {s[3]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {s[3]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 123; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 124
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {s[2]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {s[2]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 125; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 126
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {s[1]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {s[1]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 127; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 128
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {s[0]}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {s[0]}]
# /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 129; \
#   /home/userdata/21mvd0086/ASIC_LAB/Physical_Synthesis_ICC2/icc2_db/alu.sdc, \
#   line 130
set_input_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {rst}]
set_input_delay -clock [get_clocks {clock}] -max 1 [get_ports {rst}]
set_max_transition 0.5 [current_design]
set_max_capacitance 100 [current_design]
