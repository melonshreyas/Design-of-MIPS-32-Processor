#! /usr/bin/tclsh

if 0 {
set listfiles [glob *]
puts $listfiles
set a {XYZ EGGS $ASADS}
puts $a
set b 12
puts $b
append b 25 123
puts $b
#puts "\a"
incr b 10
puts $b

######################### Array ################################
# set arrayname(elementname) value
set Earnings(Jan) 123
set Earnings(Feb) 456
set Earnings(Mar) 789
#puts [array size Earnings]

#for {set i 1} {$i<=[array size Earnings]} {incr i} {
#puts $Earnings($i)
#}
puts ""
foreach x [array names Earnings] {
#puts "Earnings($x) : $Earnings($x)"
puts $x
}

##############################################################

set msg ""
foreach i {1 2 3} {
append msg "$i sqaured is [expr $i*$i]\n"
}
append msg $b
puts $msg

if 0 {
puts " ********** FAKE 2D ARRAY *******************"
#Fake 2-D arrays
puts "****######Square Matix Entry by user #####****"
puts "Enter the No. of Rows==No.of Columns in Matrix"
gets stdin Arraysize

puts "Enter Square matrix Elements"
puts "The element is rowentry mode and press enter after each number written"
for {set k 1} {$k <= $Arraysize} {incr k} {
for {set l 1 } {$l <= $Arraysize} {incr l} {
gets stdin A($k,$l)
}
}

for {set i 1} {$i <= $Arraysize} {incr i} {
for {set j 1} {$j <= $Arraysize} {incr j} {
puts "The Matix element of $i,$j is $A($i,$j)"
}
}
#######################################################
puts "Enter the Number of students for data entry"
gets stdin Student_cnt
for {set i 0} {$i < $Student_cnt} {incr i} {
puts "Enter the Student name: "
gets stdin Student_name
puts "Enter the Roll Number: "
gets stdin Rollnumber
set Student($Student_name) $Rollnumber
}
puts [array names Student_name]
}

set list1 [list 123 456 789 ABC DEF GHI]
set list2 [list {159} {263} {478} {ABF} {EDR}]
puts [llength $list1]

set var {orange blue red green}
puts [lrange $var 0 3]

}

#puts [exec ls]
set FH1 [open "Input.txt" w+]
puts $FH1 "Shreyas S Bagi"
puts $FH1 " "
puts $FH1 " "
puts $FH1 " "
puts $FH1 "21MVD0086"
close $FH1

set FH1 [open "Input.txt" r+]
set FH2 [read $FH1]
#puts $FH2
set line_cnt 0
set word_cnt 0
set letter_cnt 0
set FH3 [open "Input.txt" r+]
while {[gets $FH3 data] > 0} {
incr line_cnt
puts $data
set word_cnt1 0
foreach Words_read [split $data] {
incr word_cnt1
set letter_cnt1 0
foreach letter_read [split $Words_read ""] {
incr letter_cnt1
}
set letter_cnt [expr $letter_cnt+$letter_cnt1]
}
set word_cnt [expr $word_cnt+$word_cnt1]
}
puts "Total Number of lines in this file is $line_cnt"
puts "Total Number of words in this file is $word_cnt"
puts "Total Number of letter in this file is $letter_cnt"

if 0 {
set data_space [split $data]
puts $data_space
set data_letters [split $data_space]
puts $data_letters
}


