#! /usr/bin/tclsh 
#! /usr/bin/expect
# Read Decimal Number
puts "Enter The Decimal Number: "
gets stdin Decimal

# Converting to Decimal to Binary only Intger part
set binary_num [list ]
set binary_num1 [list ]
set a $Decimal
while {$a != 0} {
#puts "Entered loop"
set x [expr $a%2]
#puts "$x"
lappend binary_num $x
set a [expr $a/2]
}
set binary_num [lreverse $binary_num]
set X [string map {" " ""} $binary_num]
puts "The Binary Number of $Decimal is : $X"
