#! /usr/bin/perl
open FH, "<$ARGV[0]";
while(<FH>) 
{
chomp($file_name = $_);
print "$. File is $file_name\n";
open FH1, "<$file_name" or die "File not found\n";
while(<FH1>)
{
print $_;
}
}
close FH1;
}
close FH
