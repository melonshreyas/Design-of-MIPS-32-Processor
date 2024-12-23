#! /usr/bin/tclsh 
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
set bin_num [string map {" " ""} $binary_num]
puts "The Binary Number of $Decimal is : $bin_num" 

# Converting to Decimal to Octal only Intger part
set octal_num [list ]
set a $Decimal
while {$a != 0} {
#puts "Entered loop"
set x [expr $a%8]
#puts "$x"
lappend octal_num $x
set a [expr $a/8]
}
set octal_num [lreverse $octal_num]
set oct_num [string map {" " ""} $octal_num]
puts "The Octal Number of $Decimal is : $oct_num"

# Converting to Decimal to Hexadecimal only Intger part
set hexdec_num [list ]
set a $Decimal
while {$a != 0} {
#puts "Entered loop"
set x [expr $a%16]
#puts "$x"
if {$x == 10} {
set x A
} elseif {$x == 11} {
set x B
} elseif {$x == 12} {
set x C
} elseif {$x == 13} {
set x D
} elseif {$x == 14} {
set x E
} elseif {$x == 15} {
set x F
}
lappend hexdec_num $x
set a [expr $a/16]
}
set hexdec_num [lreverse $hexdec_num]
set hex_num [string map {" " ""} $hexdec_num]
puts "The Hexadecimal Number of $Decimal is : $hex_num"

