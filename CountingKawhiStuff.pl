#Counting the frequency of strings;
use warnings;
use strict;
use 5.010;
use Text::CSV;

my %count;
my $file = "KawhiPlayoffStats.csv";
my $csv = Text::CSV->new({sep_char => ','});

open(my $fh, '<', $file) or die "Unable to open file $file";
while( my $line = <$fh>){
  chomp $line;
  if ($csv->parse($line)){
    my @fields = $csv->fields();
    $count{$fields[28]}++;
  }
}

say "Kahi's most repeated point numbers";

foreach my $str (sort{$count{$a} <=> $count{$b}} keys %count){
  printf $str. ": " . $count{$str} . "\n";
}
