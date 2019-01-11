#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

for my $var (1..100)  {
    if ($var % 2 eq 0) {
        print $var ."\n";
    }
}
