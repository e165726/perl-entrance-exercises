#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my $answer = 100;

print "Please input num > ";
my $num = <STDIN>;
chomp $num;

#絶対値を求める
my $diff = abs($num-$answer);

if ($answer == $num) {
	print "OK\n";
}elsif($diff <= 5 ){
  	print "near\n";
}elsif($answer > $num){
  	print "too small\n";
}else{
  	print "too big\n";
}


