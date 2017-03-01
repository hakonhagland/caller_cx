package My::Module2;

use feature qw(say);
use strict;
use warnings;

use Inline C => './test.c';

sub test {
    my ( $package, $filename, $line ) = caller;
    say (__PACKAGE__ . ": caller's package name is: $package" );
    test_c();
}

1;
