#! /usr/bin/tclsh
set FH1 [open "Input.txt" w+]
puts $FH1 "Shreyas S Bagi"
puts $FH1 "Medha "
puts $FH1 " "
puts $FH1 "21MVD0072"
puts $FH1 "21MVD0086"
close $FH1

set FH1 [open "Input.txt" r+]
set FH2 [read $FH1]
#puts $FH2
set line_cnt 0
set word_cnt 0
set letter_cnt 0
set FH3 [open "Input.txt" r+]
while {$FH3 > 0} {
if {[gets $FH3 data] > 0} {
puts "$data"
} else {
puts "Empty line"
}
}

