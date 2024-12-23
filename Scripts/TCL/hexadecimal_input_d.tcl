#! /usr/bin/tclsh

############################################################
proc hexdecimal_conv {Decimal} {
}
############################################################
#User input Vector Size
puts "Enter the Input vector Size : "
gets stdin Size_t
set Size [expr 2**$Size_t]
puts "The Possible Number for $Size_t from 0 to $Size"
for {set i 0} {$i<$Size} {incr i} {
# Converting to Decimal to Hexadecimal only Intger part
#puts "$i"
set hexdec_num [list ]
set a $i

if {$a == 0} {
set hexdec_num 0
puts "$i : $hexdec_num"
} elseif {$a == 1} {
set hexdec_num 1
puts "$i : $hexdec_num"
} else {
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
puts "$i : $hex_num"
}
}
