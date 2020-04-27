use 5.010;
use warnings;
use strict;
use Data::Dumper qw(Dumper);
use Text::CSV;

my $csv = Text::CSV->new({sep_char => ','});
my @rows;
my $sum = "";
open(my $fh, '<:encoding(UTF-8)', 'KawhiPlayoffStats.csv') or die;
@rows = <$fh>;
chomp @rows;
foreach my $row(@rows){
  say $row;
}
say $sum;
say "All done"
