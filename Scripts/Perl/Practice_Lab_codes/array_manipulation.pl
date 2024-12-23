#! /usr/bin/perl

$num1 =3; # Scalar Variable Declaration
@NUM1 =(1,"one",1.5,$num1); # Array Variable Declaration
# Array index starts with 0,1,2,3,...
# To access individual element use the $array_variable_name.
print"The array is \@Num1=@NUM1\n";
print"The number is \$num1=$num1\n";
print"The first element of \@NUM1 is $NUM1[0]\n";

#Updating the array elements 
$NUM1[1]=123;
#We can even create extra element by decalaring the value
$NUM1[4]=1.121325684;
print"The updated array list elements are :@NUM1\n";

#Printing the values from 5 to 21
@Arr_1=($#NUM1..100);
print"@Arr_1\n";



