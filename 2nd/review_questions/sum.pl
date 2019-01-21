#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'say';

my @array = [];
my $cnt = 0;
my $ans = 0;

for my $x (0..99) {
  $cnt += 1;
  @array[$x] = $cnt;
}

for my $y (@array) {
  $ans += $y;
}

say $ans;
