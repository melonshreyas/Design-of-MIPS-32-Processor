#! /usr/bin/perl
$_="Hello Good Morning everybody\n I am Shreyas S Bagi studying M.Tech in VLSI Design at VIT\n";
if($_=~ m/(\w+yas\s\w\s\w+gi)/)
{
print "Found this word\n";
$Name=$1;
print"$Name\n";
}
$a="My Roll Number is 21MVD0086.\n";
if($a= ~/\d+\w+\d+/)
{
print"Number found\n";
}
$b="On 11th October is was Scripting Lab at 9:50am\n";
if($b =~ /(\w+)\s(\w+)\s(\w+)/)
{
print"$1\t$2\t$3\n";
}
else
{
print"Doesnot match\n";
}
