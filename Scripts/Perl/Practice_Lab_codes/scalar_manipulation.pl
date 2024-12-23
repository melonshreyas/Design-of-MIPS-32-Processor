#! /usr/bin/perl
$Name="Shreyas S Bagi";
$Roll_No="21MVD0086";

# Variable Interpolation
print"My Name is $Name\n";
print'My Name is $Name\n';
#In above two print statements there is no error but variable assignment doesnot #take place in second print statement.
print"My Roll No.=$Roll_No\n";
$age=23;
print"I am $age years old\n";

#Concatentation Operator
$a="Good\t";
$b="Morning\t";
$c="\n";
$d=$a.$b.$c;
print"\$d=$d\n";

#Repetition Operator
$b=$a x 2;
print"\$b=$b\n";

#Multi-line print
print<<Multipleline # Tag name is Multipleline and end with the same tag name
Hello 
Are you root?
Please provide access to file execution
Multipleline
