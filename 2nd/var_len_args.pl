#!/usr/bin/env perl
use strict;
use warnings;

my $input = <STDIN>;
my @parse = split(/ /, $input);

for my $var (@parse){
    print "$var\n";  
}           
