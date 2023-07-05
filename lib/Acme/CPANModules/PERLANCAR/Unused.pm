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

chomp(my @modules = split /^/m, $dists);
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

 % setop --diff <(lcpan author-dists PERLANcAR | dist2mod) <(cpanmodules ls-entries PERLANCAR::Unused)

=cut
