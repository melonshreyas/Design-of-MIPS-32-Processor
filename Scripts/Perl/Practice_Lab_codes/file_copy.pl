#! /usr/bin/perl
open FH1,"<../file1.txt" or die "Error in opening file";
open FH2,">file2.txt";
while(<FH1>)
{
print FH2"$_";
}

