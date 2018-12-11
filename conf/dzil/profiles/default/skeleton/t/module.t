use strict;
use warnings;

use Test::Most;

use constant MODULE => '{{ ( my $name = $dist->name ) =~ s/\-/::/g; $name }}';

BEGIN { use_ok(MODULE); }
require_ok(MODULE);

my $obj;
ok( $obj = MODULE->new(), MODULE . '->new()' );
is( ref $obj, MODULE, 'ref $object' );

done_testing;
