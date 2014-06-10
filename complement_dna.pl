#! /usr/bin/perl

use strict;
use warnings;
use Test::Most;
use feature qw(say);

my $file = 'rosalind_files/rosalind_revc.txt';
open(my $fh, '<:encoding(UTF-8)', $file)
    or die "Could not open file '$file' $!";
while ( my $line = <$fh> ) {
    chomp $line;
    $line =~ tr/A|T/T|A/;
    $line =~ tr/C|G/G|C/;
    my $new_line = reverse $line;
    say $new_line;
    cmp_ok( $new_line, 'eq', reverse $line);
}
done_testing;
