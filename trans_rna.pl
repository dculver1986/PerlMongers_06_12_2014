#! /usr/bin/perl

use strict;
use warnings;
use Data::Dumper;
use feature qw(say);

my $file = 'rosalind_files/rosalind_rna.txt';
my $written_file = 'rosalind_files/rna_file.txt';

open(my $fh, '<:encoding(UTF-8)', $file)
    or die "Could not open file '$file' $!";
while ( my $line = <$fh> ) {
    open ( my $write_file, '>', $written_file ) 
        or die "could not open file '$written_file' $!";

    chomp $line;
    $line =~ s/T/U/g;
    print $write_file $line;

close $write_file;
}
