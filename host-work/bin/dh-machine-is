#!/usr/local/bin/perl

use 5.010;
use strict;
use warnings;
use Ndn::Dreamhost::Machine;
use Term::ANSIColor;

#	isReachable deprecated
#	islocal deprecated
#	IsInvalidShell takes arg (shell name)
#	isReadyForMove deprecated
#	isWorkingVServer deprecated if not VServerGuest.
#	is_name_unique don't care.
my @methods = qw(
	isVSqlGuest
	isPrivateServer
	isPrivateWebServer
	isVSqlHost
	isVServerGuest
	isVServerHost
	isVirtualGuest
	isNetboot
	isPeon
	isSerf
	isSled
	isDedicated
	isMail
	isLocaldataBackup
	isBackupSerf
	isSharedWeb
	isSharedMysql
	isWpaasWeb
	isWpaasMysql
);

for my $m (@ARGV) {
	my $M = Ndn::Dreamhost::Machine->LoadOrDie({ machine => $m });
	for my $meth (@methods) {
		my $val = $M->$meth
			? color('bold green') . 'yes'
			: color('red') . 'no';
		say "$meth: $val" . color 'reset';
	}
}
