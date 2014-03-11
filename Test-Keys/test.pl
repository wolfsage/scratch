use strict;
use warnings;

use lib qw(blib/lib blib/arch);

use Test::Keys;
use Hash::Util qw(lock_keys);

my %hash = qw(cat dog mouse bird);
lock_keys(%hash);
%hash = ();

Test::Keys::printit(\%hash);

