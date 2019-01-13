#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

while (chomp(my $input = <STDIN>)) {
  if ($input eq ""){                    # 文字列が0の場合, ループを抜ける
    last;
  }
  if($input =~ /(perl|ruby|python)/){   # 文字列にperlないしrubyないしpythonが含まれる場合, ｢Love Programming!｣と表示する.

    print "Love Programming!\n";
  }
  if($input =~ /[Pp]erl/){              # 文字列がperlないしPerlを含む場合, ｢Find Perl!｣と表示する.
    print "Find Perl!\n";
  }
  if($input =~ /python/i){              # 文字列に大文字小文字問わず, pythonの文字列が含まれる場合, ｢Find Python!｣と表示する.
    print "Find Python!\n";
  }
  if($input =~ /^papix/){               # 文字列の先頭にpapixがある場合, ｢Find papix!｣と表示する.
    print "Find papix!\n";
  }
  if($input =~ /Hello(.+)/i){           # 文字列にHelloが含まれる場合, その後に続く単語xxxxを使って｢Hello! xxxx!｣と表示する.
    print "Hello! $1!\n";
  }
}

