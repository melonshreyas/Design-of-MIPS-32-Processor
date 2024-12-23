#! /usr/bin/perl
$Dirname=$ARGV[0];
print"The Directory  path is $Dirname\n";
opendir (DIR1,$Dirname) or die "Error in opening: $!";
print"The Verilog Files present in $Dirname Directory are:\n";

# Filtering the Verilog files
foreach(sort grep(/^.*\.v$/,readdir(DIR1)))
{
print"$_\n";
}
print"NOTE-*--*--*--*--*--*--*--*-NOTE-*--*--*--*--*--*--*--*--*-\n";
print"For example if file name is ABC.v then type ABC.v as itself\n";
print"Select filename with extension of Verilog file:";
$Veri_File=<STDIN>;
chomp($Veri_File);
print"\n";
open (FH1,"$Dirname/$Veri_File") or die "Error in Opening Verilog File:$!";
@Veri_Mod=<FH1>;
close (FH1);
#The below command gives number of lines present in Verilog Module
$Line_Count=@Veri_Mod;

print"The Total Number of Lines:$Line_Count\n";
print"The Design Module Contents\n"; 
print"********************************************\n";
print"@Veri_Mod\n";
print"********************************************\n";
print"Verilog Module Selected\n";
print"Generation of Testbench and Testvectors using PERL Script\n";

#Now Searching for Module name, Input Port, Output Port
open (FH1,"<$Dirname/$Veri_File") or die "Error in Opening Verilog File:$!";
open FH2,">$Dirname/Testbench.v" or die "Error in Writing to file $!";

@Var_List=(A .. Z);
@Input_List =();
#This denotes total Number of Input bits.
$NI=0; 
#This denotes total Number of Output bits.
$NO=0;
while(<FH1>)
{
######################################################
# Getting Module Name and Port list
if($_=~ m/^m.*e\s/)
{
$module_name_port=$';
print"The Module Name and port list: $'";
@mod_nam_port=split /\s+/,$module_name_port;
$Module_Name=$mod_nam_port[0];
$Module_Portlist=$mod_nam_port[1];
print"The Module Name is $Module_Name\n";
print"The Module Portlist is $Module_Portlist\n";
# Defining Module for Testbench
print FH2"module test_$Module_Name();\n";
# Instantiation of Design Module in Testbench 
print FH2"$Module_Name G1 $Module_Portlist\n";
}
########################################################

########################################################
# To get Input Ports
elsif ($_=~ m/^input\s/)
{
$Module_Inputs=$';
print"The Input ports are :";
print"$Module_Inputs";
print FH2 "reg $Module_Inputs";

if($Module_Inputs =~ m/^\[(\d):(\d)\]/)
{
print" Multibit Input \n";
print"MSB Size : $1\n";
$Input_Multi_MSB=$1;
$NI=$Input_Multi_MSB+1;
print"Input Field Bit Length: $NI\n";
print"LSB Size : $2 \n";
$Input_Multi_LSB=$2;
# To remove [MSB:LSB] format for futher processing;
$Module_Inputs =~ s/^\[(\d):(\d)\]//;
}
else
{
$Input_Multi_MSB=0;
$Input_Multi_LSB=0;
$NI=$Input_Multi_MSB;
print "Input is Single bit\n";
}

# To Remove ";" at end of the input port list
$Module_Inputs =~ s/;\n//;
print"Module Input List is $Module_Inputs\n";
#split(', ', $str);
@Input_List = split (',',$Module_Inputs);
$Input_Port_Count = @Input_List;
chomp($Input_Port_Count);
print"Input port name is @Input_List\n";
}
#############################################################

#############################################################
# To get Output Ports
elsif ($_=~ m/^output\s/)
{
$Module_Outputs=$';
print"The Output ports are :";
print"$Module_Outputs";
print FH2 "wire $Module_Outputs";

if($Module_Outputs =~ m/^\[(\d):(\d)\]/)
{
print" Multibit Input \n";
print"MSB Size : $1\n";
$Output_Multi_MSB=$1;
$NO=$Output_Multi_MSB+1;
print"Output Field Bit Length: $NO\n";
print"LSB Size : $2 \n";
$Output_Multi_LSB=$2;
$Module_Outputs =~ s/^\[(\d):(\d)\]//;
}
else
{
$Output_Multi_MSB=0;
$NO=$Output_Multi_MSB;
$Output_Multi_LSB=0;
print "Output is Single bit\n";
}

# To Remove ";" at end of the input port list
$Module_Outputs =~ s/;\n//;
print"Module Output List is $Module_Outputs\n";
#split(', ', $str);
@Output_List = split (',',$Module_Outputs);
$Output_Port_Count = @Output_List;
print"Output port name is @Output_List\n";
}
#############################################################

#############################################################
##########Writing Monitor block and test input block #################
elsif($Line_Count==1)
{
###############Initial Block Statement Declaration #################
print FH2 "initial\n";
print FH2 "begin\n";
### Input Monitor Declaration ###
print"Input List =@Input_List\n";
print"Input Count = $Input_Port_Count\n";
foreach $name(@Input_List)
{
print FH2 "\$monitor (\$time,\"$name=\%b\", $name);\n";
}
### Output Monitor Declaration ########################
print"Output List =@Output_List\n";
print"Output Count = $Output_Port_Count\n";
foreach $name_out(@Output_List)
{
print FH2 "\$monitor (\$time,\"$name_out=\%b\", $name_out);\n";
}

####################################################
# Combine Input ports and output ports ####################
#$monitor_list=
######## Inital Block end Statement ######################
print FH2 "end\n";

############## Input Initial Block ######################
###############Initial Block Statement Declaration #################
print FH2 "initial\n";
print FH2 "begin\n";
print"Input MSB Size : $Input_Multi_MSB\n";
print"Input LSB Size : $Input_Multi_LSB\n";
print"Output MSB Size : $Input_Multi_MSB\n";
print"Output LSB Size : $Input_Multi_MSB\n";
#################### Random Number Generation code ############
################# This block used from Last week Assignment #######
print"How many Test Vector to be generated ?";
print "Please Enter Integer value: ";
$Test_Range=<STDIN>;
chomp($Test_Range);
# Input Port count. So generating those many numbers 
$Variable=$Input_Port_Count;
print "The Input Variable count $Variable \n";

if(($Input_Multi_LSB == 0) & ($Input_Multi_MSB == 0))
{
$Range_LL=0;
$Range_UL=1;
#print"Entered Single bit\n";
#print"Entered Lower bit lower $Range_LL\n";
#print"Entered Higher bit higher $Range_UL\n";
}
else
{
$Range_LL=0;
$Range_UL=2**$NI;
#print"Entered Multiple bit\n";
#print"Entered Multiple bit lower $Range_LL\n";
#print"Entered Multiple bit higher $Range_UL\n";
}
$X=0;
@Input_List_Var=[];
for($k=0;$k<$Variable;$k++)
{
print("\nRand number for Input $Input_List[$k]:\n");
for($l=0;$l<$Test_Range;$l++)
{
$Z=1;
while($Z)
{
#Storing random number int( rand( $Y-$X+1 ) ) + $X;
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
$Line_Count=$Line_Count-1;
}
close (FH1);
close(FH2);

####################### List to Do #########################

=head2 get_name
START OF MULTPILE COMMENT STATEMENT 

1. Input 1 is multibit and Input 2 is Single bit. Problem at writing Monitor statement due to overwriting occurs due to both have same variable.
********* Solution to 1 **********************************
(i) Try with some condition like separate naming convection for both

2. Instead of writing Multiple Monitor statements need to write Single Monitor statement.
****************Solution to 2 *****************************
(i) Store both Output Variables and Input Variables in Single array and get length of the array.

(ii) Print the Monitor staement in smart way like :
$monitor($time, "      -------> Keep this out of for loop and following
$array[i]=%b,            --------> Keep this in for loop and when count becomes equal then -------------> print -----> (to remove ,)  only add these ----> \b");

3. Main Module Instantiation using Port by Name implemented Port by Order.
****************Solution to 3 *****************************
(i) Store both Output Variables and Input Variables in Single array
But how we need to follow one syntax like first output ports occurs and rest are input ports.
(ii) Dynamic allocation of both input and output. How to do ?

4. Renaming the testbench file by adding modulename with testbench and save it.
****************Solution to 4 *****************************
Use renaming command of the testbench file and name the file as shown below like :
testbench_modulename.v
=cut 
