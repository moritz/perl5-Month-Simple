use 5.010;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'Month::Simple',
    AUTHOR           => q{Moritz Lenz <moritz.lenz@noris.de>},
    VERSION_FROM     => 'lib/Month/Simple.pm',
    ABSTRACT_FROM    => 'lib/Month/Simple.pm',
    LICENSE          => 'Perl_5',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.010,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        #'ABC'              => 1.6,
        #'Foo::Bar::Module' => 5.0401,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Month-Simple-*' },
);
