#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my $data = q{
  papix : sushi
  moznion : soba
  boolfool : sushi
  macopy : sushi
};

my @input = split /\n/,$data;
my $cnt = 0;

foreach my $i (@input) {
  if($i =~ /(.+) : (.+)/){
    $cnt++;
    print "$2\n";
  }
}

print "\n";
print "cnt = $cnt\n";
