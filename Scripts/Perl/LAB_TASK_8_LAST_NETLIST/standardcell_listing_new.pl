#! /usr/bin/perl -w
# -w to turn on the warnings
use warnings;

$Dirname=$ARGV[0];
print"#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*";
print"#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*\n";
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

print"\n\nSelect filename with extension of Verilog file:";
$Veri_File=<STDIN>;
chomp($Veri_File);
print"\n";
open (FH1,"$Dirname/$Veri_File") or die "Error in Opening Verilog File:$!";
$Netlist_File = " Netlist.txt";
open (FH2,">$Dirname/$Netlist_File") or die "Error in Opening Verilog File:$!";
while(<FH1>)
{
chomp;
############## Getting Module Name and Port list ###################
if($_=~ m/(\w+.*\d)\sU/)
{
$standard=$1;
if($standard=~ m/(.*\d)/)
{
$standardcell_name=$1;
print FH2 "$standardcell_name\n"
}
}
}
close (FH2);
close (FH1);

$Netlist_File1= "Netlist_duplicate_remove.txt";
open (FH1,"$Dirname/$Netlist_File") or die "Error in Opening Verilog File:$!";
open (FH2,">$Dirname/$Netlist_File1") or die "Error in Opening Verilog File:$!";
@standard_cell= <FH1>;

$cnt_std_cells=@standard_cell;

%seen = ();
@standard_cell_new=();
foreach $item (@standard_cell) {
    unless ($seen{$item}) {
        # if we get here, we have not seen it before
        $seen{$item} = 1;
        push(@standard_cell_new, $item);
    }
}
print FH2 "@standard_cell_new";
$Standard_Cell_Count = @standard_cell_new;
print "\nThe Count of standard cell is:$Standard_Cell_Count\n";
close(FH1);
close(FH2);
