use 5.010;
use strict;
use warnings;

print "What is your age?";
my $age = <STDIN>;
if($age >= 18){
  print "In most countries you can vote.\n";
}
elsif($age <21){
    print "You can't booze in the states.\n";
}
else{
  print "You can't booze.\n";
}

say 2+3;
say 2*3;
say 9-1;
say 13/7;
my $f;
$f = "Me";
if(defined $f){
  say "First made it";
}
else{
  say "First Assigned name Bob";
  $f = "Bob";
}
say $f;
my $first = "Anders";
my $last = "Farr";

my $full = $first . ' ' . $last;
my $repeated = $first x 2;
say $full;
say '-' x length $repeated;
say $repeated;
#autoincrement with strings
say $full;
my $x = "ay";
say $x;
$x++;
say $x;
#String fuckery
my $speed = 100;
my $money = 33;
say "The download speed is ${speed}Mb/s";
my $id = $first . '_' . $last;
my $email = "$id\@intel.com";
say "I have ${money}\$";
say $email;
#qq to put quotes inside quotes
print qq(My "name" is "$full"\n);
#Here Document - makes longer message
my $letter = <<"END_MESSAGE";
Dear $full,

We are happy to inform you that you have won the lottery!

Regards,

  Lottery People
END_MESSAGE

print $letter;
