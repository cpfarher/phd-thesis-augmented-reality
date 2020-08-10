#!/usr/bin/perl -w
use strict;
my $infile = $ARGV[0];
my $outfile = $infile;
$outfile =~ s/\.pdf$//;
$outfile = $outfile."_gray.pdf";
system "gs -sOutputFile=$outfile -sDEVICE=pdfwrite -sColorConversionStrategy=Gray -dProcessColorModel=/DeviceGray -dCompatibilityLevel=1.4 -dNOPAUSE -dBATCH $infile"
