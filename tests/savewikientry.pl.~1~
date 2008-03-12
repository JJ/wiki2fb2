#!/usr/bin/perl

use  WWW::Wikipedia;

use Convert::Wiki;

my $wiki = WWW::Wikipedia->new();
my $entry = $wiki->search( 'Perl' );
print $entry->text();

my $wiki = Convert::Wiki->new();
my $this_wiki = $wiki->from_txt( $entry->fulltext() );

my $n = $this_wiki->{nodes};
do {
  print $n->as_wiki();
} while ( $n = $n->next() );
