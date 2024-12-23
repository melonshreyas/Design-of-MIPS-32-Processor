#! /usr/bin/perl 
print"Enter File location:";
my $filename=<STDIN>;
print"The Contents of File is: \n";
print"#######################################################\n";
open FH1, "<$filename" or die "Error in opening File:$!";
while(<FH1>)
{
print $_;
}
print"#######################################################\n";
close(FH1);

open FH1, "<$filename" or die "Error in opening File:$!";
$k=0;
@Arr=<FH1>;
$len=$#Arr+1; # To calculate length or total element= Highest index+1
print"#######################################################\n";
print"The contents backwards, line by line, and character-by-character on each line:";
for(my $i=$len;$i>-1;$i--)
{
$k=reverse($Arr[$i]);
print $k;
}
print"\n#####################################################\n";
close(FH1);
