use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Test::FormValidator',
    license             => 'perl',
    dist_author         => 'Michael Graham <mag-perl@occamstoothbrush.com>',
    dist_version_from   => 'lib/Test/FormValidator.pm',
    requires => {
        'Test::Simple'             => 0.62,
        'Test::More'               => 0,    # included in Test::Simple 0.62
        'Test::Builder'            => 0,    # included in Test::Simple 0.62
        'Test::Builder::Tester'    => 0,    # included in Test::Simple 0.62
        'Data::FormValidator'      => 0,
        'CGI'                      => 0,
        'Data::Dumper'             => 2.03, # this version introduced Terse()
        'HTML::TokeParser::Simple' => 1.1,  # this version introduced is_start_tag($type)
    },
    add_to_cleanup      => [ 'Test-FormValidator-*' ],
    create_makefile_pl  => 'traditional',
);

$builder->create_build_script();
