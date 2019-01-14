#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use Data::Dumper;

sub calc {
  my ($a,$b) = @_;
  if ($a =~ /(\D+)/ or $b =~ /(\D+)/) { 
    return; 
  }
  my %result = (
    add => $a + $b,
    sub => $a - $b,
    mul => $a * $b,
    div => $a / $b,
    mod => $a % $b,
  );
  my $result_ref = \%result;
  return $result_ref;
}

my $a = 10;
my $b = 3;
my $result = calc($a,$b);

print "a = $a, b = $b\n";
print Dumper($result);
