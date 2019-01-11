#!/usr/bin/env perl
use strict;
use warnings;

print "number1 > ";
my $str = <STDIN>;
chomp $str;

print "number2 > ";
my $str2 = <STDIN>;
chomp $str2;

print "$str + $str2 = " .($str+$str2). "\n";
print "$str - $str2 = " .($str-$str2). "\n";
print "$str * $str2 = " .($str*$str2). "\n";
print "$str / $str2 = " .($str/$str2). "\n";
