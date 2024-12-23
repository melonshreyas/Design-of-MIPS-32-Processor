puts "Enter the files to be compiled seperated with spaces"
gets stdin verilog_files
exec vlib work
exec vmap work work
exec vlog [lindex $verilog_files 0] > compile.log
exec vlog [lindex $verilog_files 1] >> compile.log
exec vsim -c -do run.do work.ha_tb >sim.log












