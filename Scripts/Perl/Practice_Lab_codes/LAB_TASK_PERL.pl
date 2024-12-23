#! /usr/bin/perl
# PERL Library included

print"How many Test Vector to be generated ? \n Please Enter Integer value: ";
$Test_Range=<STDIN>;
chomp($Test_Range);

@Arr=(A .. Z); # Variable Name array
print("Variable List :@Arr\n");
print"Specify the Number of variables used in Design:";
$Variable=<STDIN>;
chomp($Variable);

@Range_LL=();
@Range_UL=();

for($j=0;$j<$Variable;$j++)
{
print("Rand number for Array $Arr[$j]\n");
# Store the Upper limit and Lower limit value sepeartely in the array.
print"Specify the Lower limit for $Arr[$j] Variable:";
$Range_LL[$j]=<STDIN>;
chomp($Range_LL[$j]);

print"Specify the Upper limit for $Arr[$j] Variable:";
$Range_UL[$j]=<STDIN>;
chomp($Range_UL[$j]);
if($Range_LL[$j]>$Range_UL[$j])
{
print"Please enter Proper Limit range.";
print"\nLower limit must always be less than Upper limit\n";
print"------------------------------";
print"\nExecute once again with Proper Limit range\n";
print"------------------------------";
exit();
}
}

for($u=0;$u<$Variable;$u++)
{
print("Rand number for Array $Arr[$u]\n");
print"\nThe Lower limit for $Arr[$u] Variable:";
print"$Range_LL[$u]";
print"\nThe Upper limit for $Arr[$u] Variable:";
print"$Range_UL[$u]\n";
}
#print"\n@Range_LL";
#print"\n@Range_UL\n";
# Random Number Generation
$X=0;
for($k=0;$k<$Variable;$k++)
{
print("\nRand number for Array $Arr[$k]:\n");
for($l=0;$l<$Test_Range;$l++)
{
$Z=1;
while($Z)
{
#Storing random number
$X=int(rand$Range_UL[$k]);
if($X>$Range_LL[$k])
{
print"\t$X";
$Z=0;
}
}
}
print"\n Next loop\n";
}

