set_app_options -name lib.workspace.group_libs_combine_physical_only -value false
set_app_options -name lib.workspace.fast_exploration -value true
set_app_options -name lib.workspace.write_script_write_process_workspace -value true
set_app_options -name lib.workspace.create_cached_lib -value true
set_app_options -name lib.workspace.allow_read_aggregate_lib -value true
# workspace saed14pll_c:
create_workspace saed14pll_c
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_PLL_v_06052019/SAED14_EDK/lib/pll/logic_synth/saed14pll_tt0p8v125c.db
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_PLL_v_06052019/SAED14_EDK/lib/pll/logic_synth/saed14pll_tt0p8vm40c.db
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_PLL_v_06052019/SAED14_EDK/lib/pll/logic_synth/saed14pll_ss0p72vm40c.db
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_PLL_v_06052019/SAED14_EDK/lib/pll/logic_synth/saed14pll_ff0p88v125c.db
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_PLL_v_06052019/SAED14_EDK/lib/pll/logic_synth/saed14pll_ss0p72v125c.db
read_ndm /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_PLL_v_06052019/SAED14_EDK/lib/pll/ndm/saed14pll_frame_only.ndm
process_workspaces -check_options {-allow_missing} -force -output CLIBs/saed14pll_c.ndm
remove_workspace


