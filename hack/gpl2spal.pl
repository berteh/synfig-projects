#!/usr/bin/perl
#####
# Quick script to translate GIMP Palette (gpl) into Synfig Palette (spal)
# adopt and adapt as much as you want.
# use at your own risk, eg: perl gpl2spal.pl <Tango.gpl >Tango.spal
#
# discussions at http://www.synfig.org/forums/viewtopic.php?f=22&p=14748#p14748
#####
#config
#####
#gamma correction factor. theoretical default is 2.2, no correction is 1, personal best visual result is 3.
my $gamma_factor=2.2;
#####

my $head=1;

while(<STDIN>) { #iterates over input file lines in $_
  if($head) { #header
    if (/GIMP Palette/) {
			print "SYNFIGPAL1.0\n";
    } elsif (/Name: (.+)$/) {
			print"$1\n";
    } elsif (/^#$/) { #end of header
      $head = 0;
      print "\n";
    } #else simply drop other header line
  }
  elsif (/^\s*(\d{1,3})\s+(\d{1,3})\s+(\d{1,3}).*/) { #color entry, entry names not supported for now in spal.
     printf "%f\n%f\n%f\n1\n\n", ($1/255)**$gamma_factor, ($2/255)**$gamma_factor, ($3/255)**$gamma_factor; # gamma correction per http://www.synfig.org/forums/viewtopic.php?p=14758#p14758
  }
}

