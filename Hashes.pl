#Practice using perl Hashes
use warnings;
use strict;
use 5.010;
use Data::Dumper;

my %gem_colours = (
  diamond => "clear",
  jade => "turqoise",
  opal => undef,
);
$gem_colours{emerald} = "green";
$gem_colours{ruby} = "red";

my @gems = keys %gem_colours;
foreach my $gem(@gems){
  say "The colour of '$gem' is $gem_colours{$gem}";
}

my @jobs = qw(painter coder singer spy weightlifter);

my %work = @jobs;
say Dumper \@jobs;
say Dumper \%work;

print exists $gem_colours{"sapphire"};
print exists $gem_colours{"opal"};
print defined $gem_colours{"opal"};
