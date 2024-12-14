# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Mon May 2 18:04:58 2022
# Designs open: 1
#   Sim: /home/userdata/21mvd0086/Simple_Processor_Working/Logic_Simulation/output_file
# Toplevel windows open: 1
# 	TopLevel.1
#   Source.1: simple_processor_testbench_add_op
#   Group count = 3
#   Group simple_processor_testbench_add_op signal count = 8
# End_DVE_Session_Save_Info

# DVE version: O-2018.09-SP1_Full64
# DVE build date: Nov 29 2018 21:20:12


#<Session mode="Full" path="/home/userdata/21mvd0086/Simple_Processor_Working/Logic_Simulation/DVEfiles/session.tcl" type="Debug">

gui_set_loading_session_type Post
gui_continuetime_set

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all

# Close all windows
gui_close_window -type Console
gui_close_window -type Wave
gui_close_window -type Source
gui_close_window -type Schematic
gui_close_window -type Data
gui_close_window -type DriverLoad
gui_close_window -type List
gui_close_window -type Memory
gui_close_window -type HSPane
gui_close_window -type DLPane
gui_close_window -type Assertion
gui_close_window -type CovHier
gui_close_window -type CoverageTable
gui_close_window -type CoverageMap
gui_close_window -type CovDetail
gui_close_window -type Local
gui_close_window -type Stack
gui_close_window -type Watch
gui_close_window -type Group
gui_close_window -type Transaction



# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,18,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.1

if {![gui_exist_window -window TopLevel.1]} {
    set TopLevel.1 [ gui_create_window -type TopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set TopLevel.1 TopLevel.1
}
gui_show_window -window ${TopLevel.1} -show_state normal -rect {{4 51} {1917 1050}}

# ToolBar settings
gui_set_toolbar_attributes -toolbar {TimeOperations} -dock_state top
gui_set_toolbar_attributes -toolbar {TimeOperations} -offset 0
gui_show_toolbar -toolbar {TimeOperations}
gui_hide_toolbar -toolbar {&File}
gui_set_toolbar_attributes -toolbar {&Edit} -dock_state top
gui_set_toolbar_attributes -toolbar {&Edit} -offset 0
gui_show_toolbar -toolbar {&Edit}
gui_hide_toolbar -toolbar {CopyPaste}
gui_set_toolbar_attributes -toolbar {&Trace} -dock_state top
gui_set_toolbar_attributes -toolbar {&Trace} -offset 0
gui_show_toolbar -toolbar {&Trace}
gui_hide_toolbar -toolbar {TraceInstance}
gui_hide_toolbar -toolbar {BackTrace}
gui_set_toolbar_attributes -toolbar {&Scope} -dock_state top
gui_set_toolbar_attributes -toolbar {&Scope} -offset 0
gui_show_toolbar -toolbar {&Scope}
gui_set_toolbar_attributes -toolbar {&Window} -dock_state top
gui_set_toolbar_attributes -toolbar {&Window} -offset 0
gui_show_toolbar -toolbar {&Window}
gui_set_toolbar_attributes -toolbar {Signal} -dock_state top
gui_set_toolbar_attributes -toolbar {Signal} -offset 0
gui_show_toolbar -toolbar {Signal}
gui_set_toolbar_attributes -toolbar {Zoom} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom} -offset 0
gui_show_toolbar -toolbar {Zoom}
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -offset 0
gui_show_toolbar -toolbar {Zoom And Pan History}
gui_set_toolbar_attributes -toolbar {Grid} -dock_state top
gui_set_toolbar_attributes -toolbar {Grid} -offset 0
gui_show_toolbar -toolbar {Grid}
gui_set_toolbar_attributes -toolbar {Simulator} -dock_state top
gui_set_toolbar_attributes -toolbar {Simulator} -offset 0
gui_show_toolbar -toolbar {Simulator}
gui_set_toolbar_attributes -toolbar {Interactive Rewind} -dock_state top
gui_set_toolbar_attributes -toolbar {Interactive Rewind} -offset 0
gui_show_toolbar -toolbar {Interactive Rewind}
gui_set_toolbar_attributes -toolbar {Testbench} -dock_state top
gui_set_toolbar_attributes -toolbar {Testbench} -offset 0
gui_show_toolbar -toolbar {Testbench}

# End ToolBar settings

# Docked window settings
set HSPane.1 [gui_create_window -type HSPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 823]
catch { set Hier.1 [gui_share_window -id ${HSPane.1} -type Hier] }
gui_set_window_pref_key -window ${HSPane.1} -key dock_width -value_type integer -value 823
gui_set_window_pref_key -window ${HSPane.1} -key dock_height -value_type integer -value -1
gui_set_window_pref_key -window ${HSPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${HSPane.1} {{left 0} {top 0} {width 822} {height 651} {dock_state left} {dock_on_new_line true} {child_hier_colhier 727} {child_hier_coltype 85} {child_hier_colpd 0} {child_hier_col1 0} {child_hier_col2 1} {child_hier_col3 -1}}
set DLPane.1 [gui_create_window -type DLPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 480]
catch { set Data.1 [gui_share_window -id ${DLPane.1} -type Data] }
gui_set_window_pref_key -window ${DLPane.1} -key dock_width -value_type integer -value 480
gui_set_window_pref_key -window ${DLPane.1} -key dock_height -value_type integer -value 672
gui_set_window_pref_key -window ${DLPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${DLPane.1} {{left 0} {top 0} {width 479} {height 651} {dock_state left} {dock_on_new_line true} {child_data_colvariable 260} {child_data_colvalue 105} {child_data_coltype 136} {child_data_col1 0} {child_data_col2 1} {child_data_col3 2}}
set Console.1 [gui_create_window -type Console -parent ${TopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 192]
gui_set_window_pref_key -window ${Console.1} -key dock_width -value_type integer -value 271
gui_set_window_pref_key -window ${Console.1} -key dock_height -value_type integer -value 192
gui_set_window_pref_key -window ${Console.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Console.1} {{left 0} {top 0} {width 1913} {height 191} {dock_state bottom} {dock_on_new_line true}}
#### Start - Readjusting docked view's offset / size
set dockAreaList { top left right bottom }
foreach dockArea $dockAreaList {
  set viewList [gui_ekki_get_window_ids -active_parent -dock_area $dockArea]
  foreach view $viewList {
      if {[lsearch -exact [gui_get_window_pref_keys -window $view] dock_width] != -1} {
        set dockWidth [gui_get_window_pref_value -window $view -key dock_width]
        set dockHeight [gui_get_window_pref_value -window $view -key dock_height]
        set offset [gui_get_window_pref_value -window $view -key dock_offset]
        if { [string equal "top" $dockArea] || [string equal "bottom" $dockArea]} {
          gui_set_window_attributes -window $view -dock_offset $offset -width $dockWidth
        } else {
          gui_set_window_attributes -window $view -dock_offset $offset -height $dockHeight
        }
      }
  }
}
#### End - Readjusting docked view's offset / size
gui_sync_global -id ${TopLevel.1} -option true

# MDI window settings
set Source.1 [gui_create_window -type {Source}  -parent ${TopLevel.1}]
gui_show_window -window ${Source.1} -show_state maximized
gui_update_layout -id ${Source.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}

# End MDI window settings

gui_set_env TOPLEVELS::TARGET_FRAME(Source) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Schematic) none
gui_set_env TOPLEVELS::TARGET_FRAME(PathSchematic) none
gui_set_env TOPLEVELS::TARGET_FRAME(Wave) none
gui_set_env TOPLEVELS::TARGET_FRAME(List) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Memory) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(DriverLoad) none
gui_update_statusbar_target_frame ${TopLevel.1}

#</WindowLayout>

#<Database>

# DVE Open design session: 

if { [llength [lindex [gui_get_db -design Sim] 0]] == 0 } {
gui_set_env SIMSETUP::SIMARGS {-V}
gui_set_env SIMSETUP::SIMEXE {output_file}
gui_set_env SIMSETUP::ALLOW_POLL {0}
if { ![gui_is_db_opened -db {/home/userdata/21mvd0086/Simple_Processor_Working/Logic_Simulation/output_file}] } {
gui_sim_run Ucli -exe output_file -args { -V -ucligui} -dir /home/userdata/21mvd0086/Simple_Processor_Working/Logic_Simulation -nosource
}
}
if { ![gui_sim_state -check active] } {error "Simulator did not start correctly" error}
gui_set_precision 1s
gui_set_time_units 1s
#</Database>

# DVE Global setting session: 


# Global: Breakpoints

# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups
gui_load_child_values {simple_processor_testbench_add_op.T1.G1_Controller}
gui_load_child_values {simple_processor_testbench_add_op}
gui_load_child_values {simple_processor_testbench_add_op.T1.G2_Datapath}


set _session_group_1 simple_processor_testbench_add_op
gui_sg_create "$_session_group_1"
set simple_processor_testbench_add_op "$_session_group_1"

gui_sg_addsignal -group "$_session_group_1" { simple_processor_testbench_add_op.Bus simple_processor_testbench_add_op.Run simple_processor_testbench_add_op.DIN simple_processor_testbench_add_op.Clock simple_processor_testbench_add_op.Resetn simple_processor_testbench_add_op.Done }

set _session_group_2 $_session_group_1|
append _session_group_2 G2_Datapath
gui_sg_create "$_session_group_2"
set simple_processor_testbench_add_op|G2_Datapath "$_session_group_2"

gui_sg_addsignal -group "$_session_group_2" { simple_processor_testbench_add_op.T1.G2_Datapath.Bus simple_processor_testbench_add_op.T1.G2_Datapath.R6in simple_processor_testbench_add_op.T1.G2_Datapath.R0out simple_processor_testbench_add_op.T1.G2_Datapath.Sum simple_processor_testbench_add_op.T1.G2_Datapath.AddSub simple_processor_testbench_add_op.T1.G2_Datapath.R2_data_out simple_processor_testbench_add_op.T1.G2_Datapath.DIN simple_processor_testbench_add_op.T1.G2_Datapath.Clock simple_processor_testbench_add_op.T1.G2_Datapath.R7in simple_processor_testbench_add_op.T1.G2_Datapath.R1out simple_processor_testbench_add_op.T1.G2_Datapath.R5_data_out simple_processor_testbench_add_op.T1.G2_Datapath.A_data_out simple_processor_testbench_add_op.T1.G2_Datapath.R0in simple_processor_testbench_add_op.T1.G2_Datapath.R2out simple_processor_testbench_add_op.T1.G2_Datapath.G simple_processor_testbench_add_op.T1.G2_Datapath.R3out simple_processor_testbench_add_op.T1.G2_Datapath.R1in simple_processor_testbench_add_op.T1.G2_Datapath.R0_data_out simple_processor_testbench_add_op.T1.G2_Datapath.Gout simple_processor_testbench_add_op.T1.G2_Datapath.R4out simple_processor_testbench_add_op.T1.G2_Datapath.DINout simple_processor_testbench_add_op.T1.G2_Datapath.R3_data_out simple_processor_testbench_add_op.T1.G2_Datapath.R2in simple_processor_testbench_add_op.T1.G2_Datapath.Gin simple_processor_testbench_add_op.T1.G2_Datapath.R5out simple_processor_testbench_add_op.T1.G2_Datapath.R6_data_out simple_processor_testbench_add_op.T1.G2_Datapath.R3in simple_processor_testbench_add_op.T1.G2_Datapath.R6out simple_processor_testbench_add_op.T1.G2_Datapath.R7out simple_processor_testbench_add_op.T1.G2_Datapath.Ain simple_processor_testbench_add_op.T1.G2_Datapath.R4in simple_processor_testbench_add_op.T1.G2_Datapath.R1_data_out simple_processor_testbench_add_op.T1.G2_Datapath.R4_data_out simple_processor_testbench_add_op.T1.G2_Datapath.R5in simple_processor_testbench_add_op.T1.G2_Datapath.R7_data_out simple_processor_testbench_add_op.T1.G2_Datapath.rst }

set _session_group_3 $_session_group_1|
append _session_group_3 G1_Controller
gui_sg_create "$_session_group_3"
set simple_processor_testbench_add_op|G1_Controller "$_session_group_3"

gui_sg_addsignal -group "$_session_group_3" { simple_processor_testbench_add_op.T1.G1_Controller.LdR0 simple_processor_testbench_add_op.T1.G1_Controller.Run simple_processor_testbench_add_op.T1.G1_Controller.T0 simple_processor_testbench_add_op.T1.G1_Controller.LdA simple_processor_testbench_add_op.T1.G1_Controller.LdR1 simple_processor_testbench_add_op.T1.G1_Controller.T1 simple_processor_testbench_add_op.T1.G1_Controller.LdR2 simple_processor_testbench_add_op.T1.G1_Controller.T2 simple_processor_testbench_add_op.T1.G1_Controller.R0out simple_processor_testbench_add_op.T1.G1_Controller.LdR3 simple_processor_testbench_add_op.T1.G1_Controller.T3 simple_processor_testbench_add_op.T1.G1_Controller.LdR4 simple_processor_testbench_add_op.T1.G1_Controller.LdR5 simple_processor_testbench_add_op.T1.G1_Controller.LdR6 simple_processor_testbench_add_op.T1.G1_Controller.LdG simple_processor_testbench_add_op.T1.G1_Controller.LdR7 simple_processor_testbench_add_op.T1.G1_Controller.DIN simple_processor_testbench_add_op.T1.G1_Controller.Clock simple_processor_testbench_add_op.T1.G1_Controller.R1out simple_processor_testbench_add_op.T1.G1_Controller.NS simple_processor_testbench_add_op.T1.G1_Controller.IR simple_processor_testbench_add_op.T1.G1_Controller.R2out simple_processor_testbench_add_op.T1.G1_Controller.Add_sub simple_processor_testbench_add_op.T1.G1_Controller.PS simple_processor_testbench_add_op.T1.G1_Controller.R3out simple_processor_testbench_add_op.T1.G1_Controller.Gout simple_processor_testbench_add_op.T1.G1_Controller.R4out simple_processor_testbench_add_op.T1.G1_Controller.DINout simple_processor_testbench_add_op.T1.G1_Controller.Resetn simple_processor_testbench_add_op.T1.G1_Controller.R5out simple_processor_testbench_add_op.T1.G1_Controller.add simple_processor_testbench_add_op.T1.G1_Controller.opcode_decoded simple_processor_testbench_add_op.T1.G1_Controller.R6out simple_processor_testbench_add_op.T1.G1_Controller.mv simple_processor_testbench_add_op.T1.G1_Controller.R7out simple_processor_testbench_add_op.T1.G1_Controller.Sel simple_processor_testbench_add_op.T1.G1_Controller.Done simple_processor_testbench_add_op.T1.G1_Controller.Xreg simple_processor_testbench_add_op.T1.G1_Controller.mvi simple_processor_testbench_add_op.T1.G1_Controller.IRin simple_processor_testbench_add_op.T1.G1_Controller.sub simple_processor_testbench_add_op.T1.G1_Controller.Yreg simple_processor_testbench_add_op.T1.G1_Controller.opcode }
gui_set_radix -radix {decimal} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.T0}
gui_set_radix -radix {unsigned} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.T0}
gui_set_radix -radix {decimal} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.T1}
gui_set_radix -radix {unsigned} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.T1}
gui_set_radix -radix {decimal} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.T2}
gui_set_radix -radix {unsigned} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.T2}
gui_set_radix -radix {decimal} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.T3}
gui_set_radix -radix {unsigned} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.T3}
gui_set_radix -radix {decimal} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.add}
gui_set_radix -radix {unsigned} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.add}
gui_set_radix -radix {decimal} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.mv}
gui_set_radix -radix {unsigned} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.mv}
gui_set_radix -radix {decimal} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.mvi}
gui_set_radix -radix {unsigned} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.mvi}
gui_set_radix -radix {decimal} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.sub}
gui_set_radix -radix {unsigned} -signals {Sim:simple_processor_testbench_add_op.T1.G1_Controller.sub}

gui_sg_move "$_session_group_3" -after "$_session_group_1" -pos 1 

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 175



# Save global setting...

# Wave/List view global setting
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 


# Hier 'Hier.1'
gui_show_window -window ${Hier.1}
gui_list_set_filter -id ${Hier.1} -list { {Package 1} {All 0} {Process 1} {VirtPowSwitch 0} {UnnamedProcess 1} {UDP 0} {Function 1} {Block 1} {SrsnAndSpaCell 0} {OVA Unit 1} {LeafScCell 1} {LeafVlgCell 1} {Interface 1} {LeafVhdCell 1} {$unit 1} {NamedBlock 1} {Task 1} {VlgPackage 1} {ClassDef 1} {VirtIsoCell 0} }
gui_list_set_filter -id ${Hier.1} -text {*}
gui_hier_list_init -id ${Hier.1}
gui_change_design -id ${Hier.1} -design Sim
catch {gui_list_expand -id ${Hier.1} simple_processor_testbench_add_op}
catch {gui_list_expand -id ${Hier.1} simple_processor_testbench_add_op.T1}
catch {gui_list_select -id ${Hier.1} {simple_processor_testbench_add_op.T1.G2_Datapath}}
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {*}
gui_list_show_data -id ${Data.1} {simple_processor_testbench_add_op.T1.G2_Datapath}
gui_view_scroll -id ${Data.1} -vertical -set 0
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_open_source -id ${Source.1}  -replace -active simple_processor_testbench_add_op /home/userdata/21mvd0086/Simple_Processor_Working/Logic_Simulation/Simple_processor_testbench_22_april_sub_work.v
gui_view_scroll -id ${Source.1} -vertical -set 0
gui_src_set_reusable -id ${Source.1}
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
	gui_set_active_window -window ${HSPane.1}
}
#</Session>

