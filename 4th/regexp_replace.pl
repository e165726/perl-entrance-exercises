#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my $str = 'I love ruby';
$str =~ s/ruby/perl/g;

print "$str\n";

