#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'say';

my $num = <STDIN>;

if ($num % 2 == 0) {
  say "even";
}else{
  say "odd";
}
