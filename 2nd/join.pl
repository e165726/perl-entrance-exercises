#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my @array = qw( 0120 123 XXX );

my $poem  = join '_', @array;
print $poem. "\n";  
