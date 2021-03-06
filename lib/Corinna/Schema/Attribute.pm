package Corinna::Schema::Attribute;

use utf8;
use strict;
use warnings;

use parent 'Corinna::Schema::Object';

our $VERSION = '2.0';

Corinna::Schema::Attribute->mk_accessors(qw(use default));

sub _type_key
{
   my ( $self ) = @_;

   return 'attribute';
}

1;

__END__

=head1 NAME

B<Corinna::Schema::Attribute> - Class that represents the META information about a W3C schema B<attribute>.

=head1 WARNING

This module is used internally by L<Corinna>. You do not normally know much
about this module to actually use L<Corinna>.  It is documented here for
completeness and for L<Corinna> developers. Do not count on the interface of
this module. It may change in any of the subsequent releases. You have been
warned.

=head1 ISA

This class descends from L<Corinna::Schema::Object>.


=head1 SYNOPSIS

    my $attrib = Corinna::Schema::Attribute->new();

    $attrib->set_fields(
        name                   => 'code',
        scope                  => 'local',
        name_is_auto_generated => 0
    );

    print $attrib->name();     # prints 'code'.
    print $attrib->scope();    # prints 'local'.

=head1 DESCRIPTION

B<Corinna::Schema::Attribute> is a data-oriented object class that reprsents a
W3C schema B<attribute>. It is parsed from the W3C schema and is used a
building block for the produced B<schema model>. Objects of this class contain
META information about the W3C schema B<attribute> that they represent.

Like other schema object classes, this is a data-oriented object class,
meaning it doesn't have many methods other than a constructor and various
accessors.

=head1 METHODS

=head2 CONSTRUCTORS

=head4 new()

  $class->new(%fields)

B<CONSTRUCTOR>, inherited.

The new() constructor method instantiates a new object. It is inheritable, and
indeed inherited, by the decsendant classes.

Any -named- fields that are passed as parameters are initialized to those
values within the newly created object.

=head2 ACCESSORS

=head3 Inherited accessors

Several accessors are inherited by this class from its ancestor
L<Corinna::Schema::Object>.  Please see L<Corinna::Schema::Object> for a
documentation of those.

=head3 Accessors defined here

=head4 use()

  my $u = $object->use();  # GET
  $object->use($u);        # SET

This is a W3C property.

Indicates if the B<use> of an attribute is either 'I<optional>',
'I<required>', or 'I<prohibited>'.  This is filled in by the schema parser and
is used at validation time.

=head4 default()

   my $default = $object->default();  
   $object->default($default);

This is a W3C property.

This is the default value for the attribute when B<use> is 'I<required>'.

=head1 BUGS & CAVEATS

There no known bugs at this time, but this doesn't mean there are aren't any.
Note that, although some testing was done prior to releasing the module, this
should still be considered alpha code.  So use it at your own risk.

Note that there may be other bugs or limitations that the author is not aware
of.

=head1 AUTHOR

Ayhan Ulusoy <dev(at)ulusoy(dot)name>

=head1 COPYRIGHT

  Copyright (C) 2006-2007 Ayhan Ulusoy. All Rights Reserved.

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.

=head1 SEE ALSO

See also L<Corinna>, L<Corinna::ComplexType>, L<Corinna::SimpleType>

If you are curious about the implementation, see L<Corinna::Schema::Parser>,
L<Corinna::Schema::Model>, L<Corinna::Generator>.

If you really want to dig in, see L<Corinna::Schema::Attribute>,
L<Corinna::Schema::AttributeGroup>, L<Corinna::Schema::ComplexType>,
L<Corinna::Schema::Element>, L<Corinna::Schema::Group>,
L<Corinna::Schema::List>, L<Corinna::Schema::SimpleType>,
L<Corinna::Schema::Type>, L<Corinna::Schema::Object>

=cut
