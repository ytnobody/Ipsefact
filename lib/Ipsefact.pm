package Ipsefact;
use strict;
use warnings;
use Nephia;
use Nephia::Plugin::Response::YAML;
use IP::Country::Medium;
use URI;

our $VERSION = 0.01;

my $ipc = IP::Country::Medium->new;

path '/' => sub {
    my $req = shift;
    return {
        template => 'index.tx',
        title    => config->{appname},
        root     => req->base,
    };
};

path '/api/{type:(json|yaml)}' => sub {
    my $req = shift;
    my $data = { 
        ip => req->address,
        country => $ipc->inet_atocc(req->address),
    };
    param->{type} eq 'yaml' ? yaml_res($data) : $data;
};


1;
__END__

=head1 NAME

Ipsefact - Global IP-Address Inspector as Web Application 

=head1 SYNOPSIS

  $ plackup

=head1 DESCRIPTION

Ipsefact is web application based Nephia.

=head1 AUTHOR

ytnobody

=head1 SEE ALSO

Nephia

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

