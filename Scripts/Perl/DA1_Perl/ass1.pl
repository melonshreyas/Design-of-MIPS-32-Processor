
#! /usr/bin/perl -w
use warnings;
#The @ARGV is special array read the characters from Command line argument
@NUM=@ARGV;
#The numbe should be entered with space otherwise treats as single number and stored at index 0 of array NUM
print "The Number List :@NUM\n";
print "Finding Average of the Numbers: \n";
$Average = &avg_num (@NUM); 
print"The Average Number is : $Average\n";

# Defined a Subroutine for calculating the Average
sub avg_num 
{
# The passed value stored in @_ by default and store it in temp array
@temp = @_;
my $len=@temp;
my $i;
my $SUM=0;
my $AVG=0;
foreach $i(@temp)
{
$SUM += $i;
}
$AVG=$SUM/$len;
return $AVG; # Since we need just average hence returning scalar value
}




