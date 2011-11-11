#---------------------------------------------------------------------
package Dist::Zilla::PluginBundle::CJM;
#
# Copyright 2009 Christopher J. Madsen
#
# Author: Christopher J. Madsen <perl@cjmweb.net>
# Created:  4 Oct 2009
#
# This program is free software; you can redistribute it and/or modify
# it under the same terms as Perl itself.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See either the
# GNU General Public License or the Artistic License for more details.
#
# ABSTRACT: DEPRECATED plugin bundle for CJM
#---------------------------------------------------------------------

our $VERSION = '4.11';
# This file is part of Dist-Zilla-PluginBundle-Author-CJM 4.11 (November 11, 2011)

use Moose;
extends 'Dist::Zilla::PluginBundle::Author::CJM';


before configure => sub {
  my $self = shift;

  # Bundles don't have a logger, so we'll fake it:
  warn('[' . $self->name .
       "] This bundle is deprecated.  Please switch to \@Author::CJM\a\n");
}; # end before configure

no Moose;
__PACKAGE__->meta->make_immutable;
1;

__END__

=head1 NAME

Dist::Zilla::PluginBundle::CJM - DEPRECATED plugin bundle for CJM

=head1 VERSION

This document describes version 4.11 of
Dist::Zilla::PluginBundle::CJM, released November 11, 2011
as part of Dist-Zilla-PluginBundle-Author-CJM version 4.11.

=head1 DESCRIPTION

B<This bundle is deprecated.>

This is the old name for the plugin bundle that CJM uses.  The new
name is L<Author::CJM|Dist::Zilla::PluginBundle::Author::CJM>, to
avoid cluttering up the PluginBundle namespace.

Just replace

  [@CJM]

with

  [@Author::CJM / CJM]

(The C< / CJM> is not necessary; but it shortens the prefix on log messages.)

=for Pod::Coverage
configure

=head1 CONFIGURATION AND ENVIRONMENT

Dist::Zilla::PluginBundle::CJM requires no configuration files or environment variables.

=head1 INCOMPATIBILITIES

None reported.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

=head1 AUTHOR

Christopher J. Madsen  S<C<< <perl AT cjmweb.net> >>>

Please report any bugs or feature requests
to S<C<< <bug-Dist-Zilla-PluginBundle-Author-CJM AT rt.cpan.org> >>>
or through the web interface at
L<< http://rt.cpan.org/Public/Bug/Report.html?Queue=Dist-Zilla-PluginBundle-Author-CJM >>.

You can follow or contribute to Dist-Zilla-PluginBundle-Author-CJM's development at
L<< http://github.com/madsen/dist-zilla-pluginbundle-cjm >>.

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Christopher J. Madsen.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENSE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.

=cut
