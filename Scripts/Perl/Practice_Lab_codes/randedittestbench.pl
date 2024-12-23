############################################################

=head2  get_name 
sub rand_test_input()
{
print "********** Please Enter Integer value: ******************\n";
print"How many Test Vector to be generated ?:";
my $Test_Range=<STDIN>;
chomp($Test_Range);
# Input Port count. So generating those many numbers 
my $Variable_count = $len_updated_input_count;
print "The Input Variable count $Variable_count\n";

if(($Input_Single_LSB == 0) & ($Input_Single_MSB == 0))
{
my $Range_LL=0;
my $Range_UL=1;
print"Entered Single bit\n";
print"Entered Lower bit lower $Range_LL\n";
print"Entered Higher bit higher $Range_UL\n";
&input_single_multi($Variable_single_count,$Range_UL,$Range_LL,$Test_Range,$Variable_count);

}

elsif(($Input_Single_LSB != 0) & ($Input_Single_MSB != 0))
{
my $Range_LL=0;
my $Range_UL=2**$NI;
print"Entered Multiple bit\n";
print"Entered Multiple bit lower $Range_LL\n";
print"Entered Multiple bit higher $Range_UL\n";
&input_single_multi($Variable_multi_count,$Range_UL,$Range_LL,$Test_Range,$Variable_count);
}

}

sub input_single_multi()
{
my $X=0;
my @Input_List_Var=[];
my $Variable_count=$_[0];
my $Range_UL =$_[1];
my $Range_LL =$_[2];
my $Test_Range=$_[3];
my $Variable=$_[4];
for(my $k=0;$k<$Variable_count;$k++)
{
# Follows a pattern that Multi-bit input is given first and next only single bit # input is written in main module;
print("\nRand number for Input $Input_List[$k]:\n");
for(my $l=0;$l<$Test_Range;$l++)
{
my $Z=1;
while($Z)
{
#Storing random number int(rand( $Y-$X+1)) +$X;
$X=int(rand($Range_UL-$Range_LL+1))+$Range_LL;
#print"$X";
if($X>=$Range_LL)
{
#print"$X\t";
$Input_List_Var[$k][$l]=$X;
$Z=0;
}
}
print"$Input_List_Var[$k][$l]\t";
}
print"\n Next loop\n";
}
#&print_input_testbench(@Input_List_Var,$Variable,$Test_Range);
return 0;
}
##############################################################
sub print_input_testbench
{
my @Input_List_Var=@_;
my $Test_Range=$_[2];
my $Variable=$_[1];
my $l=0;
my $k=0;
# Printing the Input Variables value stored in Multi-dimensional array;
for($l=0;$l<$Test_Range;$l++)
{
print FH2 "#2 ";
for($k=0;$k<$Variable;$k++)
{
#print"$Input_List_Var[$k][$l]\t";
print FH2 "$Input_List[$k]=$Input_List_Var[$k][$l];";
}
print FH2 "\n";
}
######## Input Inital Block end Statement ######################
print FH2 "end\n";
}
=cut
