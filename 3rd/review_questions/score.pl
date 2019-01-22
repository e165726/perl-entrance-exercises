#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use Data::Dumper;
use feature 'say';

# JSON風Dumper (http://orange-factory.com/dnf/cgi_outputjson.html)
$Data::Dumper::Useqq = 1;       # ハッシュのキーはダブルクォートでくくる
$Data::Dumper::Terse = 1;       # evalするための、最初の「$VAR =」は不要
$Data::Dumper::Pair = ":";      # ハッシュの区切り文字

my $alice = {
  name        => 'Alice',
  country     => 'England',
  perl        => 60,
  python      => 80,
  ruby        => 80,
  php         => 50,
  binary      => 30,
};
my $bob = {
  name        => 'Bob',
  country     => 'America',
  perl        => 40,
  python      => 10,
  ruby        => 20,
  php         => 30,
  binary      => 50,
};
my $carol = {
  name        => 'Carol',
  country     => 'England',
  perl        => 100,
  python      => 70,
  ruby        => 80,
  php         => 50,
  binary      => 50,
};
my $dave = {
  name        => 'Dave',
  country     => 'Canada',
  perl        => 60,
  python      => 11,
  ruby        => 1,
  php         => 100,
  binary      => 100,
};
my $ellen = {
  name        => 'Ellen',
  country     => 'America',
  perl        => 1,
  python      => 15,
  ruby        => 0.5,
  php         => 60,
  binary      => 0.01,
};

my $average = {};
my $highscore = {};
my @people = ($alice,$bob,$carol,$dave,$ellen);
my @languages = qw(perl python ruby php binary);

# 合計値取得
for my $human (@people) {
  for my $lang(@languages) {
    $human->{sum} += $human->{$lang};
  }
}

# 言語ごとの平均
for my $human (@people) {
  my $sum = 0;
  for my $lang(qw(perl python ruby)) {
    $sum += $human->{$lang}; 
    my $num = () = qw(perl python ruby);
    $average->{$human->{name}} = $sum / $num;
  }
}

# 国ごとのPerlハイスコアリスト
for my $country (qw(England America Canada)) {
  for my $human (@people) {
    if($human->{perl} >= 60 and $human->{country} eq $country){
      push @{$highscore->{$country}}, $human->{name};
    }
  }
}

# 出力
print Dumper(@people);
print Dumper($average);

## 5段階評価の出力
for my $human (@people) {
  say $human->{name}; 
  for my $lang(@languages) {
    if ($human->{$lang} <= 19) {
      say "   $lang  :       ";
    }elsif($human->{$lang} <= 39){
      say "   $lang  :  *    ";
    }elsif($human->{$lang} <= 59){
      say "   $lang  :  **   ";
    }elsif($human->{$lang} <= 79){
      say "   $lang  :  ***  ";
    }elsif($human->{$lang} <= 99){
      say "   $lang  :  **** ";
    }else{
      say "   $lang  :  *****";
    }
  }
}

print Dumper($highscore);
