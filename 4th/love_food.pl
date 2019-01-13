#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

sub love_food {
  my $str = shift;
  foreach my $word (@$str) {
    if($word =~ /(.+) loves (.+)!/){
      print "$1 -> $2\n";
    }
  }
}

my $words_ref = [
  'alice loves meat!',
  'bob loves sushi!',
];

love_food($words_ref);
