#set Synopsys Auto Setup flow from minimum setup
set synopsys_auto_setup true

set DESIGN_REF_PATH "/home/synopsys/SAED14nm_EDK"

set_svf Simple_Processor.svf; 
# SVF file

read_db -tech " \
${DESIGN_REF_PATH}/stdcell_hvt/db_nldm/saed14hvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_lvt/db_nldm/saed14lvt_tt0p8v125c.db \
${DESIGN_REF_PATH}/stdcell_rvt/db_nldm/saed14rvt_tt0p8v125c.db"

read_verilog -r ./controller_12_april.v
read_verilog -r ./Datapath_path_work_version_2.v
read_verilog -r ./Decoders.v
read_verilog -r ./Simple_Processor_Top_Module.v

set_top simple_processor_Top

read_verilog -i ./Simple_Processor_netlist.v

set_top simple_processor_Top

match
verify

report_guidance -summary

