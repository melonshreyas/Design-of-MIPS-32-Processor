#! /usr/bin/perl
@Arr=(1..10);
$len=@Arr;
@Odd=();
@Prime=();
for($i=0;$i<$len;$i++)
{
if($Arr[$i] % 2 != 0)
{
push @Odd, $Arr[$i];
}
&prime($Arr[$i]);
}
$len_prime_num=@Prime;
$len_odd_num=@Odd;
print"#################################################\n";
print"The Array List:@Arr\n";
print"The length of Array List: $len\n";
print"#################################################\n";
print"Print the Odd Array:@Odd\n";
print"The length of Odd Array List: $len_odd_num\n";
print"#################################################\n";
print"Print the Prime Numbers:@Prime\n";
print"The length of Prime Number Array List: $len_prime_num\n";
print"#################################################\n";

sub prime
{
$num=$_[0];
$count=0;
for($k =1; $k<=$num; $k++)
{
if($num % $k == 0)
{
$count +=1;
}
}
if ($count == 2)
{
push @Prime, $num;
}
}
