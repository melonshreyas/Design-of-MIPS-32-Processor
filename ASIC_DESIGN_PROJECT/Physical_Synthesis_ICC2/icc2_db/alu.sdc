###################################################################

# Created by write_sdc on Mon Mar 14 12:35:48 2022

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_wire_load_mode segmented
set_wire_load_model -name 8000 -library saed14rvt_tt0p6v125c
set_max_capacitance 100 [current_design]
set_max_fanout 20 [current_design]
set_max_transition 0.5 [current_design]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {a[7]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {a[6]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {a[5]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {a[4]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {a[3]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {a[2]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {a[1]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {a[0]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {b[7]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {b[6]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {b[5]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {b[4]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {b[3]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {b[2]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {b[1]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {b[0]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {s[3]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {s[2]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {s[1]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {s[0]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports rst]
set_load -pin_load 11.36 [get_ports {f[7]}]
set_load -pin_load 11.36 [get_ports {f[6]}]
set_load -pin_load 11.36 [get_ports {f[5]}]
set_load -pin_load 11.36 [get_ports {f[4]}]
set_load -pin_load 11.36 [get_ports {f[3]}]
set_load -pin_load 11.36 [get_ports {f[2]}]
set_load -pin_load 11.36 [get_ports {f[1]}]
set_load -pin_load 11.36 [get_ports {f[0]}]
set_load -pin_load 11.36 [get_ports z]
set_load -pin_load 11.36 [get_ports c]
set_load -pin_load 11.36 [get_ports v]
set_load -pin_load 11.36 [get_ports agtb]
set_load -pin_load 11.36 [get_ports altb]
set_load -pin_load 11.36 [get_ports aeqb]
create_clock [get_ports clk]  -name clock  -period 10  -waveform {0 5}
set_clock_latency 1  [get_clocks clock]
set_clock_latency -source 1  [get_clocks clock]
set_clock_uncertainty 0.15  [get_clocks clock]
set_clock_transition -min -fall 0.12 [get_clocks clock]
set_clock_transition -min -rise 0.12 [get_clocks clock]
set_clock_transition -max -fall 0.12 [get_clocks clock]
set_clock_transition -max -rise 0.12 [get_clocks clock]
group_path -name CLOCK  -to [get_clocks clock]
group_path -name INPUTS  -through [list [get_ports {a[7]}] [get_ports {a[6]}] [get_ports {a[5]}]       \
[get_ports {a[4]}] [get_ports {a[3]}] [get_ports {a[2]}] [get_ports {a[1]}]    \
[get_ports {a[0]}] [get_ports {b[7]}] [get_ports {b[6]}] [get_ports {b[5]}]    \
[get_ports {b[4]}] [get_ports {b[3]}] [get_ports {b[2]}] [get_ports {b[1]}]    \
[get_ports {b[0]}] [get_ports {s[3]}] [get_ports {s[2]}] [get_ports {s[1]}]    \
[get_ports {s[0]}] [get_ports clk] [get_ports rst]]
group_path -name OUTPUTS  -to [list [get_ports {f[7]}] [get_ports {f[6]}] [get_ports {f[5]}] [get_ports \
{f[4]}] [get_ports {f[3]}] [get_ports {f[2]}] [get_ports {f[1]}] [get_ports    \
{f[0]}] [get_ports z] [get_ports c] [get_ports v] [get_ports agtb] [get_ports  \
altb] [get_ports aeqb]]
set_input_delay -clock clock  -max 1  [get_ports {a[7]}]
set_input_delay -clock clock  -min 0.5  [get_ports {a[7]}]
set_input_delay -clock clock  -max 1  [get_ports {a[6]}]
set_input_delay -clock clock  -min 0.5  [get_ports {a[6]}]
set_input_delay -clock clock  -max 1  [get_ports {a[5]}]
set_input_delay -clock clock  -min 0.5  [get_ports {a[5]}]
set_input_delay -clock clock  -max 1  [get_ports {a[4]}]
set_input_delay -clock clock  -min 0.5  [get_ports {a[4]}]
set_input_delay -clock clock  -max 1  [get_ports {a[3]}]
set_input_delay -clock clock  -min 0.5  [get_ports {a[3]}]
set_input_delay -clock clock  -max 1  [get_ports {a[2]}]
set_input_delay -clock clock  -min 0.5  [get_ports {a[2]}]
set_input_delay -clock clock  -max 1  [get_ports {a[1]}]
set_input_delay -clock clock  -min 0.5  [get_ports {a[1]}]
set_input_delay -clock clock  -max 1  [get_ports {a[0]}]
set_input_delay -clock clock  -min 0.5  [get_ports {a[0]}]
set_input_delay -clock clock  -max 1  [get_ports {b[7]}]
set_input_delay -clock clock  -min 0.5  [get_ports {b[7]}]
set_input_delay -clock clock  -max 1  [get_ports {b[6]}]
set_input_delay -clock clock  -min 0.5  [get_ports {b[6]}]
set_input_delay -clock clock  -max 1  [get_ports {b[5]}]
set_input_delay -clock clock  -min 0.5  [get_ports {b[5]}]
set_input_delay -clock clock  -max 1  [get_ports {b[4]}]
set_input_delay -clock clock  -min 0.5  [get_ports {b[4]}]
set_input_delay -clock clock  -max 1  [get_ports {b[3]}]
set_input_delay -clock clock  -min 0.5  [get_ports {b[3]}]
set_input_delay -clock clock  -max 1  [get_ports {b[2]}]
set_input_delay -clock clock  -min 0.5  [get_ports {b[2]}]
set_input_delay -clock clock  -max 1  [get_ports {b[1]}]
set_input_delay -clock clock  -min 0.5  [get_ports {b[1]}]
set_input_delay -clock clock  -max 1  [get_ports {b[0]}]
set_input_delay -clock clock  -min 0.5  [get_ports {b[0]}]
set_input_delay -clock clock  -max 1  [get_ports {s[3]}]
set_input_delay -clock clock  -min 0.5  [get_ports {s[3]}]
set_input_delay -clock clock  -max 1  [get_ports {s[2]}]
set_input_delay -clock clock  -min 0.5  [get_ports {s[2]}]
set_input_delay -clock clock  -max 1  [get_ports {s[1]}]
set_input_delay -clock clock  -min 0.5  [get_ports {s[1]}]
set_input_delay -clock clock  -max 1  [get_ports {s[0]}]
set_input_delay -clock clock  -min 0.5  [get_ports {s[0]}]
set_input_delay -clock clock  -max 1  [get_ports rst]
set_input_delay -clock clock  -min 0.5  [get_ports rst]
set_output_delay -clock clock  -max 1  [get_ports {f[7]}]
set_output_delay -clock clock  -min 0.5  [get_ports {f[7]}]
set_output_delay -clock clock  -max 1  [get_ports {f[6]}]
set_output_delay -clock clock  -min 0.5  [get_ports {f[6]}]
set_output_delay -clock clock  -max 1  [get_ports {f[5]}]
set_output_delay -clock clock  -min 0.5  [get_ports {f[5]}]
set_output_delay -clock clock  -max 1  [get_ports {f[4]}]
set_output_delay -clock clock  -min 0.5  [get_ports {f[4]}]
set_output_delay -clock clock  -max 1  [get_ports {f[3]}]
set_output_delay -clock clock  -min 0.5  [get_ports {f[3]}]
set_output_delay -clock clock  -max 1  [get_ports {f[2]}]
set_output_delay -clock clock  -min 0.5  [get_ports {f[2]}]
set_output_delay -clock clock  -max 1  [get_ports {f[1]}]
set_output_delay -clock clock  -min 0.5  [get_ports {f[1]}]
set_output_delay -clock clock  -max 1  [get_ports {f[0]}]
set_output_delay -clock clock  -min 0.5  [get_ports {f[0]}]
set_output_delay -clock clock  -max 1  [get_ports z]
set_output_delay -clock clock  -min 0.5  [get_ports z]
set_output_delay -clock clock  -max 1  [get_ports c]
set_output_delay -clock clock  -min 0.5  [get_ports c]
set_output_delay -clock clock  -max 1  [get_ports v]
set_output_delay -clock clock  -min 0.5  [get_ports v]
set_output_delay -clock clock  -max 1  [get_ports agtb]
set_output_delay -clock clock  -min 0.5  [get_ports agtb]
set_output_delay -clock clock  -max 1  [get_ports altb]
set_output_delay -clock clock  -min 0.5  [get_ports altb]
set_output_delay -clock clock  -max 1  [get_ports aeqb]
set_output_delay -clock clock  -min 0.5  [get_ports aeqb]
