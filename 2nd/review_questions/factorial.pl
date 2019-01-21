#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'say';

my $num = <STDIN>;
my $ans = $num;

for (my $x = $num; $x > 1; $x--) {
  $ans *= ($x-1);
}

say $ans;
