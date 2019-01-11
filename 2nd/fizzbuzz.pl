#!/usr/bin/env perl
use strict;
use warnings;

for my $var (1..100)  {
    if($var % 3 eq 0 && $var % 5 eq 0) {
        print "FizzBuzz\n"; 
    }elsif($var % 3 eq 0){
        print "Fizz\n";
    }elsif($var % 5 eq 0){
        print "Buzz\n";
    }else{
        print $var ."\n";
    }
}
