#! /usr/bin/perl
print"Enter your First name:";
# To remove new-line character use chomp--- Declaration Type 1
chomp($First_Name=<STDIN>);

print"Enter your Last name:";
$Last_Name=<STDIN>;
#To remove new-line character use chomp--- Declaration Type 2
chomp($Last_Name);

print"\t\tArithmetic Operation\t\t";
print"\nEnter Number 1: ";
$Num1=<STDIN>;
print"\nEnter Number 2: ";
$Num2=<STDIN>;
$Add=$Num1+$Num2;
$Sub=$Num1-$Num2;
$Mul=$Num1*$Num2;
$Div=$Num1/$Num2;
$Mod=$Num1% $Num2;
$Exponent=$Num1**$Num2;
print"Addition = $Add\n";
print"Subtraction = $Sub\n";
print"Multiplication = $Mul\n";
print"Division = $Div\n";
print"Modulus = $Mod\n";
print"Exponent = $Exponent\n";
