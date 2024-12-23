#! /usr/bin/tclsh
set Dir_name $argv
puts "The Directory Path: $Dir_name"
puts "$Dir_name"
set listfiles [glob -dir $Dir_name *]
set i 1

foreach filevar $listfiles {
puts "$i) $filevar"
incr i
}

puts " --------------------------------NOTE-------------------------------------------  "
puts " 				Enter The last Directory of the Path only 							"
puts " -*-*-*-*-*-*NOTE-*-*-*-* NOTE -*-*NOTE-*-*NOTE-*-*-*-*-*-*-*-* 					"
puts " ***************************Enter the Only Design File**************************  "
gets stdin folderselect
puts "$folderselect"
set Verilog_name [concat $Dir_name$folderselect]
set veriloglist [glob -dir $Verilog_name *.v]
set j 1

foreach filevar1 $veriloglist {
puts "$j) $filevar1"
incr j
}

puts "Enter the Verilog file with ------ NO extension ----provide from above list"
gets stdin Verilog_file
set verilogmodule $Verilog_file
set ext {.v}
set fileform {/}
set Verilog_file [concat $Dir_name$folderselect$fileform$Verilog_file$ext]
puts "$Verilog_file"

########################################################################################
puts "-*-*-*-*-*-*NOTE-*-*-*-* NOTE -*-*NOTE-*-*NOTE-*-*-*-*-*-*-*-*"
puts "--------------------------------NOTE---------------------------------------------"
puts "**Enter the Only Testbench Module File**"
puts "The Directory Path: $Dir_name"
puts "Type in Keyboard as Testbench"
gets stdin folderselect
set Verilog_name [concat $Dir_name$folderselect]
set veriloglist [glob -dir $Verilog_name *.v]
set j 1

foreach filevar1 $veriloglist {
puts "$j) $filevar1"
incr j
}

puts "Enter the Verilog file with ------ NO extension ----provide from above list"
gets stdin Verilogtb_file
set verilogtbmodule $Verilogtb_file
set ext {.v}
set fileform {/}
set Verilogtb_file [concat $Dir_name$folderselect$fileform$Verilogtb_file$ext]
puts "$Verilogtb_file"

##############################################################

puts "The files to be compiled"
set verilog_files [list $Verilog_file $Verilogtb_file]

exec vlib work
exec vmap work work
exec vlog [lindex $verilog_files 0] > compile.log
exec vlog [lindex $verilog_files 1] >> compile.log
exec vsim -c -do run.do work.ha_tb >sim.log
