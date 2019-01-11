#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my %dog = (
  name => 'Taro',
  color => 'brown',
);
my $dog_ref = \%dog;

my %cat = (
  name => 'Tama',
  color => 'white'
);
my $cat_ref = \%cat;

my %animal = (
  dog_key => $dog_ref,
  cat_key => $cat_ref,
);

print $animal{cat_key}{color};


