#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

sub add{
  my ($left,$right) = @_;
  return $left + $right;
}

sub min {
  my ($left,$right) = @_;
  return $left - $right;
}

sub mul {
  my ($left,$right) = @_;
  return $left * $right;
}

sub div {
  my ($left,$right) = @_;
  return $left / $right;
}

my $a = 10;
my $b = 3;

my $add_result = add($a,$b);
my $min_result = min($a,$b);
my $mul_result = mul($a,$b);
my $div_result = div($a,$b);

print "$a + $b = $add_result\n";
print "$a - $b = $min_result\n";
print "$a * $b = $mul_result\n";
print "$a / $b = $div_result\n";
