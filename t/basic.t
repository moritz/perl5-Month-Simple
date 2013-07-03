use 5.010;
use strict;
use warnings;

use Test::More tests => 6;

use Month::Simple;

use Data::Dumper;

my $m = Month::Simple->new('2012-01');
is $m, '2012-01', 'stringification sanity';
is $m->delta(1), '2012-02', 'delta(1)';
is $m->next, '2012-02', 'next';
is $m->prev, '2011-12', 'prev';
is $m->delta(12), '2013-01', 'delta';
ok $m->first_second % 10 == 0, 'first second of this month is divisible by 10';
