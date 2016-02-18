#!/usr/bin/env perl
use 5.010;
use strict;
use warnings;
use Encode qw/encode decode/;
use Unicode::Normalize qw/compose/;
use File::Copy;
use URI::Escape;

#my $string = "한글";
my $string = $ENV{POPCLIP_TEXT};
my $from = decode('utf8', $string);
my $to = compose($from);
my $encode = uri_escape_utf8($to);
print "$encode";
