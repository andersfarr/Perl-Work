use 5.010;
use strict;
use warnings;
use Data::Dumper qw(Dumper);
use List::MoreUtils qw(uniq);
#for(my $i = 0; $i<10; $i++){
#  say $i;
#
#for my $j (1..5){
#  say $j;
#}

my @names = ("Ders", "DaddyDers","DJDaddyDers");
say Dumper \@names;

for (my $i = 0; $i<3; $i=$i+2){
  say $names[$i];
}
say scalar @names;
push @names, 'Chief';
say Dumper \@names;

my $real_name = pop @names;
say "My Real Name: $real_name";

say Dumper \@names;

my $fake_name = shift @names;
say "My Fake Name: $fake_name";

say Dumper \@names;

say "There are " . @names . " elements in names";

say "What are your pets names?";

#my @pets = <STDIN>;

#chomp @pets;
#say "You have " . @pets . " pets";

#my @sorted = sort @pets;

#say Dumper \@sorted;

my @nums = (45,3,23,1,44,32,51,677,223);
my @sorted = sort @nums;
say Dumper \@sorted;
my @csorted = sort { $a <=> $b } @nums;
say Dumper \@csorted;

my @vals = (1,1,2,2,4,5,66,66,74,3,2,4,1);
my @vals_unique = uniq @vals;

say Dumper \@vals_unique;

my @vals_unique_rev = reverse @vals_unique;
say Dumper \@vals_unique_rev;
