set_app_options -name lib.workspace.group_libs_combine_physical_only -value false
set_app_options -name lib.workspace.fast_exploration -value true
set_app_options -name lib.workspace.write_script_write_process_workspace -value true
set_app_options -name lib.workspace.create_cached_lib -value true
set_app_options -name lib.workspace.allow_read_aggregate_lib -value true
# workspace saed14hvt_tt0p8v125c:
create_workspace saed14hvt_tt0p8v125c
read_db /home/synopsys/SAED14nm_EDK/stdcell_hvt/db_nldm/saed14hvt_tt0p8v125c.db
read_ndm /home/synopsys/SAED14nm_EDK/stdcell_hvt/ndm/saed14hvt_frame_only.ndm
process_workspaces -check_options {-allow_missing} -force -output CLIBs/saed14hvt_tt0p8v125c.ndm
remove_workspace


