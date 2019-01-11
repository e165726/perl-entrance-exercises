#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my $answer = 'ruby';

print "Please input world > ";
my $str = <STDIN>;
chomp $str;

if ($answer eq $str) {
   print "OK\n";
}else{
    print "NG\n";
}
