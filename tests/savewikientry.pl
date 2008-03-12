#!/usr/bin/perl

use  WWW::Wikipedia;

use Convert::Wiki;

my $entryname = shift || 'Perl';
my $wiki = WWW::Wikipedia->new();
my $entry = $wiki->search( $entryname );
print $entry->fulltext();
