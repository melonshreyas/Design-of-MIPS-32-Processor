set search_path {. .}
set NDM_LIBS {}
set FRAME_LIBS {/home/synopsys/SAED14nm_EDK/stdcell_rvt/ndm/saed14rvt_frame_only.ndm /home/synopsys/SAED14nm_EDK/stdcell_hvt/ndm/saed14hvt_frame_only.ndm /home/synopsys/SAED14nm_EDK/stdcell_lvt/ndm/saed14lvt_frame_only.ndm /home/synopsys/SAED14nm_EDK/stdcell_slvt/ndm/saed14slvt_frame_only.ndm}
set LEF_FILES {}
set DB_FILES {/home/synopsys/SAED14nm_EDK/stdcell_rvt/db_nldm/saed14rvt_tt0p8v125c.db /home/synopsys/SAED14nm_EDK/stdcell_hvt/db_nldm/saed14hvt_tt0p8v125c.db /home/synopsys/SAED14nm_EDK/stdcell_lvt/db_nldm/saed14lvt_tt0p8v125c.db}
set TECH_FILE "/home/synopsys/SAED14nm_EDK/tech/milkyway/saed14nm_1p9m_mw.tf"
set LIB_PATH CLIBs
setenv GROUP_LIBS_DUMP_FILE /tmp/.tARL1582/_lgRxmHqW

set_app_options -name lib.workspace.group_libs_combine_physical_only -value false
set_app_options -name lib.workspace.fast_exploration -value true
set_app_options -name lib.workspace.write_script_write_process_workspace -value true
set_app_options -name lib.workspace.create_cached_lib -value true
#suppress_messages

set_app_options -name lib.workspace.allow_read_aggregate_lib -value true
create_workspace EXPLORE -flow exploration -scale_factor 10000
foreach frame $FRAME_LIBS {
  read_ndm $frame
}
read_db $DB_FILES
group_libs

write_workspace -directory ./.scripts -commit_output $LIB_PATH -check_options {-allow_missing} -commit_options {-force}
remove_workspace

exit
