#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my $answer = 100;

print "Please input num > ";
my $num = <STDIN>;
chomp $num;

if ($answer == $num) {
	print "OK\n";
}elsif($answer < $num && $answer+5 >= $num || $answer > $num && $answer-5 <= $num){
  	print "near\n";
}elsif($answer > $num){
  	print "too small\n";
}else{
  	print "too big\n";
}
