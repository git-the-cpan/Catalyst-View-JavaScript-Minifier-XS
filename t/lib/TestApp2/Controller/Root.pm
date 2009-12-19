package TestApp2::Controller::Root;
our $VERSION = '1.093530';

use strict;
use warnings;

use parent 'Catalyst::Controller';

__PACKAGE__->config->{namespace} = '';

sub test : Local {
   my ( $self, $c ) = @_;
   $c->stash->{frew} = 'foo';

   $c->forward( 'TestApp2::View::JS' );
}

1;