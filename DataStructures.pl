use 5.010;
use warnings;
use strict;
use Data::Dumper qw(Dumper);
#Scalars are what you have been using before= just single variables

my $str = "Hello World, how are you today";

say lc $str;
say uc $str;
say length $str;

say index $str, 'how';
say index $str, 'cow';
say index $str, 'o';
say index $str, 'o', 8;
say substr $str, 6, 5;
say substr $str, 6, -6;
my $new = substr $str, 6, 5, "Planet";
say $new;
say $str;

my $x = int 3.14;
say $x;

say int rand(42);

my $num = int (rand(5)+1.0);
my $guess;
while(1){
  say "Guess a number between 1 and 200";
  $guess = <STDIN>;

  if ($guess > $num){
    say "guess was too high";
  }
  elsif($guess ==  $num){
    say "got it right";
    last;
  }
  else{
    say "guess too low";
  }
}

open(my $fh, '>', 'report.txt');
print $fh "My first File generated by perl\n";
close $fh;
say "All done";

my $str = "aa ab ac ad bb";
my @words = split / /, $str,2;

say Dumper \@words;
