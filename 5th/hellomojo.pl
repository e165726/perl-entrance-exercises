#!/usr/bin/env perl
use Mojolicious::Lite;

# Documentation browser under "/perldoc"
plugin 'PODRenderer';

get '/' => sub {
  my $c = shift;
  $c->stash(name => 'かねこう');
  $c->stash(hobby => 'バンド');
  $c->stash(language => 'Ruby');
  $c->render(template => 'profile');
};

get '/fizzbuzz' => sub {
  my $c = shift;
  $c->stash(title => 'FizzBuzz written by Perl');
  $c->render(template => 'fizzbuzz');
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Welcome';
<h1>Welcome to the Mojolicious real-time web framework!</h1>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>

@@ profile.html.ep
<html>
<head><title><%= $name %>のプロフィール</title></head>
<body style='padding: 30px;'>
  私の名前は<%= $name %>です.<br>
  趣味は<%= $hobby %>で, 好きなプログラミング言語は<%= $language %>です.
</body>
</html>

@@ fizzbuzz.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body>
  % for my $i (1..100){
  %   if($i % 3 eq 0 && $i % 5 eq 0) {
        %= "FizzBuzz!"; 
  %   }elsif($i % 3 == 0) {
        %= "Fizz!";
  %   }elsif($i % 5 == 0) {
        %= "Buzz!";
  %   }else{
        %= "$i";
  %   } 
  % } 
  </body>
</html>

