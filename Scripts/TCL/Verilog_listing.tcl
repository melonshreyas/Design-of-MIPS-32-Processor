#! /usr/bin/tclsh
set Dir_name $argv
puts "The Directory Path: $Dir_name"

set listfiles [glob -dir $Dir_name *]
set i 1
foreach filevar $listfiles {
puts "$i) $filevar"
incr i
}
puts "--------------------------------NOTE---------------------------------------------"
puts "Enter The last Directory of the Path only"
puts "Choose Whether you want to display Testbench file or Design file"
gets stdin folderselect
#puts "$folderselect"
puts "-----------------------VERILOG FILE DISPLAY PART----------------------------------"
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
set File_content [open "$Verilog_file" r]
puts "###########################################################"
puts ""
puts "#*#*#*#*#*#*#**#*#*#*$verilogmodule #*#*#*#*#*#**#*#*#*#*#*#*#*"
puts ""
while {[gets $File_content Data] >= 0} {
puts "$Data"
}
puts ""
puts "########################################################"
puts "End of Verilog File"
close $File_content
