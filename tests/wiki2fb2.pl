#!/usr/bin/perl

use strict;
use warnings;

use Carp;
use File::Slurp qw(read_file);

my $wiki_file = shift || 'perl.wiki';

my $wiki = read_file( $wiki_file ) || die "No puedo leer $wiki_file por $@\n";
my $wiki_limpio = limpia_wiki( $wiki );

sub limpia_wiki {
    my $wiki = shift || carp "Necesito un fichero";

    #Elimina infobox
    $wiki =~ s/{{[^\}]+}}//g;

    #Elimina comentarios
    $wiki =~ s/<!--[^>]+-->//sg;
    
    return $wiki;
}
