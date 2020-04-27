use strict;
use warnings;
use IO::Prompter;

print "Your name please: \n";
my $name = <STDIN>;
chomp $name;

print "Your name is $name\n";

my $user = prompt 'Username:'
my $user = prompt 'Password:', -echo=>'*';

say $user
say $password
