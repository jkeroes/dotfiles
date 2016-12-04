#!/usr/bin/env perl

use lib '/ndn/perl';
use Ndn::Dreamhost::WebApplication;

use 5.10.0;
use strict;
use warnings;
use Text::Table;

my $url  = "https://jkeroes.dev.newdream.net/uebernet/?search_pos=fancy:web_application";

my @apps = (
	Ndn::Dreamhost::WebApplication->LoadAll({status => 'new'}),
	Ndn::Dreamhost::WebApplication->LoadAll({status => 'approved'}),
);

my @rows = map {
	[
    	$_->name,
    	$_->version,
    	$_->status,
    	$_->app_id,
    	"$url;search_value=" . $_->app_id,
    ]
} @apps;

my $t = Text::Table->new(qw/ name version status app_id newci_url /);
$t->load(@rows);
say $t;
