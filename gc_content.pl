#! /usr/bin/perl

use strict;
use warnings;
use Data::Dumper;
use feature qw(say);


my $file = 'rosalind_files/rosalind_gc.txt';
open (my $fh, '<', $file) or die "Could not open file '$file' $!";

my (%sequence_hash, $header, $seq, $count );
my @sequence;
while ( my $line = <$fh> ) {
    chomp($line);
    if ( $line =~ m/^>(.*)/ ) {
        $header = $1;
    } 
    else {
        $sequence_hash{$header} .= $line;
    }

}

close $fh;
#print Dumper(\%sequence_hash);

foreach my $key ( keys %sequence_hash ) {
    $count = 0;
    my @split_seq = split /(.)/, $sequence_hash{$key};
    foreach my $letter ( @split_seq ) {
        if ( $letter =~ m/G|C/i ) {
            $count++;
        }
    }
    say $key . ' GC count is '. $count / length($sequence_hash{$key}) * 100;
} 
