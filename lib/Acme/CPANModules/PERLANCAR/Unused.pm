package Acme::CPANModules::PERLANCAR::Unused;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

my $dists = <<'_';
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

chomp(my @modules = grep /\S/, split /^/m, $dists);
s/-/::/g for @modules;

our $LIST = {
    entries => [
        map { +{module=>$_} } @modules,
    ],
    summary => "List of my modules which I am not currently using (and installing)",
};


1;
# ABSTRACT:

=head1 DESCRIPTION

I use this to install all my modules on a new installation:

 # List all used modules
 % setop --diff <(lcpan author-dists PERLANCAR | dist2mod) <(cpanmodules ls-entries PERLANCAR::Unused)

 # which I can feed to cpanm, or generate a Task:: from


=head1 prepend:SEE ALSO

L<Task::PERLANCAR::Used>

=cut
