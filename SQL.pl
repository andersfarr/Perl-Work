use strict;
use warnings;
use DBI;

my $dbfile = "sample.db";

my $dsn = "dbi:SQLite: dbname =$dbfile";
my $user = "";
my $password = "";
my $dbh = DBI->connect($dsn, $user, $password, {
  PrintError =>0,
  RaiseError => 1,
  AutoCommit => 1,
  FetchHashKeyName => "Name_lc",
});

my $sql = << 'END_SQL';
CREATE TABLE people (
  id    INTEGER PRIMARY KEY,
  fname VARCHAR(100),
  lname VARCHAR(100),
  email VARCHAR(100) UNIQUE NOT NULL,
  password VACHAR(20)
)
END_SQL

#$dbh->do($sql);

my $fname = 'Foo';
my $lname = 'Bar';
my $email = 'boo@bar.com';
$dbh->do('INSERT INTO people(fname, lname, email)VALUES (?,?,?)',
  undef,
  $fname, $lname, $email);

my $pass = 'password';
my $id = 1;

$dbh->do('UPDATE people SET password = ? WHERE id = ?',
  undef,
  $pass,
  $id);
