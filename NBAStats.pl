use warnings;
use strict;
use 5.010;
use Data::Dumper qw(Dumper);
use Text::CSV;

my @ppg;
my @apg;
my @rpg;
my $tempppg = 0;
my $tempapg = 0;
my $temprpg = 0;
my $gamePts = 0;
my $gameReb = 0;
my $gameAst = 0;
my $file;
my $csv = Text::CSV->new({sep_char => ','});
for (my $i=0; $i<63; $i++){
  $file = "C:\\Users\\frofr\\NBA_Stats\\MVPs_by_Year\\" . getSeason($i) . ".csv";
  open(my $fh, '<', $file) or die "Unable to Open File $file";
  say getSeason($i);
  my $line = <$fh>;
  while($line = <$fh>){
    chomp $line;
    if ($csv->parse($line)){
      my @fields = $csv->fields();
      if($fields[getPts($i)] eq "Inactive" || $fields[getPts($i)] eq "Did Not Dress"|| $fields[getPts($i)] eq "Did Not Play" || $fields[getPts($i)] eq "PTS"|| $fields[getPts($i)] eq "Not With Team" || $fields[getPts($i)] eq "Player Suspended" || $fields[getPts($i)] eq ""){
        next;
      }
      $tempppg += $fields[getPts($i)];
      if(!($fields[getAst($i)] eq "")){
        $tempapg +=$fields[getAst($i)];
        $gameReb++;
      }
      if(!($fields[getPts($i)] eq "")){
        $temprpg += $fields[getReb($i)];
        $gameAst++;
      }
      $gamePts++;
    }
  }
  $ppg[$i] = $tempppg/$gamePts;
  $apg[$i] = $tempapg/$gameAst;
  $rpg[$i] = $temprpg/$gameReb;
  $tempppg = 0;
  $tempapg = 0;
  $temprpg = 0;
  $gamePts = 0;
  $gameAst = 0;
  $gameReb = 0;
  close($fh);
}

say Dumper \@ppg;
say Dumper \@apg;
say Dumper \@rpg;

sub getSeason{
  my $index = $_[0];
  if($index <43){
    return "" . ($index + 57);
  }
  elsif ($index < 53){
    return "0" . ($index-43);
  }
  else{
    return "" . ($index - 43);
  }
}
sub getPts{
  my $year = $_[0] + 57;
  if($year <74){
    return 19;
  }
  elsif($year< 78){
    return 23;
  }
  elsif($year< 80){
    return 24;
  }
  else{
    return 27;
  }
}

sub getReb{
  my $year = $_[0] + 57;
  if($year <74){
    return 16;
  }
  elsif($year< 80){
    return 18;
  }
  else{
    return 21;
  }
}

sub getAst{
  my $year = $_[0] + 57;
  if($year <74){
    return 17;
  }
  elsif($year< 80){
    return 19;
  }
  else{
    return 22;
  }
}

sub mean{

}
