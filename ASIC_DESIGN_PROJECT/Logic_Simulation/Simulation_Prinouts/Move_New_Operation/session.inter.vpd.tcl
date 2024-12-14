# Begin_DVE_Session_Save_Info
# DVE view(Wave.1 ) session
# Saved on Tue Apr 26 23:13:18 2022
# Toplevel windows open: 2
# 	TopLevel.1
# 	TopLevel.2
#   Wave.1: 26 signals
# End_DVE_Session_Save_Info

# DVE version: O-2018.09-SP1_Full64
# DVE build date: Nov 29 2018 21:20:12


#<Session mode="View" path="/home/userdata/21mvd0086/Simple_Processor_Working/Logic_Simulation/Simulation_Prinouts/Move_New_Operation/session.inter.vpd.tcl" type="Debug">

#<Database>

gui_set_time_units 1s
#</Database>

# DVE View/pane content session: 

# Begin_DVE_Session_Save_Info (Wave.1)
# DVE wave signals session
# Saved on Tue Apr 26 23:13:18 2022
# 26 signals
# End_DVE_Session_Save_Info

# DVE version: O-2018.09-SP1_Full64
# DVE build date: Nov 29 2018 21:20:12


#Add ncecessay scopes
gui_load_child_values {simple_processor_testbench_mv_op}

gui_set_time_units 1s

set _wave_session_group_1 simple_processor_testbench_mv_op
if {[gui_sg_is_group -name "$_wave_session_group_1"]} {
    set _wave_session_group_1 [gui_sg_generate_new_name]
}
set Group1 "$_wave_session_group_1"

gui_sg_addsignal -group "$_wave_session_group_1" { {Sim:simple_processor_testbench_mv_op.Clock} {Sim:simple_processor_testbench_mv_op.Resetn} {Sim:simple_processor_testbench_mv_op.Run} {Sim:simple_processor_testbench_mv_op.Bus} {Sim:simple_processor_testbench_mv_op.DIN} {Sim:simple_processor_testbench_mv_op.Done} {Sim:simple_processor_testbench_mv_op.T3.G1_Controller.Xreg} {Sim:simple_processor_testbench_mv_op.T3.G1_Controller.Yreg} {Sim:simple_processor_testbench_mv_op.T3.G1_Controller.opcode_decoded} {Sim:simple_processor_testbench_mv_op.T3.G1_Controller.Sel} {Sim:simple_processor_testbench_mv_op.T3.G1_Controller.PS} {Sim:simple_processor_testbench_mv_op.T3.G1_Controller.NS} {Sim:simple_processor_testbench_mv_op.T3.G1_Controller.IR} {Sim:simple_processor_testbench_mv_op.T3.G1_Controller.IRin} {Sim:simple_processor_testbench_mv_op.T3.G1_Controller.opcode} {Sim:simple_processor_testbench_mv_op.T3.G2_Datapath.R0_data_out} {Sim:simple_processor_testbench_mv_op.T3.G2_Datapath.R1_data_out} {Sim:simple_processor_testbench_mv_op.T3.G2_Datapath.R2_data_out} {Sim:simple_processor_testbench_mv_op.T3.G2_Datapath.R3_data_out} {Sim:simple_processor_testbench_mv_op.T3.G2_Datapath.R4_data_out} {Sim:simple_processor_testbench_mv_op.T3.G2_Datapath.R5_data_out} {Sim:simple_processor_testbench_mv_op.T3.G2_Datapath.R6_data_out} {Sim:simple_processor_testbench_mv_op.T3.G2_Datapath.R7_data_out} {Sim:simple_processor_testbench_mv_op.T3.G2_Datapath.A_data_out} {Sim:simple_processor_testbench_mv_op.T3.G2_Datapath.Sum} {Sim:simple_processor_testbench_mv_op.T3.G2_Datapath.G} }
if {![info exists useOldWindow]} { 
	set useOldWindow true
}
if {$useOldWindow && [string first "Wave" [gui_get_current_window -view]]==0} { 
	set Wave.1 [gui_get_current_window -view] 
} else {
	set Wave.1 [lindex [gui_get_window_ids -type Wave] 0]
if {[string first "Wave" ${Wave.1}]!=0} {
gui_open_window Wave
set Wave.1 [ gui_get_current_window -view ]
}
}

set groupExD [gui_get_pref_value -category Wave -key exclusiveSG]
gui_set_pref_value -category Wave -key exclusiveSG -value {false}
set origWaveHeight [gui_get_pref_value -category Wave -key waveRowHeight]
gui_list_set_height -id Wave -height 25
set origGroupCreationState [gui_list_create_group_when_add -wave]
gui_list_create_group_when_add -wave -disable
gui_marker_set_ref -id ${Wave.1}  C1
gui_wv_zoom_timerange -id ${Wave.1} 0 225
gui_list_add_group -id ${Wave.1} -after {New Group} [list ${Group1}]
gui_list_select -id ${Wave.1} {simple_processor_testbench_mv_op.T3.G1_Controller.NS }
gui_seek_criteria -id ${Wave.1} {Any Edge}


gui_set_pref_value -category Wave -key exclusiveSG -value $groupExD
gui_list_set_height -id Wave -height $origWaveHeight
if {$origGroupCreationState} {
	gui_list_create_group_when_add -wave -enable
}
if { $groupExD } {
 gui_msg_report -code DVWW028
}
gui_list_set_filter -id ${Wave.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Wave.1} -text {*}
gui_list_set_insertion_bar  -id ${Wave.1} -group ${Group1}  -item simple_processor_testbench_mv_op.Run -position below

gui_marker_move -id ${Wave.1} {C1} 90
gui_view_scroll -id ${Wave.1} -vertical -set 0
gui_show_grid -id ${Wave.1} -enable false
#</Session>

