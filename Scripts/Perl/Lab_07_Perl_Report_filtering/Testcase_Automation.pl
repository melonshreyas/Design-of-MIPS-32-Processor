#! /usr/bin/perl -w
open FH, "<$ARGV[0]";
open FH2, ">Report_Status.xls";
print FH2 "SL.No\tTestcase_Name\tStatus\tMessages";
my $cnt=0;
my $Testcase=0;
my $Filecnt = 0;
my @ErrorMessage =();
while(<FH>) 
{
chomp($file_name = $_);
#print "$Filecnt File Name is $file_name\n";
open FH1, "<$file_name" or die "File not found\n";
$Filecnt++;
print FH2 "\n$Filecnt\t";
print ("\n$Filecnt\t");
$failcnt=0;
$execute=1;
while(<FH1>)
{
chomp;
if ($file_name =~ m/(\w+)_log\/(\w+).log/)
{
if($execute>0)
{
print ("$2\t");
print FH2 ("$2\t");
$execute=-1;
}
}
if($_ =~ m/\bTEST PASSED\b/)
{
$Pass=$&;
print FH2 ("$Pass\n");
print ("$Pass\n");
}
elsif($_ =~ m/\bERROR\b/)
{
$failcnt++;
$cnt++;
$Fail=$&;
$EMess=$';
$EMess=~ s/-\s//;
if($failcnt>0)
{
print FH2 ("$Fail");
print ("$Fail");
$failcnt= -5;
print ("\t");
}
print FH2 ("\t$EMess\n\t\t");
print ("\t$EMess\n\t\t");
}
}
}
close FH1;
close FH2;
close FH;
