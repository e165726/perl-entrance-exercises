#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

sub add {
  my ($left, $right) = @_;
  return  $left + $right;
};

sub min {
  my ($left, $right) = @_;
  return  $left - $right;
};

sub mul {
  my ($left, $right) = @_;
  return  $left * $right;
};

sub div {
  my ($left, $right) = @_;
  return  $left / $right;
};

print add(9,3), " === " , 9+3 ,"\n";
print min(9,3), " === ", 9-3, "\n";
print mul(9,3), " === ", 9*3, "\n";
print div(9,3), " === ", 9/3, "\n";

