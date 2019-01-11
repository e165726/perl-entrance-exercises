#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my $poem = "There's more than one way to do it.";

my @array = split / /, $poem;

for my $var (@array){
    print "$var\n";  
}           
