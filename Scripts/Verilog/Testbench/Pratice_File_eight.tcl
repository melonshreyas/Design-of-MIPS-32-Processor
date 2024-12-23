#! /usr/bin/tclsh
proc ldelete {list1} {
set new4 {}
foreach item $list1 {
if {$item ni $new4} {
lappend new4 $item
}
}
return $new4
}

set FH1 [open "Input.txt" w+]
puts $FH1 "Shreyas S Bagi Shreyas S Bagi"
puts $FH1 " "
puts $FH1 " "
puts $FH1 " "
puts $FH1 "21MVD0086 21MVD0086 "
puts $FH1 " "
puts $FH1 " "
puts $FH1 "21MVD0085"
puts $FH1 " "
puts $FH1 " "
puts $FH1 " "
puts $FH1 "21MVD0086"
close $FH1

#set FH1 [open "Input.txt" r+]
#set FH2 [read $FH1]
set FH3 [open "Input.txt" r+]
set FH4 [open "Input_Copy_remove.txt" w+]
while {[gets $FH3 data] >= 0} {
#puts "$data"
if {$data > 0} {
puts "$data"
puts $FH4 $data
}
}
if {[eof $FH3]} {
close $FH3
puts "Closing File"
}

set list2 [list ABCD XYZ ABCD XYZ ABCD ADFC ABCD ZZZZ CCCC VVV]
set result [ldelete $list2]
puts "$result"


puts "$list2"
puts "**************************"
puts "$result"
