set_app_options -name lib.workspace.group_libs_combine_physical_only -value false
set_app_options -name lib.workspace.fast_exploration -value true
set_app_options -name lib.workspace.write_script_write_process_workspace -value true
set_app_options -name lib.workspace.create_cached_lib -value true
set_app_options -name lib.workspace.allow_read_aggregate_lib -value true
# workspace saed14io_v:
create_workspace saed14io_v
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/db_nldm/saed14io_fc_ss0p72v125c_1p62v.db
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/db_nldm/saed14io_wb_ss0p72v125c_1p62v.db
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/db_nldm/saed14io_fc_ss0p72vm40c_1p62v.db
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/db_nldm/saed14io_wb_ss0p72vm40c_1p62v.db
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/db_nldm/saed14io_fc_ff0p88vm40c_1p96v.db
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/db_nldm/saed14io_wb_ff0p88vm40c_1p96v.db
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/db_nldm/saed14io_fc_ff0p88v125c_1p96v.db
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/db_nldm/saed14io_wb_ff0p88v125c_1p96v.db
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/db_nldm/saed14io_fc_tt0p8v125c_1p8v.db
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/db_nldm/saed14io_wb_tt0p8v125c_1p8v.db
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/db_nldm/saed14io_fc_tt0p8vm40c_1p8v.db
read_db /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/db_nldm/saed14io_wb_tt0p8vm40c_1p8v.db
read_ndm /home/synopsys/SAED14nm_EDK/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/ndm/saed14io_fc_frame_only.ndm
process_workspaces -check_options {-allow_missing} -force -output CLIBs/saed14io_v.ndm
remove_workspace


