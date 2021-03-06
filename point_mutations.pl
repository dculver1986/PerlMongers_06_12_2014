#! /usr/bin/perl

use strict;
use warnings;
use feature qw(say);
use Data::Dumper;

#my $file = 'rosalind_files/rosalind_hamm.txt';
#open(my $fh, '<:encoding(UTF-8)', $file)
#    or die "Could not open file '$file' $!";
my @line1 = split //, 'CCAGATCCCTTGGCGGCGTGGCGCATCGACGGTGTCATCTCATGCCGTTTACGGGAGATGCAAAAGGTCCACATCGCGCAAAAAATCAGCCCCAATTCACTGGCCACAGTTACTGGGCTCCAAAGGCGGGGGCGGAGAAAGTTAATTCTCCAGGGTCCTCATTCCTGAAGCTCCACGAGACTTTAAATGATAGTACCATGCGGCGTAAAATCCGCCACAACGCCCGTACTTCAACAGGGATTGTAGAATCCGCGAGGCGCTAGGCTCAATCCATGCTTGGATTGGCGCTCTCAAGATCTTGGGAGGAGGGCATTCATATGCCCTATATAGACATTAGTGGCAGTTTTATCAATAAGAGGGGTGAGTCTCAAGCAGTCAGACAGGGTGACCGGAGAAAATGCGAACAGTAATCGATGCTATATGTGGAGCCACTTAGGTAGAATCCCCACACTACTTAAGCTAATGTGTATCCAGGAGCTGTGGAGATGGGCTCGCCTCAAAGTGGGAAGTTCGTACCCGCAATGCAATGCCGATTCTACATTGACGAGCTTACCGGGGTTCTTGGAGTACCACTAAATGGCCCCTCCTGATCCGAACTCCTTAACGTTTTGACACTTCGAAGCGTTAGCACAAGACCTAACCTAGGTGGCCAATGCGAGACCAACGGTCGCCGCATCCCACTACTTGATGAGAAGGAAGCCGCTATGAAGTACAGTCCGCTGCAGTCTTCATGCTACTAGGCCCAACCATTGCCATATACTGCGGTGTACACTTCGAACTTCCAAGGTATGCGTGCCCGTGTAGCCATTACCAGTGTATTCCTTATGTGCGTCCTCCTGCCCCGACGGCACCGGATGTCTTTTATGTTTCCTGGATTGCTCAAGGGCGGATAGCCTCTAGAAGTATAATAC';

my @line2 = split //, 'TCAGTTCCCATGGGGGGAGGTCTCCACGAAGGGGCGTTCACACATTCTATTCGGGGCATAGCAAAGAGAGCCTAAAGGCAAGAGATCACCTCTCAATCCCGGGACACTGTTTCATACAACAAAAGCCAAACACGGCGGTTCTTCGCTTTACCCGTTCACCCCTCTTTAATTTGGTCATGACGAGAACCATCAGTATCATAGCTCATTGAGTATGCAGAAACTGGAGTACCGACTTAGTGACTTATCCTTGTTTGTAACGGTCACCTCTCCACAAGCAAGGATTTACGACATCAAGAATAATTGAGGAAGCCATTCATACTTCGTAGATCGGCGTAATGCCCAGTTTCGTTACCCATCGTGCAGGCTGCCGAGCGATTTGATATGGCTCCTTGAGAAGCATCTCACCGAAATCACACCCTGATGGAGTCCCACTTGTGACCATTCCCTGCACTCCTTAGACGCATTTCTCGCCGGTACATTTGTATATTGAGTCGTAACAAGGTGTGCCGGTCGATCGATCCATGCAACGCATAGGCAAAATGGTAGATTTAGCAGGGTTCAGTGCAGTGCAACTAAATGGGCCATCCTTGGTCTCAAGCTTGCTCACTATGACAGCCTGGAGAGCGTACGGTCGACCCCACGTAGATCTATATTGTGAAACAAAGAGCGGCCAGGTCCCTATTTTTGTTGAGGAAAAAGTAGGTTTGGACTACAGTAACCTGCAGTCGTGAAGTTTCTAGGCCCCGCCAATCCATTCTATGTCGCGTGAAATGGCGGCCGCCGATGCTATGAGTATCCGCCTACAAGCTGCCAGTGTATGTCTAGCGGGCCTCCGCTCCTCCCCACCAGTTGGTATCTTTAGGAGATGCGATAGTGAGCATTAGTACGGGTTGATTGTGGAGCTAGAATCC';

my $count = 0;
my @array = map {  $count++ if $line1[$_] ne $line2[$_] } 0 .. $#line2;
say $count;

