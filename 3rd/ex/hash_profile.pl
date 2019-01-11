#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my %my_profile = (
  name => "ga_ga",
  age => 2,
  food => "mouko_tanmen",
);

print "i\n";
for my $key (keys %my_profile) {
    my $value = $my_profile{$key};
    print "$key => $value\n";
}

print  "ii\n";
delete $my_profile{age};
for my $key (keys %my_profile) {
    my $value = $my_profile{$key};
    print "$key => $value\n";
}

print "iii\n";
if (exists $my_profile{age}) {
  print "Age is exist.\n" 
} else {
  print "Age is not exist.\n" 
}


