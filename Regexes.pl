#Working with regexes in perl
use warnings;
use strict;
use 5.010;

my $str = 'The black cat jumped from the green tree';
if ($str =~ m/cat/){
  print "There  is a cat\n";
}
if ($str !~ m/dog/){
  print "There is no dog\n";
}
if($str =~m/b.a.k/){
  print "There is boark\n";
}
if($str =~m/T[hr]e/){
  print "There are these and trees\n";
}
if ($str =~m/j[t-z]m/){
  print "There is a jump jym or jxm etx\n";
}
if ($str =~ m/f[^asdfw^]om/){
  print "There is something that isnt f-asdfw-om\n";
}
if($str!~ /\d/){
  print "There are no digits\n";
}

my $msg = "   The new    ";
$msg =~  s/^\s+//;
$msg = "   The new    ";
$msg =~ s/\s+$//;
say $msg;
say $msg;
$msg =~ s/^\s+|s+$//g;
say $msg;

#In the textbook theres a cheat sheet = should make this stuff easier
