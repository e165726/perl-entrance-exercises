# 参考サイト http://orange-factory.com/dnf/cgi_outputjson.html

#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use Data::Dumper;

# JSON風Dumper (http://orange-factory.com/dnf/cgi_outputjson.html)
$Data::Dumper::Indent = 0;	# インデントなし
$Data::Dumper::Useqq = 1; 	# ハッシュのキーはダブルクォートでくくる
$Data::Dumper::Terse = 1; 	# evalするための、最初の「$VAR =」は不要
$Data::Dumper::Pair = ":";	# ハッシュの区切り文字

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

my $average = {
  Alice     => 0,
  Bob       => 0,
  Carol     => 0,
  Dave      => 0,
  Ellen     => 0,
}; 

my @people = ($alice,$bob,$carol,$dave,$ellen);
my @languages_sum;
my @england; 
my $england_ref = \@england;
my @america;
my $america_ref = \@america;
my @canada;
my $canada_ref = \@canada;
my @countries_member = ($england_ref,$canada_ref,$america_ref);

foreach my $score (@people) {
  # それぞれの合計値を求める
  push @languages_sum , $score->{perl} + $score->{python} + $score->{ruby} + $score->{php} + $score->{binary}; 
  
  # 5段階評価を求め，出力する 
  print "$score->{name} of 5 grade\n";
  foreach my $key (keys $score) {
    if ($key eq 'perl' or $key eq 'ruby' or $key eq 'python' or $key eq 'php' or $key eq 'binary'){
      my $value = $score->{$key};
      if ($value >= 0 and $value <= 19) {
        print "$key :   \n" 
      }elsif ($value >= 20 and $value <= 39) {
        print "$key :  *\n" 
      }elsif ($value >= 40 and $value <= 59) {
        print "$key :  **\n" 
      }elsif ($value >= 60 and $value <= 79) {
        print "$key :  ***\n" 
      }elsif ($value >= 80 and $value <= 99) {
        print "$key :  ****\n" 
      }else{
        print "$key :  *****\n" 
      }
      
      # 国ごとの,perl のスコアが 60 以上の人の名前を格納
      if ($key eq 'perl' and $value >= 60) {
        if ($score->{country} eq 'England') {
          push @{$england_ref} , $score->{name}; 
        }elsif ($score->{country}  eq 'Canada') {
          push @{$canada_ref} , $score->{name}; 
        }elsif ($score->{country} eq 'America') {
          push @{$america_ref} , $score->{name}; 
        }
      }
    }
  }
  print "\n";
}

# 合計値をそれぞれのhashに加える
${$alice}{sum} = $languages_sum[0];
${$bob}{sum}   = $languages_sum[1];
${$carol}{sum} = $languages_sum[2];
${$dave}{sum}  = $languages_sum[3];
${$ellen}{sum} = $languages_sum[4];

# それぞれの平均点を求め，$averageに加える
${$average}{Alice} = ($alice->{perl} + $alice->{ruby} + $alice->{python}) / 5;
${$average}{Bob}   = ($bob->{perl} + $bob->{ruby} + $bob->{python}) / 5;
${$average}{Carol} = ($carol->{perl} + $carol->{ruby} + $carol->{python}) / 5;
${$average}{Dave}  = ($dave->{perl} + $dave->{ruby} + $dave->{python}) / 5;
${$average}{Ellen} = ($ellen->{perl} + $ellen->{ruby} + $ellen->{python}) / 5;

#  国ごとのPerlハイスコアリストを作る
my $highscore = {
  England   => $england_ref,
  Canada    => $canada_ref,
  America   => $america_ref,
};

print "sum\n";
print Dumper($alice);
print Dumper($bob);
print Dumper($carol);
print Dumper($dave);
print Dumper($ellen);
print "\n";

print "average\n";
print Dumper($average);
print "\n";

print "PerlHighScoreList\n";
print Dumper($highscore);
print "\n";
