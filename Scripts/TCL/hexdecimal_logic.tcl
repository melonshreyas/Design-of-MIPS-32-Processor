proc hexdecimal_conv{Decimal} {
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
puts "The Hexadecimal Number of $i is : $hexdec_num"
}
