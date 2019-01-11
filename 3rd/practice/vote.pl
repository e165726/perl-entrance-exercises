# 参考URL http://www.koikikukan.com/archives/2013/12/18-013333.php

#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my %bro1 = (
  name => 'Ichiro',
  favorite_foods => 'mikan',
);
my $bro1_ref = \%bro1;

my %bro2 = (
  name => 'Jiro',
  favorite_foods => 'ringo',
);
my $bro2_ref = \%bro2;

my %bro3 = (
  name => 'Saburo',
  favorite_foods => 'ringo',
);
my $bro3_ref = \%bro3;

my @brothers = ($bro1_ref,$bro2_ref,$bro3_ref);
my @rank_food;

# favorite_foodsを配列に格納
for my $brother (@brothers){
  push @rank_food , $brother->{favorite_foods};
}

my %cnt;

# 重なっている要素をカウント
for my $key (@rank_food){
  if ( exists $cnt{$key} ) {
       $cnt{$key} = $cnt{$key} + 1;
  }else{
       $cnt{$key} = 0;
  }
}

# カウント回数が多い順に出力
for my $key (sort {$cnt{$b}<=>$cnt{$a}}keys %cnt){
  print "$key\n";
}
