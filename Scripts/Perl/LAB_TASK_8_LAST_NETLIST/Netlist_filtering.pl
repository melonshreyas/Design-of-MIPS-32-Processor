#! /usr/bin/perl -w
#use warnings;

$Dirname=$ARGV[0];
$Dirname1=$ARGV[1];
print"#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*";
print"\n\nThe Directory path is $Dirname\n";
opendir (DIR1,$Dirname) or die "Error in opening: $!";
print"\nThe Verilog Files present in $Dirname Directory are:\n";
# Filtering the Verilog files
my $cnt=1;
foreach(sort grep(/^.*\.v$/,readdir(DIR1)))
{
print"$cnt. $_\n";
$cnt++;
}

print"\n";
print"#*#*#*#*#*#*#*#*#*#*#*#*##*#*#*#*#*#*#*#*#**#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*";
print"\n\n--*--*--NOTE--*--NOTE--*--*--NOTE--*--NOTE--*--*--*--*--*--NOTE-*-NOTE--*--*--\n";
print"\nFor example the verilog file name is ABC.v then type ABC.v as itself\n";
print"\nSelect filename with extension of Verilog file:";
$Veri_File=<STDIN>;
chomp($Veri_File);
print"\n";


open (FH1,"$Dirname/$Veri_File") or die "Error in Opening Verilog File:$!";
@Veri_Mod=<FH1>;
close (FH1);
#The below command gives number of lines present in Verilog Module
$Line_Count=@Veri_Mod;

print"The Total Number of Lines in Design Module is :$Line_Count\n";


###############################################################
###### Technology Library File containing Standard Cells Names #########
print"#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*";
print"\n\nThe Technology Library File containing Standard Cells path is $Dirname1\n";
open (DIR2,$Dirname1) or die "Error in opening: $!";
print"\nThe Netlist File present in $Dirname1 is:\n";
$Netlist_File=$Dirname1;
print"\n";

open (FH2,"$Netlist_File") or die "Error in Opening Verilog File:$!";
@Netlist_Mod=<FH2>;
close (FH2);
#The below command gives number of lines present in Verilog Module
$Netlist_Std_module=@Netlist_Mod;

print"The Total Number of Standard Cells present in the technology file is :$Netlist_Std_module\n";

open (FH1,"<$Netlist_File") or die "Error in Opening Verilog File:$!";
$CNT_MOD=0;
open (FH2,"$Dirname/$Veri_File") or die "Error in Opening Verilog File:$!";
$cnt_net=1;
while(<FH1>)
{
chomp;
$search_mod=$_;
print "$cnt_net) $search_mod\n";
$cnt_net=$cnt_net+1;
$CNT_MOD=0;
while(<FH2>)
{
chomp;
#print "Entered $CNT_MOD times\n"
$search_mod_netlist_file = $_;
if ($search_mod_netlist_file =~ m/$search_mod/)
{
$CNT_MOD=$CNT_MOD+1;
}
}
close(FH2);
open (FH2,"$Dirname/$Veri_File") or die "Error in Opening Verilog File:$!";
print "The Count of $search_mod is $CNT_MOD\n"; 
}
close(FH1);
##############################################################


