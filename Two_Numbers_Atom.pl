use 5.010;
use strict;
use warnings;

=pod

=head1 DESCRIPTION

This script takes in two numbers, adds them together,
then outputs the $sum

=cut

say "Enter a number";
my $num1 = <STDIN>;
chomp $num1;
say "Enter another number";
my $num2 = <STDIN>;
chomp $num2;
my $sum = $num1+$num2;
say "$sum";
