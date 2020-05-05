use strict;
use warnings;
use 5.010;

my @stack;
while(1){
  print '$';
  my $in = <STDIN>;
  chomp $in;
  given($in){
    when("q"){
      last;
    }
    when("c"){
      pop @stack;
    }
    when("+"){
      my $a = pop @stack;
      my $b = pop @stack;
      push(@stack, $a+$b);
    }
    when("-"){
      my $a = pop @stack;
      my $b = pop @stack;
      push(@stack, $b-$a);
    }
    when("*"){
      my $a = pop @stack;
      my $b = pop @stack;
      push(@stack, $a*$b);
    }
    when("/"){
      my $a = pop @stack;
      my $b = pop @stack;
      push(@stack, $a/$b);
    }
    when("="){
      print pop(@stack) . "\n";
    }
    default{push(@stack, $in);}
  }
}
say "You did even better than well!";
