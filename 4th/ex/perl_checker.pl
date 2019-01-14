#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

sub perl_checker{
  my $ans = shift;
  if ($ans =~ /[Pp]erl/) {
    print "Perl Monger!\n";
  }
}

my $str = 'Dio is Perler';

perl_checker($str);

