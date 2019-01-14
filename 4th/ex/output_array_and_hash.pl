#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my @dog = ('tama','koko');
my %cat = (name => 'poti');
my $dog_ref = \@dog;
my $cat_ref = \%cat;

sub output_array_and_hash{
  my ($dog,$cat) = @_;
  foreach my $name (@$dog) {
    print "dog name is $name\n";
  }
  
  while (my ($key,$value) = each($cat_ref)) {
    print "cat $key is $value\n";
  }
}

output_array_and_hash($dog_ref,$cat_ref);
