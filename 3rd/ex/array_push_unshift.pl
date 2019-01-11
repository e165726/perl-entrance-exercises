#!/usr/bin/env perl

my @array = ('Alice', 'Bob' , 'Chris');
push @array, 'Diana';
unshift @array, 'Eve';
for (my $i = 0; $i < $#array; $i++) {
  print "$array[$i]\n";
}
