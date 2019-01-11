#!/usr/bin/env perl

my @array = ('Alice', 'Bob', 'Chris');
my $element_first = pop @array;
my $element_second = shift @array;
print $element_first,",", $element_second,"\n";
