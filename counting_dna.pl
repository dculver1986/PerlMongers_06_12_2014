#! /usr/bin/perl

use strict;
use warnings;
use feature qw(say);

my $file = 'rosalind_files/rosalind_dna.txt';

open(my $fh, '<:encoding(UTF-8)', $file)
    or die "Could not open file '$file' $!";

my (@adenine, @cytosine, @guanine, @thymine);
while ( my $line = <$fh> ) {
    chomp $line;
    @adenine = $line =~ m/A/g;
    @cytosine = $line =~ m/C/g;
    @thymine = $line =~ m/T/g;
    @guanine = $line =~ m/G/g;
    if (@adenine)  { push @adenine, $_; }
    if (@cytosine) { push @cytosine, $_; }
    if (@thymine)  { push @thymine, $_; }
    if (@guanine)  { push @guanine, $_; }
}

my @nucleotides = ( \@adenine, \@cytosine, \@guanine, \@thymine);
my $nucleotide_ref = \@nucleotides;

foreach my $base ( @$nucleotide_ref ) {
    #say @{$base}->[0];
    say scalar(@{$base}) - 1;
}
