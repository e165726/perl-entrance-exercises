#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

print "Input date > ";
my $date = <STDIN>;
chomp $date;

print "Input date > ";
my $date2 = <STDIN>;
chomp $date2;

print "Input date > ";
my $date3 = <STDIN>;
chomp $date3;

my @array = ($date,$date2,$date3);

for my $var (@array) {
   print "$var\n"; 
}

