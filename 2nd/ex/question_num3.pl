#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my $answer = 100;

print "Please input num > ";
my $num = <STDIN>;
chomp $num;

my $large = $num + 5;
my $small = $num - 5;

if ($answer == $num) {
	print "OK\n";
}elsif($small <= $answer && $large <= $answer ){
  	print "near\n";
}elsif($answer > $num){
  	print "too small\n";
}else{
  	print "too big\n";
}

