#!/usr/local/bin/perl -w
use warnings;
use strict;
print"Guess a Number If it Matches displayes 'Yes' otherwise 'No' : ";
my $num = <STDIN>;
chop ($num);
my $x = "";
$x = "hello";
if ($x ne "goodbye" or $x eq "farewell") 
{
my $result = $num eq 0 ? "Yes":"No";
print"$result\n";
}
