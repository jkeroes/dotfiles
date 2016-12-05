#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;
use autodie;

use PPI;
use Pod::Elemental;
use Pod::Elemental::Selectors -all;
use Pod::Elemental::Transformer::Pod5;
use Pod::Elemental::Transformer::Nester;
use Pod::Weaver;
use File::Slurp;

for my $in (@ARGV) {
	my $doc     = Pod::Elemental->read_file($in);
	my $ppi_doc = PPI::Document->new($in);
	my $weaver  = Pod::Weaver->new_from_config({});
	my $woven   = $weaver->weave_document({
		pod_document => $doc,
		ppi_document => $ppi_doc,
		version      => '0.01',
		authors      => ['Joshua Keroes <joshua.keroes@dreamhost.com>'],
	});
	write_file("$in.new", $woven->as_pod_string);
}
