#Subroutine work in perl
use warnings;
use strict;
use 5.010;


my $answer = ask_question("How much?\n");
my $send_receipt = send_email(from => "crankythecrane\@gmail.com", to => "16ajjf\@queensu.ca", msg => "Big ju 22");

say "Okay that will be " . (10*$answer);
say mean(1,2,3,4,5);
my $path = "C:\\Users\\frofr\\Documents\\ThirdYearQueens";
traverse($path);
say $send_receipt;
sub ask_question{
  print $_[0];
  my $val = <STDIN>;
  chomp $val;
  return $val;
}

sub send_email{
  my %params = @_;
  say $params{msg};
  my $return_code = "Successfully send message from " . $params{from} . " to " . $params{to};
  return $return_code;
}

sub mean{
  my $mean = $0;
  my $sum = sum(@_);
  my $count = scalar @_;
  return $sum/$count;
}

sub sum{
  my $sum = 0;
  foreach my $n (@_){
    $sum +=$n;
  }
  return $sum;
}

sub traverse{
  my ($thing) = @_;
  say $thing;

  return if not -d $thing;
  opendir my $dh, $thing or die;
  while( my $sub = readdir $dh){
    next if $sub eq '.' or $sub eq '..';

    traverse("$thing\\$sub");
  }
}
