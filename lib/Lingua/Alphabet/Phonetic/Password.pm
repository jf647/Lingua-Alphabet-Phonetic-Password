#
# $Id$
#

=head1 NAME

Lingua::Alphabet::Phonetic::Password - enunciate a password as words

=head1 SYNOPSIS

This is a specialization of Lingua::Alphabet::Phonetic. You should not use
this module; all interaction should be done with an object of type
Lingua::Alphabet::Phonetic.

  use Lingua::Alphabet::Phonetic;
  my $phonetic = new Lingua::Alphabet::Phonetic('Password');
  my @phonetic_pw = $phonetic->enunciate('qOusiENi');

=head1 DESCRIPTION

This module is a dictionary for Lingua::Alphabet::Phonetic.  It allows for
enunciation of passwords, using the following rules:

=over 4

=item * lowercase letters

enunciated using the NATO alphabet per Lingua::Alphabet::Phonetic::NATO, but
the word will be lowercased.

=item * uppercase letters

enunciated using the NATO alphabet per Lingua::Alphabet::Phonetic::NATO, but
the word will be uppercased.

=item * numbers

enunciated as an initialcaps word for the english pronuciation of the number.

=item * special characters

enunciated as a mixedcaps word for the english punctuation of the character:

  @ At
  ? Question
  _ Underscore
  # Hash
  & Ampersand
  ! Exclamation
  - Dash
  * Asterisk
  + Plus
  = Equals
  " DoubleQuote
  % Percent
  ' SingleQuote
  ( LeftParens
  ) RightParens
  , Comma
  . Period
  / ForeSlash
  \ BackSlash
  : Colon
  ; SemiColon
  < LessThan
  > GreaterThan
  [ LeftBracket
  ] RightBracket
  { LeftBrace
  } RightBrace
  ^ Caret
  ` Backtick
  | Pipe
  ~ Tilde

=back

A character which does not fall into any of these categories is dispatched
back to the base class for conversion.  In the case of
Lingua::Alphabet::Phonetic, this returns the character unchanged.

=cut

package Lingua::Alphabet::Phonetic::Password;

use strict;
use warnings;

# if you really need to support lower, mail me
use 5.006_001;      

# we are but a lowly subclass
use base 'Lingua::Alphabet::Phonetic';

# our version
our $VERSION = '0.10';

# number to name mappings
my %number_map = (
    0 => 'Zero',
    1 => 'One',
    2 => 'Two',
    3 => 'Three',
    4 => 'Four',
    5 => 'Five',
    6 => 'Six',
    7 => 'Seven',
    8 => 'Eight',
    9 => 'Nine',
);

# character to name mappings
my %character_map = (
    '@' => 'At',
    '?' => 'Question',
    '_' => 'Underscore',
    '#' => 'Hash',
    '&' => 'Ampersand',
    '!' => 'Exclamation',
    '-' => 'Dash',
    '*' => 'Asterisk',
    '+' => 'Plus',
    '=' => 'Equals',
    '"' => 'DoubleQuote',
    '%' => 'Percent',
    ''' => 'SingleQuote',
    '(' => 'LeftParens',
    ')' => 'RightParens',
    ',' => 'Comma',
    '.' => 'Period',
    '/' => 'ForeSlash',
    '\' => 'BackSlash',
    ':' => 'Colon',
    ';' => 'SemiColon',
    '<' => 'LessThan',
    '>' => 'GreaterThan',
    '[' => 'LeftBracket',
    ']' => 'RightBracket',
    '{' => 'LeftBrace',
    '}' => 'RightBrace',
    '^' => 'Caret',
    '`' => 'Backtick',
    '|' => 'Pipe',
    '~' => 'Tilde',
);

sub _name_of_letter
{

    

}

# keep require happy
1;


__END__


=head1 INSPIRATION

This module was inspired by the web-based password generator at
http://www.winguides.com/security/password.php.  In particular, the words
used for special characters are the same as used by that application.  This
module supports more special characters than the passwords which that
application generates, so any liberties taken with these characters are my
own.

=head1 TODO

=over 4

=item * unit tests

this module was born out of an urgent need.  I thus broke one of my
supposedly golden rules by releasing it to CPAN with only a perfunctory test
suite.

=back

=head1 SEE ALSO

L<Lingua::Alphabet::Phonetic> by Martin Thurn, the core for which this
module serves as a dictionary.

=head1 AUTHOR

James FitzGibbon, E<lt>jfitz@CPAN.orgE<gt>.

=head1 COPYRIGHT

Copyright (c) 2004 Primus Telecommunications Canada Inc. All Rights
Reserved.

This module is free software.  You may use and/or modify it under the
same terms as perl itself.

=cut

#
# EOF
