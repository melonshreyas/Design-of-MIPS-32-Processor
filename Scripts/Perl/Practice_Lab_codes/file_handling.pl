#! /usr/bin/perl
open FH1,"<file.txt" or die "Error in opening file";
while(<FH1>)
{
print "$_";
}
print"End of the line\n";
close (FH1);

