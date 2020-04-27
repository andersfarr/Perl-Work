use warnings;
use strict;
use 5.010;

say "Counter script, write count followed by whatever you want to count";
my %table;
while(1){
  my $input = <STDIN>;
  chomp $input;
  if(!(lc(substr($input,0,5)) eq "count")){
    say "Incorrect input, type \'count\' then what you want to count";
    next;
  }
  my $count = substr($input, 6);
  if($table{$count}){
    $table{$count}++;
  }
  else{
    $table{$count} = 1;
  }
  say "$count: $table{$count}";
}
