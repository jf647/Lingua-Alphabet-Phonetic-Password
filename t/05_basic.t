#!/usr/bin/perl
#
# $Id$
#

use strict;
use warnings;

BEGIN {
    use Test::More;
    use Test::Exception;
    our $tests = 2;
    eval "use Test::NoWarnings";
    $tests++ unless( $@ );
    plan tests => $tests;
}

# pull in the package
use_ok 'Lingua::Alphabet::Phonetic';
use_ok 'Lingua::Alphabet::Phonetic::Password';

# create an object
my $p;
lives_ok { $p = Lingua::Alphabet::Phonetic->new('Password') }
    'instantiate an object';
isa_ok $p, 'Lingua::Alphabet::Phonetic::Password';

# check some basic passwords (generated from 
my %tests = (
    'qOusiENi' => [ qw|quebec OSCAR uniform sierra india ECHO NOVEMBER india| ],
);
for my $pw( keys %tests ) {
    my @ret = $p->enunciate( $pw );
    is_deeply \@ret, $tests{$pw}, "enunciate password $pw";
}

#
# EOF
