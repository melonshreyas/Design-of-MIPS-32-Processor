set_app_options -name lib.workspace.group_libs_combine_physical_only -value false
set_app_options -name lib.workspace.fast_exploration -value true
set_app_options -name lib.workspace.write_script_write_process_workspace -value true
set_app_options -name lib.workspace.create_cached_lib -value true
set_app_options -name lib.workspace.allow_read_aggregate_lib -value true
# workspace saed14io_v_physical_only:
create_workspace -flow physical_only saed14io_v_physical_only
set_app_options -name lib.workspace.include_design_filters -value { BONDPAD BREAKCORE BREAKIO CORNER FILLER FILLER01 FILLER1 FILLER5}
read_ndm /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/ndm/saed14io_fc_frame_only.ndm
reset_app_options lib.workspace.include_design_filters
process_workspaces -check_options {-allow_missing} -force -output CLIBs/saed14io_v_physical_only.ndm
remove_workspace


