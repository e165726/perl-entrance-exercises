#!/usr/bin/env perl
use strict;
use warnings;

print "Your Name? > ";
my $str = <STDIN>;
chomp $str;
print "Hello $str!\n";

print "Your OS? > ";
my $str2 = <STDIN>;
chomp $str2;
print "$str2 is useful OS!\n";
