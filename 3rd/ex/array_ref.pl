#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my @dog = ('shiba','bulldog');
my $dog_ref = \@dog;
my @cat = ('mike','abyssinian');
my $cat_ref = \@cat;
my @bird = ('eagle','crow');
my $bird_ref = \@bird;

my @animal = ( 
  $dog_ref,
  $cat_ref,
  $bird_ref 
);

print "$animal[2]->[0]\n";
print "$animal[1]->[1]\n";
