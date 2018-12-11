package {{$name}};
# ABSTRACT: Does things and stuff

use strict;
use warnings;

# VERSION

sub new {
    return bless { stuff => 42 }, shift;
}

sub things {
    return [ 42, 1138 ];
}

1;
__END__

=pod

=begin :badges

=for markdown
[![Build Status](https://travis-ci.org/gryphonshafer/{{ $dist->name }}.svg)](https://travis-ci.org/gryphonshafer/{{ $dist->name }})
[![Coverage Status](https://coveralls.io/repos/gryphonshafer/{{ $dist->name }}/badge.png)](https://coveralls.io/r/gryphonshafer/{{ $dist->name }})

=end :badges

=head1 SYNOPSIS

    use {{$name}};

=head1 DESCRIPTION

Does things and stuff.

=method new

This instantiates an object.

=attr stuff

Contains stuff.

=func things

Returns things.

=head1 SEE ALSO

You can also look for additional information at:

=for :list
* L<GitHub|https://github.com/gryphonshafer/{{ $dist->name }}>
* L<CPAN|http://search.cpan.org/dist/{{ $dist->name }}>
* L<MetaCPAN|https://metacpan.org/pod/{{$name}}>
* L<AnnoCPAN|http://annocpan.org/dist/{{ $dist->name }}>
* L<Travis CI|https://travis-ci.org/gryphonshafer/{{ $dist->name }}>
* L<Coveralls|https://coveralls.io/r/gryphonshafer/{{ $dist->name }}>

=cut
