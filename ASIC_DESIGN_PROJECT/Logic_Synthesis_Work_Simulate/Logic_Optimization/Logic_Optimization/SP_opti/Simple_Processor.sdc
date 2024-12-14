###################################################################

# Created by write_sdc on Thu May  5 15:30:11 2022

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_wire_load_mode segmented
set_wire_load_model -name 8000 -library saed14hvt_tt0p8v125c
set_max_transition 0.5 [current_design]
set_max_fanout 20 [current_design]
set_max_capacitance 100 [current_design]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports Run]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports Resetn]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {DIN[8]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {DIN[7]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {DIN[6]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {DIN[5]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {DIN[4]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {DIN[3]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {DIN[2]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {DIN[1]}]
set_driving_cell -lib_cell SAEDRVT14_BUF_10 -library saed14rvt_tt0p8v125c -pin \
X [get_ports {DIN[0]}]
set_load -pin_load 11.36 [get_ports {Bus[8]}]
set_load -pin_load 11.36 [get_ports {Bus[7]}]
set_load -pin_load 11.36 [get_ports {Bus[6]}]
set_load -pin_load 11.36 [get_ports {Bus[5]}]
set_load -pin_load 11.36 [get_ports {Bus[4]}]
set_load -pin_load 11.36 [get_ports {Bus[3]}]
set_load -pin_load 11.36 [get_ports {Bus[2]}]
set_load -pin_load 11.36 [get_ports {Bus[1]}]
set_load -pin_load 11.36 [get_ports {Bus[0]}]
set_load -pin_load 11.36 [get_ports Done]
create_clock [get_ports Clock]  -name clock  -period 1  -waveform {0 0.5}
set_clock_latency 1  [get_clocks clock]
set_clock_latency -source 1  [get_clocks clock]
set_clock_uncertainty 0.15  [get_clocks clock]
set_clock_transition -max -rise 0.12 [get_clocks clock]
set_clock_transition -max -fall 0.12 [get_clocks clock]
set_clock_transition -min -rise 0.12 [get_clocks clock]
set_clock_transition -min -fall 0.12 [get_clocks clock]
group_path -weight 50  -name INPUTS  -through [list [get_ports Run] [get_ports Resetn] [get_ports Clock]           \
[get_ports {DIN[8]}] [get_ports {DIN[7]}] [get_ports {DIN[6]}] [get_ports      \
{DIN[5]}] [get_ports {DIN[4]}] [get_ports {DIN[3]}] [get_ports {DIN[2]}]       \
[get_ports {DIN[1]}] [get_ports {DIN[0]}]]
group_path -name CLOCK  -to [get_clocks clock]
group_path -name OUTPUTS  -to [list [get_ports {Bus[8]}] [get_ports {Bus[7]}] [get_ports {Bus[6]}]      \
[get_ports {Bus[5]}] [get_ports {Bus[4]}] [get_ports {Bus[3]}] [get_ports      \
{Bus[2]}] [get_ports {Bus[1]}] [get_ports {Bus[0]}] [get_ports Done]]
set_input_delay -clock clock  -max 1  [get_ports Run]
set_input_delay -clock clock  -min 0.5  [get_ports Run]
set_input_delay -clock clock  -max 1  [get_ports Resetn]
set_input_delay -clock clock  -min 0.5  [get_ports Resetn]
set_input_delay -clock clock  -max 1  [get_ports {DIN[8]}]
set_input_delay -clock clock  -min 0.5  [get_ports {DIN[8]}]
set_input_delay -clock clock  -max 1  [get_ports {DIN[7]}]
set_input_delay -clock clock  -min 0.5  [get_ports {DIN[7]}]
set_input_delay -clock clock  -max 1  [get_ports {DIN[6]}]
set_input_delay -clock clock  -min 0.5  [get_ports {DIN[6]}]
set_input_delay -clock clock  -max 1  [get_ports {DIN[5]}]
set_input_delay -clock clock  -min 0.5  [get_ports {DIN[5]}]
set_input_delay -clock clock  -max 1  [get_ports {DIN[4]}]
set_input_delay -clock clock  -min 0.5  [get_ports {DIN[4]}]
set_input_delay -clock clock  -max 1  [get_ports {DIN[3]}]
set_input_delay -clock clock  -min 0.5  [get_ports {DIN[3]}]
set_input_delay -clock clock  -max 1  [get_ports {DIN[2]}]
set_input_delay -clock clock  -min 0.5  [get_ports {DIN[2]}]
set_input_delay -clock clock  -max 1  [get_ports {DIN[1]}]
set_input_delay -clock clock  -min 0.5  [get_ports {DIN[1]}]
set_input_delay -clock clock  -max 1  [get_ports {DIN[0]}]
set_input_delay -clock clock  -min 0.5  [get_ports {DIN[0]}]
set_output_delay -clock clock  -max 1  [get_ports {Bus[8]}]
set_output_delay -clock clock  -min 0.5  [get_ports {Bus[8]}]
set_output_delay -clock clock  -max 1  [get_ports {Bus[7]}]
set_output_delay -clock clock  -min 0.5  [get_ports {Bus[7]}]
set_output_delay -clock clock  -max 1  [get_ports {Bus[6]}]
set_output_delay -clock clock  -min 0.5  [get_ports {Bus[6]}]
set_output_delay -clock clock  -max 1  [get_ports {Bus[5]}]
set_output_delay -clock clock  -min 0.5  [get_ports {Bus[5]}]
set_output_delay -clock clock  -max 1  [get_ports {Bus[4]}]
set_output_delay -clock clock  -min 0.5  [get_ports {Bus[4]}]
set_output_delay -clock clock  -max 1  [get_ports {Bus[3]}]
set_output_delay -clock clock  -min 0.5  [get_ports {Bus[3]}]
set_output_delay -clock clock  -max 1  [get_ports {Bus[2]}]
set_output_delay -clock clock  -min 0.5  [get_ports {Bus[2]}]
set_output_delay -clock clock  -max 1  [get_ports {Bus[1]}]
set_output_delay -clock clock  -min 0.5  [get_ports {Bus[1]}]
set_output_delay -clock clock  -max 1  [get_ports {Bus[0]}]
set_output_delay -clock clock  -min 0.5  [get_ports {Bus[0]}]
set_output_delay -clock clock  -max 1  [get_ports Done]
set_output_delay -clock clock  -min 0.5  [get_ports Done]
