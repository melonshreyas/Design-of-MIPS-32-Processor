# Begin_DVE_Session_Save_Info
# DVE view(Hier.1 ) session
# Saved on Tue May 17 19:13:32 2022
# Toplevel windows open: 2
# 	TopLevel.1
# 	TopLevel.2
# End_DVE_Session_Save_Info

# DVE version: O-2018.09-SP1_Full64
# DVE build date: Nov 29 2018 21:20:12


#<Session mode="View" path="/home/userdata/21mvd0086/Simple_Processor_Working/Gate_Level_Synthesis/Gate_Level_Simulation/gls/AddOperation1.inter.vpd.tcl" type="Debug">

#<Database>

gui_set_time_units 1s
#</Database>

# DVE View/pane content session: 


# Hier 'Hier.1'
if { [expr {[gui_ck_how_many_open_in_toplevel Hier] > 0}] } {
	set Hier.1 [lindex [gui_get_window_ids -type Hier -active_parent] 0]
} else {
	gui_open_window Hier
set Hier.1 [ gui_get_current_window -view ]
}
set selectedCount [gui_list_get_selected -id ${Hier.1} -count]
if {$selectedCount != 0} {
   set selected [lindex [lindex [gui_list_get_selected -id ${Hier.1} -first] 0] 0]
   gui_list_select -id ${Hier.1}  -current_item_name simple_processor_testbench_add_op.T1.G1_Controller -current_item_type Scope  $selected 
}
gui_show_window -window ${Hier.1}
gui_list_set_filter -id ${Hier.1} -list { {Package 1} {All 0} {Process 1} {VirtPowSwitch 0} {UnnamedProcess 1} {UDP 0} {Function 1} {Block 1} {SrsnAndSpaCell 0} {OVA Unit 1} {LeafScCell 1} {LeafVlgCell 1} {Interface 1} {LeafVhdCell 1} {$unit 1} {NamedBlock 1} {Task 1} {VlgPackage 1} {ClassDef 1} {VirtIsoCell 0} }
gui_list_set_filter -id ${Hier.1} -text {*}
gui_change_design -id ${Hier.1} -design Sim
catch {gui_list_expand -id ${Hier.1} simple_processor_testbench_add_op}
catch {gui_list_expand -id ${Hier.1} simple_processor_testbench_add_op.T1}
catch {gui_list_select -id ${Hier.1} {simple_processor_testbench_add_op.T1.G1_Controller}}
gui_view_scroll -id ${Hier.1} -vertical -set 99854
gui_view_scroll -id ${Hier.1} -horizontal -set 0
#</Session>

