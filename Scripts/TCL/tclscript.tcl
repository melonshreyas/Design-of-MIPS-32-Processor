#! /usr/bin/tclsh
set a 10
set b 20

# Varible Substitution Syntax
# $VarName
# return type in TCL is string type
set c $b
set c $b.1
set c $b+$b+$b

# Command Substitution Synax
# Syntax is [script]
set res [expr $a+$b]
set a "b-3 is [expr $b-3]"
puts "$a"

# Controlling Word Structure

# 1. Curly braces ----> prevent breaks and prevents substitution of commands
set a {[expr $b*$c]}
puts "$a"

set d 100
# 2. Double-quotes -----> prevent breaks
set a "d is $d; b is $b; c is $c"
puts "$a"

#3. Backslash substitution -------> Remove special meaning and escape the meaning of special character or Escape Character
set r word\ with\$\ and\ space
puts "$r"

set q Shreyas\ S\ Bagi\ Roll\ No\ 21MVD0086
puts "$q"

#4. Combination of Curly braces and Double quotes
set f 25
set g 22
set a {[expr $g+$f]}
# No Substitution occurs inside braces.
puts "$a"

#Expr
set res [expr 5.0/2+6]
puts "$res"

# Array Representation
puts "Array Representation"

set x(XYZ) 44
set x(2) [expr $x(XYZ) + 6]
set x(1ABC) 40
set x(3) 54
#array names x
puts "[array names x]"

# Using Multiple line comments
if {0} {
Using \i\f loop \f\o\r multiple line comment by making logic 0
there are other ways also to create it aslo.
}

#Fake 2-D arrays
puts "****######Square Matix Entry by user #####****"
puts "Enter the No. of Rows==No.of Columns in Matrix"
gets stdin Arraysize

puts "Enter Square matrix Elements"
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

set Name_list [list ]
puts "Enter the Name"
gets stdin Name
lappend Name_list $Name
puts "$Name_list"



