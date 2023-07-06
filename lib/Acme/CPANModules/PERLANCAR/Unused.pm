package Acme::CPANModules::PERLANCAR::Unused;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

my $unused_dists = <<'_';
Acme-PERLANCAR-Dummy
Acme-PERLANCAR-Dummy-POD
Acme-PERLANCAR-DumpImportArgs
Acme-PERLANCAR-Prime
Acme-PERLANCAR-Test-Dependency-One
Acme-PERLANCAR-Test-Dependency-Three
Acme-PERLANCAR-Test-Dependency-Two
Acme-PERLANCAR-Test-Images
Acme-PERLANCAR-Test-MetaCPAN-HTML
Acme-PERLANCAR-Test-Misc
Acme-PERLANCAR-Test-SameRelease
Acme-PERLANCAR-Test-Versioning
Acme-Test-LocaleTextDomain
Acme-Test-LocaleTextDomainIfEnv
Acme-Test-LocaleTextDomainUTF8IfEnv
Acme-Test-crypt

Gepok
_

chomp(my @unused_modules = grep /\S/, split /^/m, $unused_dists);
s/-/::/g for @unused_modules;

our $LIST = {
    entries => [
        map { +{module=>$_} } @unused_modules,
    ],
    summary => "List of my modules which are (currently not used by me, currently not installable) ",
};


1;
# ABSTRACT:

=head1 DESCRIPTION

I use this to generate L<Task::BeLike::PERLANCAR::Used>, which in turn I use to
install all my perl modules on a new perl installation. What I usually do after
installing a perl with L<perlbrew>:

 % cpanm -n App::cpanm::perlancar
 % cpanm-perlancar -n Task::BeLike::PERLANCAR::Used


=head1 prepend:SEE ALSO

L<Task::BeLike::PERLANCAR::Used>

=cut
