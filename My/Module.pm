package My::Module;

use feature qw(say);
use strict;
use warnings;

use My::Module2;

sub test {
    my ( $package, $filename, $line ) = caller;
    say (__PACKAGE__ . ": caller's package name is: $package" );
    My::Module2::test();
}

1;
