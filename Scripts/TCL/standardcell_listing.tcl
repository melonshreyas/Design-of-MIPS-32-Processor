#! /usr/bin/tclsh
set Netlist_name $argv
puts "The Netlist Filename Path: $Netlist_name"
puts "$Netlist_name"
set File_content [open "$Netlist_name" r]
puts "###########################################################"
puts ""
puts "#*#*#*#*#*#*#**#*#*#* #*#*#*#*#*#**#*#*#*#*#*#*#*"
puts ""
set cnt 0

while {[gets $File_content Data] >= 0} {
#puts "$Data"
set cnt [expr $cnt+1]
regexp {(\w+.+\d+\s)} $Data matched matched1
#puts "$matched1"
regexp {(\w+.*\d+)\s*[U]?\d+} $matched matched1 matched2
puts "$matched2"
}

puts "Total Number of Lines is $cnt"
puts "########################################################"
puts "End of Verilog File"
close $File_content