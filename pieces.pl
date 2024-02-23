#!/usr/bin/perl -w

<>;

my $lastgrp = '';

$| = 1;

open DESC, '>desc.xml';

while (<>) {
   chomp;
   my ($nat,$grp,$div,$name,@faces) = split /,/;
   $div  =~ s/["^]//g;
   $name =~ s/["^]//g;
   $name =~ s/&/\&amp;/g;
   $grp  =~ s/["^]//g;
   $grp  =~ s/&/\&amp;/g;

   if ($grp ne $lastgrp) {
      if ($lastgrp ne '') {
         print DESC <<XML;
</VASSAL.build.widget.PanelWidget>
XML
      }
      print DESC <<XML;
<VASSAL.build.widget.PanelWidget entryName="$grp" fixed="true" nColumns="5" vert="false">
XML
      $lastgrp = $grp;
   }

   my $desc;
   if ($name) {
      if ($div) { $desc = "$name/$div"; }
      else { $desc = $name; }
   }
   elsif ($div) { $desc = $div; }
   else { $desc = ''; } 

   my $gdesc = $desc;
   $gdesc =~ s/\\/\\\\/g;
   $gdesc =~ s/\//\\\//g;

   @faces = map { sprintf('%04d', $_); } grep { $_ ne ''; } @faces;

   my $front = shift @faces;
   $front .= '.svg';

   my $flist = join '.svg,', @faces;
   $flist .= '.svg';

   if ($grp eq 'Air' or $grp eq 'Naval' or $grp eq 'Markers') {
# wrong for: Numbers
      $grp = 'Marker' if $grp eq 'Markers';

      if (@faces) {
         print DESC <<XML;
<VASSAL.build.widget.PieceSlot entryName="$desc" height="50" width="50">+/null/prototype;$grp	emb2;Flip;2;F;;0;;;0;;;;1;false;0;0;$flist;@{[ ',' x (@faces - 1) ]};true;;;\\	piece;;;$front;$gdesc/	-1;\\	null;0;0</VASSAL.build.widget.PieceSlot>
XML
      }
      else {
         print DESC <<XML;
<VASSAL.build.widget.PieceSlot entryName="$desc" height="50" width="50">+/null/prototype;$grp	piece;;;$front;$gdesc/	null;0;0</VASSAL.build.widget.PieceSlot>
XML
      }
   }
   elsif ($grp eq 'Fortifications') {
# wrong for: Field, Landfronte, Coastal
      print DESC <<XML;
<VASSAL.build.widget.PieceSlot entryName="$desc" height="50" width="50">+/null/prototype;Fortification	piece;;;$front;$gdesc/	null;0;0</VASSAL.build.widget.PieceSlot>
XML
   }
   else {
      if (@faces) {
         print DESC <<XML;
<VASSAL.build.widget.PieceSlot entryName="$desc" height="50" width="50">+/null/prototype;Unit	emb2;Flip;2;F;;0;;;0;;;;1;false;0;0;$flist;@{[ ',' x (@faces - 1) ]};true;;;\\	piece;;;$front;$gdesc/	-1;\\	null;0;0</VASSAL.build.widget.PieceSlot>
XML
      }
      else {
         print DESC <<XML;
<VASSAL.build.widget.PieceSlot entryName="$desc" height="50" width="50">+/null/prototype;Unit	piece;;;$front;$gdesc/	null;0;0</VASSAL.build.widget.PieceSlot>
XML
      }
   }
}

if ($lastgrp ne '') {
   print DESC <<XML;
</VASSAL.build.widget.PanelWidget>
XML
}

close DESC;
print "\n";

