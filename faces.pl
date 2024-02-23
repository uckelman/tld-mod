#!/usr/bin/perl -w

my ($x,$y);
$x = $y = 0;

my $ref = 'symbols.svg';

my %ncolor = (
   GE => '#bed2c1',
   LW => '#eeeeee',
   KM => '#b0e0d6',
   UK => '#eee1a2',
   US => '#b5be22',
   F  => '#ffff00',
   FT => '#ff5000',
   W  => 'white',
   Y  => '#ffff00'
);

<>;

$| = 1;

while (<>) {
   my ($nat,$grp,$div,$name,$fo,$fd,$fm,$fs,$fr,$ro,$rd,$rm,$rs,$rr,
       $flag,$symb,$trans,$mod,$type,$notes,$fid,$rid) = split /,/;
   $div  =~ s/["^]//g;
   $name =~ s/["^]//g;
   $name =~ s/&/\&amp;/g;
   $grp  =~ s/["^]//g;
   $grp  =~ s/&/\&amp;/g;

   &write_face($fid,$nat,$div,$name,$fo,$fd,$fm,$fs,$fr,
               $flag,$symb,$trans,$mod,$type,$notes);

   &write_face($rid,$nat,$div,$name,$ro,$rd,$rm,$rs,$rr,
               $flag,$symb,$trans,$mod,$type,$notes) if ($rs);
}


sub write_face {
   my ($i,$nat,$div,$name,$fo,$fd,$fm,$fs,$fr,
       $flag,$symb,$trans,$mod,$type,$notes) = @_;

   open TOK, sprintf('>%04d.svg', $i);

   print TOK <<SVG;
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<svg
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg" 
   xmlns:xlink="http://www.w3.org/1999/xlink"
   width="50" height="50">
 <g>
SVG

   if ($mod =~ /hq/ or $symb eq 'sup' or $symb eq 'hsup') {
      print TOK <<"SVG";
  <use x="@{[51*$x+24.5]}" y="@{[51*$y+24.5]}" style="fill:@{[$ncolor{$nat}]}" xlink:href="$ref#c" />
  <text style="font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:end;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed"><tspan x="@{[51*$x+44]}" y="@{[51*$y+22]}">$fd</tspan><tspan x="@{[51*$x+44]}" y="@{[51*$y+37]}">$fm</tspan></text>
  <text style="font-size:9px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+3]}" y="@{[51*$y+35]}">$fs</text>
SVG

      # HQ flag
      if ($mod =~ /hq/) {
         # name
         if (length $div > 5 and $div =~ / /) {
            ($a,$b) = split / /, $div;
            print TOK <<"SVG";
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:end;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed"><tspan x="@{[51*$x+37]}" y="@{[51*$y+35]}">$a</tspan><tspan x="@{[51*$x+37]}" y="@{[51*$y+43]}">$b</tspan></text>
SVG
         }
         elsif (length $div >= 5) {
            print TOK <<"SVG";
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+45]}">$div</text>
SVG
         }
         else {
            print TOK <<"SVG";
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+25]}" y="@{[51*$y+45]}">$div</text>
SVG
         }

         # infantry
         if ($symb eq 'inf') {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#$flag" />
SVG
            # transport
            if ($trans eq 'mot') {
               if ($flag eq 'cp') {
                  print TOK <<"SVG";
  <use x="@{[51*$x+25.33725]}" y="@{[51*$y+18]}" xlink:href="$ref#mothq" />
SVG
               }
               else {
                  print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#mothq" />
SVG
               }
            }
            elsif ($trans eq 'smot') {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#smot" />
SVG
            }
            elsif ($trans eq 'ht') {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#htdiv" />
SVG
            }

            # paratroops
            if ($mod =~ /para/) {
               print TOK <<"SVG";
  <use x="@{[51*$x+24]}" y="@{[51*$y+34]}" xlink:href="$ref#para" />
SVG
            }
         }
         # armor
         elsif ($symb eq 'pz') {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#$flag" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#pzdiv" />
SVG
         }
         # flak
         elsif ($symb eq 'flak') {
            if ($flag eq 'rgt' or $flag eq 'bn') {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+13]}" xlink:href="$ref#$flag" />
  <use x="@{[51*$x+20.781399]}" y="@{[51*$y+26]}" xlink:href="$ref#flak" />
SVG
               if ($trans eq 'mot') {
                  print TOK <<"SVG";
  <use x="@{[51*$x+26.33915]}" y="@{[51*$y+13.5]}" xlink:href="$ref#mothq" />
SVG
               }
            }
            else {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#$flag" />
  <use x="@{[51*$x+19.779499]}" y="@{[51*$y+26]}" xlink:href="$ref#flak" />
SVG
            }
         }
         # nebelwerfer
         elsif ($symb eq 'nw') {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#$flag" />
  <use x="@{[51*$x+19.487719]}" y="@{[51*$y+26]}" xlink:href="$ref#nw" />
SVG
            if ($trans eq 'mot') {
                  print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#mothq" />
SVG
            }
         }

         # mechanized movement
         if ($symb eq 'pz' or $trans eq 'ht') {
            print TOK <<"SVG";
   <line x1="@{[51*$x+38]}" y1="@{[51*$y+39]}" x2="@{[51*$x+44]}" y2="@{[51*$y+39]}" style="stroke-width:1;stroke:black;stroke-opacity:1" />
SVG
         }
      }
      # supply
      elsif ($symb eq 'sup' or $symb eq 'hsup') {
         print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+25]}" xlink:href="$ref#$symb" />
SVG

         if ($mod =~ /para/) {
            print TOK <<"SVG";
  <use x="@{[51*$x+29.640625]}" y="@{[51*$y+16.99375]}" xlink:href="$ref#para" />
SVG
         }
      }
   }
   # fortifications
   elsif ($nat eq 'F') {
      print TOK <<"SVG";
  <use x="@{[51*$x]}" y="@{[51*$y]}" style="fill:@{[$ncolor{$nat}]}" xlink:href="$ref#s" />
SVG

      # strongpoints
      if ($symb eq 'spt') {
         $fill = $ncolor{$fd == 2 ? 'FT' : 'F'};
         $stroke = $fd == 2 ? 'none' : $ncolor{'FT'};
         print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+15]}" xlink:href="$ref#spt" />
  <circle cx="@{[51*$x+25]}" cy="@{[51*$y+25]}" r="3.5" style="fill:$fill;fill-opacity:1;stroke:$stroke;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  <text style="font-size:14px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:$ncolor{'FT'};fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+45]}">$fo/$fd/$fm</text>
SVG
      }
      else {
         print TOK <<"SVG";
  <text style="font-size:14px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:$ncolor{'FT'};fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+15]}">$fo/$fd/$fm</text>
SVG
         # minor forts
         if ($symb eq 'mf' or $symb eq 'fau' or $symb eq 'fad') {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+27]}" xlink:href="$ref#$symb" />
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+35]}">$name</text>
SVG
         }
         elsif ($symb eq 'ff') {
            print TOK <<"SVG";
  <use x="@{[51*$x+24.5]}" y="@{[51*$y+28]}" xlink:href="$ref#ff" />
SVG
         }
         elsif ($symb eq 'lf') {
            print TOK <<"SVG";
  <use x="@{[51*$x+24.5]}" y="@{[51*$y+28]}" xlink:href="$ref#ff" />
  <use x="@{[51*$x+24.5]}" y="@{[51*$y+28]}" xlink:href="$ref#lf" />
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+30]}">$name</text>
SVG
         }
      }
   }
   # informational markers
   elsif ($nat eq 'W' or $nat eq 'Y' or
          $symb eq 'diag' or $symb eq 'int' or $symb eq '2mp') {
      print TOK <<"SVG";
  <use x="@{[51*$x]}" y="@{[51*$y]}" style="fill:@{[$ncolor{$nat}]}" xlink:href="$ref#s" />
SVG
      # diagonal markers
      if ($symb eq 'diag') {
         # small text
         if ($mod =~ /sm/) {
            ($a,$b) = split / /, $name;

            if ($b) {
               print TOK <<"SVG";
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" transform="rotate(-45,@{[51*$x+25]},@{[51*$y+23]})"><tspan x="@{[51*$x+25]}" y="@{[51*$y+23]}">$a</tspan><tspan x="@{[51*$x+25]}" y="@{[51*$y+33]}">$b</tspan></text>
SVG
            }
            else {
               print TOK <<"SVG";
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+30]}" transform="rotate(-45,@{[51*$x+25]},@{[51*$y+25]})">$name</text>
SVG
            }
         }
         # medium text
         elsif ($mod =~ /med/) {     
            print TOK <<"SVG";
  <text style="font-size:14px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+30]}" transform="rotate(-45,@{[51*$x+25]},@{[51*$y+23]})">$name</text>
SVG
         }
         # large text
         elsif ($mod =~ /lg/) {
            print TOK <<"SVG";
  <text style="font-size:24px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+23]}" y="@{[51*$y+34]}" transform="rotate(-45,@{[51*$x+23]},@{[51*$y+22]})">$name</text>
SVG
         }

         # cut rail
         if ($mod =~ /cut/) {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+25]}" xlink:href="$ref#cut" />
SVG
         }
      }
      # horizontal text markers
      elsif ($symb eq 'hor') {
         print TOK <<"SVG";
 <text style="font-size:24px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+34]}">$name</text>
SVG
      }
      # port capacity
      elsif ($symb eq 'pc') {
         print TOK <<"SVG";
  <text style="font-size:12px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+23]}" y="@{[51*$y+29]}" transform="rotate(-45,@{[51*$x+23]},@{[51*$y+22]})">$name</text>
  <text style="font-size:36px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+35]}" y="@{[51*$y+55]}">*</text>
SVG
      }
      # interdiction
      elsif ($symb eq 'int') {
         ($a,$b) = split / /, $name;
         print TOK <<"SVG";
  <text style="font-size:12px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+23]}" y="@{[51*$y+29]}" transform="rotate(-45,@{[51*$x+23]},@{[51*$y+22]})">$a</text>
  <text style="font-size:24px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:end;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+45]}" y="@{[51*$y+45]}">$b</text>
SVG
      }
      # heavy bomber +2 MP
      elsif ($symb eq '2mp') {
         print TOK <<"SVG";
  <use x="@{[51*$x]}" y="@{[51*$y]}" xlink:href="$ref#2mp" />
SVG
      }
      # mulberries
      elsif ($symb eq 'mul') {
         ($a,$b) = split / /, $name;
         print TOK <<"SVG";
  <use x="@{[51*$x]}" y="@{[51*$y]}" xlink:href="$ref#mul" />
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed"><tspan x="@{[51*$x+25]}" y="@{[51*$y+15]}">$a</tspan><tspan x="@{[51*$x+25]}" y="@{[51*$y+25]}">$b</tspan></text>
SVG
      }
      # damaged
      elsif ($symb eq 'dmul') {
         print TOK <<"SVG";
  <use x="@{[51*$x]}" y="@{[51*$y]}" xlink:href="$ref#dmul" />
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+27]}" y="@{[51*$y+27]}" transform="rotate(-30,@{[51*$x+27]},@{[51*$y+27]})">$name</text>
SVG
      }
      # train
      elsif ($symb eq 'train') {
         print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+25]}" xlink:href="$ref#train" />
SVG
      }
   }
   # air units
   elsif ($symb eq 'air') {
      print TOK <<"SVG";
  <use x="@{[51*$x]}" y="@{[51*$y]}" style="fill:@{[$ncolor{$nat}]}" xlink:href="$ref#s" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+10]}" xlink:href="$ref#$mod" />
  <text style="font-size:4px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+5]}" y="@{[51*$y+25]}">$type</text>
  <text style="font-size:18px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:end;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+45]}" y="@{[51*$y+45]}">$div</text>
SVG
      ($a,$b) = split / /, $name;
      if ($b) {
         print TOK <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Roman No9 L" x="@{[51*$x+5]}" y="@{[51*$y+45]}">$b</text>
SVG
      }
      print TOK <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:end;fill:black;fill-opacity:1;font-family:Nimbus Roman No9 L" x="@{[51*$x+45]}" y="@{[51*$y+25]}">$a</text>
SVG
   }
   # ground units
   else {
      print TOK <<"SVG";
  <use x="@{[51*$x]}" y="@{[51*$y]}" style="fill:@{[$ncolor{$nat}]}" xlink:href="$ref#s" />
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+25]}" y="@{[51*$y+45]}" >$div</text>
  <text style="font-size:9px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+3]}" y="@{[51*$y+45]}" >$fs</text>
  <text style="font-size:9px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+3]}" y="@{[51*$y+10]}" >$fr</text>
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Roman No9 L" x="@{[51*$x+3]}" y="@{[51*$y+37]}" >$name</text>
SVG
      # strength, ranged
      if ($fr) {
         print TOK <<"SVG";
  <text style="font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+41]}" y="@{[51*$y+15]}" >($fo)</text>
  <text style="font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+41]}" y="@{[51*$y+30]}" >$fd</text>
  <text style="font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+41]}" y="@{[51*$y+45]}" >$fm</text>
SVG
         # mechanized movement
         if ($symb eq 'pz' or $symb eq 'ac' or
            $trans eq 'ht' or $trans eq 'sp') {
            print TOK <<"SVG";
  <line x1="@{[51*$x+37]}" y1="@{[51*$y+47]}" x2="@{[51*$x+43]}" y2="@{[51*$y+47]}" style="stroke-width:1;stroke:black;stroke-opacity:1" />
SVG
         }
      }
      # strength, nonranged
      else {
         print TOK <<"SVG";
  <text style="font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:end;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x]}" y="@{[51*$y]}" ><tspan x="@{[51*$x+47]}" y="@{[51*$y+15]}">$fo</tspan><tspan x="@{[51*$x+47]}" y="@{[51*$y+30]}">$fd</tspan><tspan x="@{[51*$x+47]}" y="@{[51*$y+45]}">$fm</tspan></text>
SVG
         # mechanized movement
         if (($symb eq 'pz' and $flag ne 'rpl') or $symb eq 'ac' or
            $trans eq 'ht' or $trans eq 'sp') {
            print TOK <<"SVG";
  <line x1="@{[51*$x+41]}" y1="@{[51*$y+47]}" x2="@{[51*$x+47]}" y2="@{[51*$y+47]}" style="stroke-width:1;stroke:black;stroke-opacity:1" />
SVG
         }
      }
    

      # artillery
      if ($symb eq 'arty') {
         # self-propelled artillery
         if ($trans eq 'sp') {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#arty" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#sp" />
SVG
            # batallion flag
            if ($flag eq 'bn') {
               print TOK <<"SVG";
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17]}" xlink:href="$ref#bnsm" />
SVG
            }
         }
         # motorized artillery
         elsif ($trans eq 'mot') {
            # batallion or brigade flag
            if ($flag eq 'bn' or $flag eq 'bde') {
               $f = 0;

               # para
               if ($mod =~ /para/) {
                  $f = -2;
                  print TOK <<"SVG";
  <use x="@{[51*$x+29.649]}" y="@{[51*$y+17]}" xlink:href="$ref#para" />
SVG
               }

               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+22]}" xlink:href="$ref#arty" />
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17+$f]}" xlink:href="$ref#${flag}sm" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+20-$f]}" xlink:href="$ref#motsm" />
SVG
            }
            # motorized battery carriage
            else {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#arty" />
  <use x="@{[51*$x+25]}" y="@{[51*$y-2]}" xlink:href="$ref#motbty" />
SVG
            }
         }
         # fixed or casemented artillery
         elsif ($trans eq 'fix' or $trans eq 'cmt') {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+18]}" xlink:href="$ref#arty" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#$trans" />
SVG
         }
         # railroad artillery
         elsif ($trans eq 'rr') {
            print TOK <<"SVG";
  <use x="@{[51*$x+23]}" y="@{[51*$y+18]}" xlink:href="$ref#arty" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#rr" />
  <text style="font-size:8px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+28]}" y="@{[51*$y+25]}">E</text>
SVG
         }
         else {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+22]}" xlink:href="$ref#arty" />
SVG
            # batallion or brigade flag
            if ($flag eq 'bn' or $flag eq 'bde') {
               $f = 0;

               # para or glider
               if ($mod =~ /para|gl/) {
                  $f = -4;
                  print TOK <<"SVG";
  <use x="@{[51*$x+29.649]}" y="@{[51*$y+17]}" xlink:href="$ref#$&" />
SVG
               }

               print TOK <<"SVG";
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17+$f]}" xlink:href="$ref#${flag}sm" />
SVG
            }
            else {

            }
         }
      }
      # anti-tank
      elsif ($symb eq 'at') {
         # motorized guns
         if ($trans eq 'mot') {
            # batallion flag
            if ($flag eq 'bn') {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+23]}" xlink:href="$ref#at" />
  <use x="@{[51*$x+30.5]}" y="@{[51*$y+17]}" xlink:href="$ref#bnsm" />
  <use x="@{[51*$x+26]}" y="@{[51*$y+20]}" xlink:href="$ref#motsm" />
SVG
            }
            # motorized battery carriage
            else {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+21]}" xlink:href="$ref#at" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+2]}" xlink:href="$ref#motbty" />
SVG
               # glider
               if ($mod =~ /gl/) {
                  print TOK <<"SVG";
     <use x="@{[51*$x+29.649]}" y="@{[51*$y+12]}" xlink:href="$ref#gl" />
SVG
               }

               # heavy
               if ($mod =~ /hvy/) {
                  print TOK <<"SVG";
     <use x="@{[51*$x+25]}" y="@{[51*$y+21]}" xlink:href="$ref#hvy" />
SVG
               }
            }
         }
         else {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+22]}" xlink:href="$ref#at" />
SVG
            # batallion flag
            if ($flag eq 'bn') {
               print TOK <<"SVG";
  <use x="@{[51*$x+30.5]}" y="@{[51*$y+17]}" xlink:href="$ref#bnsm" />
SVG
            }
         }
      }
      # flak
      elsif ($symb eq 'flak') {
         # motorized flak 
         if ($trans eq 'mot') {
            # batallion flag
            if ($flag eq 'bn') {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+24]}" xlink:href="$ref#flak" />
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17]}" xlink:href="$ref#bnsm" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+20]}" xlink:href="$ref#motsm" />
SVG
            }
            # motorized battery carriage
            else {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+17]}" xlink:href="$ref#flak" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+17]}" xlink:href="$ref#motbty" />
SVG
               
               # glider
               if ($mod =~ /gl/) {
                  print TOK <<"SVG";
     <use x="@{[51*$x+29.649]}" y="@{[51*$y+12]}" xlink:href="$ref#gl" />
SVG
               }

               # heavy
               if ($mod =~ /hvy/) {
                  print TOK <<"SVG";
     <use x="@{[51*$x+25]}" y="@{[51*$y+15]}" xlink:href="$ref#hvy" />
SVG
               }
            }
         }
         else {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+22]}" xlink:href="$ref#flak" />
SVG
            # batallion flag
            if ($flag eq 'bn') {
               print TOK <<"SVG";
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17]}" xlink:href="$ref#bnsm" />
SVG
            }
         }
      }
      # gun
      elsif ($symb eq 'gun' or $symb eq 'mor') {
         # self-propelled guns
         if ($trans eq 'sp') {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#gun" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#sp" />
SVG
            # batallion flag
            if ($flag eq 'bn') {
               print TOK <<"SVG";
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17]}" xlink:href="$ref#bnsm" />
SVG
            }
         }
         # motorized guns
         elsif ($trans eq 'mot') {
            # batallion flag
            if ($flag eq 'bn') {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+22]}" xlink:href="$ref#gun" />
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17]}" xlink:href="$ref#bnsm" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+20]}" xlink:href="$ref#motsm" />
SVG
            }
            # motorized battery carriage
            else {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#gun" />
  <use x="@{[51*$x+25]}" y="@{[51*$y]}" xlink:href="$ref#motbty" />
SVG
               if ($symb eq 'mor') {
                  print TOK <<"SVG";
  <circle cx="@{[51*$x+25]}" cy="@{[51*$y+23]}" r="2.5" style="fill:black;stroke:none" />
SVG
               }
            }
         }
         else {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+22]}" xlink:href="$ref#gun" />
SVG
            # batallion flag
            if ($flag eq 'bn') {
               print TOK <<"SVG";
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17]}" xlink:href="$ref#bnsm" />
SVG
            }
         }
      }
      # nebelwerfer
      elsif ($symb eq 'nw') {
         # motorized rocket arty 
         if ($trans eq 'mot') {
            # batallion flag
            if ($flag eq 'bn') {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+22]}" xlink:href="$ref#nw" />
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17]}" xlink:href="$ref#bnsm" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+20]}" xlink:href="$ref#motsm" />
SVG
               # "fixed"
               if ($mod =~ /fix/) {
                  print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+28]}" xlink:href="$ref#fix" />
SVG
               }
            }
         }
         elsif ($trans eq 'ht') {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+17]}" xlink:href="$ref#htnw" />
SVG
         }
      }
      # mortar
      elsif ($symb eq 'gw') {
         # motorized mortars 
         if ($trans eq 'mot') {
            # batallion flag
            if ($flag eq 'bn') {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#gw" />
  <use x="@{[51*$x+33]}" y="@{[51*$y+19]}" xlink:href="$ref#bnsm" />
  <use x="@{[51*$x+28.5]}" y="@{[51*$y+22]}" xlink:href="$ref#motsm" />
SVG
            }
            # motorized battery carriage
            else {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+13]}" xlink:href="$ref#gw" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+14]}" xlink:href="$ref#motbty" />
SVG
            }
         }
      }    
      # infantry
      elsif ($symb eq 'inf') {
         print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#inf" />
SVG
         # transport
         if ($trans eq 'mot' or $trans eq 'ht' or
             $trans eq 'bi'  or $trans eq 'rr') {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#$trans" />
SVG
         }

         # company stripe
         if ($flag eq 'co') {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#coinf" />
SVG
            $m = $mod =~ /para/ ? -5 : 0; 

            # reconnaisance
            if ($mod =~ /rcce/) {
               print TOK <<"SVG";
  <use x="@{[51*$x+26]}" y="@{[51*$y+19+$m]}" xlink:href="$ref#rcce" />
SVG
            }
            # pioneers
            elsif ($mod =~ /pio/) {
               if    ($trans eq 'rr') { $r = -2; }
               elsif ($mod =~ /gl/)   { $r = -8; }
               else                   { $r =  0; }

               if ($trans eq 'rr') {
                  print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#rrpio" />
SVG
               }

               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19+$r]}" xlink:href="$ref#pio" />
SVG
            }

            # paratroops
            if ($mod =~ /para/) {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#para" />
SVG
            }
            # gliders
            elsif ($mod =~ /gl/) {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#gl" />
SVG
            }
         }
         # batallion, brigade, or replacement flag
         elsif ($flag eq 'bn' or $flag eq 'bde' or $flag eq 'rpl') {
            $f = $m = 0;
            if ($mod =~ /para/) {
               if ($mod =~ /pio/) {
                  $m = -5;
                  $f = -6;
               }
               else {
                  $f = $m = -2;
               }
            }
            elsif ($mod =~ /gl/) {
               $f = -4.5;
            }
            elsif ($mod =~ /pio/) {
               $f = -3;
            }

            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19+$f]}" xlink:href="$ref#${flag}sm" />
SVG
            # reconnaisance
            if ($mod =~ /rcce/) {
               print TOK <<"SVG";
  <use x="@{[51*$x+26]}" y="@{[51*$y+10+$m]}" xlink:href="$ref#rcce" />
SVG
            }
            # pioneers
            elsif ($mod =~ /pio/) {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19+$m]}" xlink:href="$ref#pio" />
SVG
            }

            # paratroops 
            if ($mod =~ /para/) {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#para" />
SVG
            }
            # gliders
            elsif ($mod =~ /gl/) {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#gl" />
SVG
            }
         }

         # machine gun
         if ($mod =~ /mg/) {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#mg" />
SVG
         }
         # military police
         elsif ($mod =~ /mp/) {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#mp" />
SVG
         }
         # feld ersatz
         elsif ($mod =~ /fe/) {
            print TOK <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">F.E.</text>
SVG
         }
         # fusiliers
         elsif ($mod =~ /fus/) {
            print TOK <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">FUS</text>
SVG
         }
         # ost
         elsif ($mod =~ /ost/) {
            print TOK <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">OST</text>
SVG
         }
         # commandos
         elsif ($mod =~ /kom/) {
            print TOK <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">KOM</text>
SVG
         }
         elsif ($mod =~ /cdo/) {
            print TOK <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">CDO</text>
SVG
         }
         # rangers
         elsif ($mod =~ /rgr/) {
            print TOK <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">RGR</text>
SVG
         }
         # heavy weapons
         elsif ($mod =~ /hw/) {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#hw" />
SVG
         }
         # railroad engineers
         elsif ($mod =~ /pio/ and $trans eq 'rr') {
            print TOK <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">E</text>
SVG
         }
         # remnant
         elsif ($mod =~ /rem/) {
            print TOK <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">REM</text>
SVG
         }
         # replacement
         elsif ($mod =~ /rpl/) {
            print TOK <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">RPL</text>
SVG
         }
      }
      # armor
      elsif ($symb eq 'pz') {
         print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#pz" />
SVG
         # company stripe
         if ($flag eq 'co') {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#copz" />
SVG
         }
         # batallion or replacement flag
         elsif ($flag eq 'bn' or $flag eq 'rpl') {
            if ($mod =~ /ag/) {
               $f = 0;

               # para
               if ($mod =~ /para/) {
                  $f = -4;
                  print TOK <<"SVG";
  <use x="@{[51*$x+25.359]}" y="@{[51*$y+15]}" xlink:href="$ref#para" />
SVG
               }

               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+17+$f]}" xlink:href="$ref#bnsm" />
SVG
            }
            else {
               print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#${flag}sm" />
SVG
            }
         }
     
         # assault gun
         if ($mod =~ /ag/) {
            print TOK <<"SVG";
  <use x="@{[51*$x+20]}" y="@{[51*$y+19]}" xlink:href="$ref#gun" />
SVG
         }
         elsif ($mod =~ /croc/) {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#croc" />
SVG
         }

         # RMSR
         if ($mod =~ /rmsr/) {
            print TOK <<"SVG";
  <text style="font-size:8px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+25]}" y="@{[51*$y+10]}">RMSR</text>
SVG
         }
         # crab
         elsif ($mod =~ /crab/) {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#crab" />
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">CRAB</text>
SVG
         }
         # AVRE
         elsif ($mod =~ /avre/) {
            print TOK <<"SVG";
  <use x="@{[51*$x+24]}" y="@{[51*$y+8]}" xlink:href="$ref#gw" />
SVG
         }
         # dual drive
         elsif ($mod =~ /dd/) {
            print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#dd" />
SVG
         }
         # remnant
         elsif ($mod =~ /rem/) {
            print TOK <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">REM</text>
SVG
         }
         # replacement
         elsif ($mod =~ /rpl/) {
            print TOK <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">RPL</text>
SVG
         }
      }
      # armored cars
      elsif ($symb eq 'ac') {
         print TOK <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#ac" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="$ref#$trans" />
SVG
         # batallion flag
         if ($flag eq 'bn') {
            print TOK <<"SVG";
  <use x="@{[51*$x+38]}" y="@{[51*$y+22]}" xlink:href="$ref#bnsm" />
SVG
         }

         $a = 0;
         if ($flag eq 'co') {
            if ($mod =~ /gl/) { $a = -1; }
            else { $a = 8; }
         }
 
         # reconnaisance
         if ($mod =~ /rcce/) {
            print TOK <<"SVG";
  <use x="@{[51*$x+39]}" y="@{[51*$y+13+$a]}" xlink:href="$ref#rcce" />
SVG
         }

         # gliders
         if ($mod =~ /gl/) {
            print TOK <<"SVG";
  <use x="@{[51*$x+38]}" y="@{[51*$y+19]}" xlink:href="$ref#gl" />
SVG
         }
      }
   }

   print TOK <<SVG;
 </g>
</svg>
SVG

   close TOK;
   print '.';
}
