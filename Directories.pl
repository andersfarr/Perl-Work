#Current Working Directory in perl
use warnings;
use strict;
use 5.010;

use Cwd qw(cwd);
use Cwd qw(getcwd);
use File::Copy qw(copy);
my $dir = cwd;
say $dir;

my $gdir = getcwd;
say $gdir;
#basically does this on command line when system invoked
#system("perl CountingKawhiStuff.pl");

#unlink "out.txt";
#rename "report.txt","output.txt";

#copy "output.txt","CopyOfOutput.txt";
$dir = "C:\\Users\\frofr\\Documents\\JobStuff\\Perl";
opendir my $dh, $dir or die "Could not open $dir";

while(my $filename = readdir $dh){
  if($filename eq '.' or $filename eq '..'){
    next;

  }
  say $filename;
}
