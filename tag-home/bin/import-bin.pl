#!/usr/bin/env perl

use Path::Tiny;

my $to_dir = "$ENV{HOME}/bin";

for my $old (@ARGV) {
	my $dir = path($old)->parent->child;

	my $new_name = $dir->stringify;
	$new_name =~ s/\.d$//;

$DB::single++;

	path($old)->copy("$to_dir/$new_name")->chmod("0755");
	system "mkrc -B fubar.dreamhost.com -o $to_dir/$new_name";
}