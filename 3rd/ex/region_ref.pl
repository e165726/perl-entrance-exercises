#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use Data::Dumper;

my @tokyo = ('gotanda','shibuya');
my $tokyo_ref = \@tokyo;
my @osaka = ('shinsaibashi');
my $osaka_ref = \@osaka;
my @okinawa = ('naha','yomitan');
my $okinawa_ref = \@okinawa;
my @hokkaido = ('sapporo','obihiro');
my $hokkaido_ref = \@hokkaido;
my @fukuoka = ('hakata');
my $fukuoka_ref = \@fukuoka;

my @japan = (
  $tokyo_ref,
  $osaka_ref,
  $okinawa_ref,
  $hokkaido_ref,
  $fukuoka_ref,
);
# osaka の中に umeda を追加
$japan[1][1] = 'ueda';

# gotanda と sapporo を出力
print "$japan[0][0]\n";
print "$japan[3][0]\n";

# Data::Dumper を使ってjapan 全体の中身を出力
print Dumper(@japan);
