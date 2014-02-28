package Exobrain::Twitter;
use Moose;

# ABSTRACT: Twitter components for exobrain
our $VERSION = '1.02'; # VERSION


with 'Exobrain::Component';

# This is the namespace everything will be installed in by default.
# It's automatically prepended with 'exobrain'

sub component { "twitter" };

# These are the services in that namespace. So we have
# 'exobrain.twitter.source' and 'exobrain.twitter.sink'.

sub services {
    return (
        source   => 'Twitter::Source',
        sink     => 'Twitter::Sink',
        response => 'Twitter::Response',
    )
}

__END__

=pod

=head1 NAME

Exobrain::Twitter - Twitter components for exobrain

=head1 VERSION

version 1.02

=head1 SYNOPSIS

    $ exobrain-twitter-auth

    $ ubic start exobrain.twitter

=head1 DESCRIPTION

This distribution provides Twitter access to L<Exobrain>. To enable,
please run the L<exobrain-twitter-auth> file, which will run you
through the setup proceess.

Once enabled, services can be controlled using C<ubic>. Try
C<ubic status> to see them, and C<ubic start exobrain.twitter> to
start the twitter framework.

=head1 PROVIDED CLASSES

This component provides the following agents:

=over

=item L<Exobrain::Agent::Twitter::Source>

=item L<Exobrain::Agent::Twitter::Sink>

=item L<Exobrain::Agent::Twitter::Response>

=back

It also provides L<Exobrain::Intent::Tweet> and
L<Exobrain::Measurement::Tweet> classes for sending and
receiving tweets, respectively.

=for Pod::Coverage component services

1;

=head1 AUTHOR

Paul Fenwick <pjf@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Paul Fenwick.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
