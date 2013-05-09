use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'Ipsefact',
    AUTHOR           => q{ytnobody <ytnobody aaattt gmail>},
    VERSION_FROM     => './lib/Ipsefact.pm',
    ABSTRACT_FROM    => './lib/Ipsefact.pm',
    LICENSE          => 'Artistic_2_0',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.008,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'Nephia' => '0.05',
        'Nephia::Plugin::Response::YAML' => 0,
        'IP::Country' => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Ipsefact-*' },
);


