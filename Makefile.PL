use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'    => 'Test::Without::Module',
    'VERSION_FROM'  => 'lib/Test/Without/Module.pm', # finds $VERSION
    'PREREQ_PM'    => {
    #    'File::Slurp' => 0,
    #    Only needed for testing
    }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'lib/Test/Without/Module.pm', # retrieve abstract from module
       AUTHOR     => 'Max Maischein <corion@cpan.org>') : ()),

    # Make the version metadata explicit
    ($ExtUtils::MakeMaker::VERSION >= 6.3002 ?
      ('LICENSE' => 'perl', ) : ()),

);
