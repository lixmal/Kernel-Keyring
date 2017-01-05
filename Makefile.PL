use strict;
use warnings;
use ExtUtils::MakeMaker;

my $eumm_version = $ExtUtils::MakeMaker::VERSION;
$eumm_version =~ s/_//;

WriteMakefile(
    NAME                => 'Kernel::Keyring',
    AUTHOR              => 'Viktor Liu',
    VERSION_FROM        => 'lib/Kernel/Keyring.pm',
    ABSTRACT_FROM       => 'lib/Kernel/Keyring.pm',
    LIBS                => ['-lkeyutils'],
    LICENSE             => 'perl_5',
    dist                => {
        COMPRESS => 'gzip -9f', SUFFIX => 'gz',
    },
	clean        => {FILES => 'Kernel-Keyring-*'},
    META_MERGE => {
        'meta-spec' => {version => 2},
        resources   => {
            bugtracker  => {
                web => 'https://github.com/lixmal/Kernel-Keyring/issues',
            },
            repository => {
                type => 'git',
                url  => 'git://github.com/lixmal/Kernel-Keyring.git',
                web  => 'https://github.com/lixmal/Kernel-Keyring',
            },
        },
    },
);


