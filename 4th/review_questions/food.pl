#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

# $data に人物名と好きな食べ物を (スペース):(スペース) 区切りで与えています.
# この変数から食べ物が何回出現したかカウントして表示させてください.


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
