#!/usr/bin/perl

use strict;
use warnings;
use Getopt::Long;

my $showrgb = "/usr/X11/bin/showrgb";

my (%names, %codes);

my %opt = (
    spaces => 0,
    lowercase => 1,
);
GetOptions(\%opt,
    "spaces|!",
    "lowercase|!",
);

my $len = 0;
foreach (`$showrgb`) {
    chomp;
    my ($r, $g, $b, $name) = /^\s* (\d+) \s+ (\d+) \s+ (\d+) \s+ (.*)/x;

    warn "Can't parse line '$_': ($r, $g, $b)\n" 
        unless (defined $r && defined $g && defined $b && $name);

    next if ! $opt{spaces} and $name =~ /\s/;

    $name = lc $name if $opt{lowercase};
    next if exists $names{$name};

#    my $rgb = sprintf "%03d;%03d;%03d", $r, $g, $b;
    my $rgb = "$r;$g;$b";
    $names{$name} = $rgb;
    push @{ $codes{$rgb} }, $name;

    $len = length $name if length $name > $len;
}

for my $rgb (sort keys %codes) {
    for my $name (@{ $codes{$rgb}} ) {
        my $fg      = "\e[38;2;${rgb}m";
        my $bg      = "\e[48;2;${rgb}m";
        my $default = "\e[39m \e[49m";
        printf "$fg %${len}s\t%${len}s\t%s $default\n", $name, $name, $rgb;
    }
}

238,180,034