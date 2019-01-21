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
}elsif($answer < $num){
    if($answer+5 >= $num){
        print "near\n";
    }else{
        print "too big\n";
    }
}else{
    if($answer-5 <= $num){
        print "near\n";
    }else{
        print "too small\n";
    }
}
