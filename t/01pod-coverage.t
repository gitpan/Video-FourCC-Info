#!/usr/bin/perl -T

# t/01pod-coverage.t
#  Ensures all subroutines are documented with POD
#
# $Id: 01pod-coverage.t 6743 2009-04-29 13:42:50Z FREQUENCY@cpan.org $
#
# By Jonathan Yu <frequency@cpan.org>, 2009. All rights reversed.
#
# This package and its contents are released by the author into the
# Public Domain, to the full extent permissible by law. For additional
# information, please see the included `LICENSE' file.

use strict;
use warnings;

use Test::More;

unless ($ENV{TEST_AUTHOR}) {
  plan skip_all => 'Set TEST_AUTHOR to enable module author tests';
}

eval 'use Test::Pod::Coverage 1.04';
if ($@) {
  plan skip_all => 'Test::Pod::Coverage required to test POD Coverage';
}

all_pod_coverage_ok();
