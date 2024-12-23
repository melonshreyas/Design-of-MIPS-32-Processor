#! /usr/bin/perl

# For Loop
print'Enter the Number of Lines to read from Keyboard:';
$i=<STDIN>;
chomp($i);
@Read=(); #Empty array
for($k=1;$k<=$i;$k++)
{
print"Enter $k line sentence:\t";
$Read[$k-1]=<STDIN>;
chomp($Read[$k-1]);
}
print" \nEnd of For loop\n\n";

#Loop Control
print"Enter how many numbers are needed to separate as Even or Odd:\t";
$e=<STDIN>;
chomp($e);
@Num=();# Empty Array
for($j=0;$j<$e;$j++)
{
$z=0;
print"Enter the number:";
#chomp declaration in another way
chomp($Num[$j]=<STDIN>);
#chomp($Num[$j]);
$z=$Num[$j] % 2;
if($z==0)
{
print"$Num[$j] is even Number\n";
}
else
{
print"$Num[$j] is odd Number\n";
}
}
print" \nEnd of For loop control\n\n";
