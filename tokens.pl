#!/usr/bin/perl -w

print <<SVG;
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<svg
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg" 
   xmlns:xlink="http://www.w3.org/1999/xlink">
SVG

my ($x,$y);
$x = $y = 0;

my %ncolor = (
   GE => '#bed2c1',
   LW => '#eeeeee',
   KM => '#b0e0d6',
   UK => '#eee1a2',
   US => '#94be38',
   F  => '#ffff00',
   FT => '#ff5000',
   W  => 'white',
   Y  => '#ffff00'
);

<>;

print <<SVG;
 <defs>
  <circle id="c" style="opacity:1;stroke:black;stroke-width:1;stroke-linejoin:bevel;stroke-opacity:1" r="24.5" cx="0" cy="0" />
  <rect id="s" style="opacity:1;stroke:black;stroke-width:1;stroke-linejoin:bevel;stroke-opacity:1" width="49" height="49" x="0" y="0" />
  <rect id="inf" width="16.5" height="9" ry="0" x="-8.25" y="0" style="opacity:1;fill:none;stroke:black;stroke-width:1.20000005;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  <path id="pz" d="M -10.848067,3.3696046e-05 L 5.6519321,3.3696046e-05 L 10.848067,9.0000006 L -5.6519324,9.0000006 L -10.848067,3.3696046e-05 z " style="fill:none;stroke:black;stroke-width:1.19999886;stroke-linejoin:round;stroke-miterlimit:4;stroke-opacity:1" />
  <g id="arty" transform="matrix(0.15,0,0,0.15,2.775,-7.4)" style="fill:none;stroke:black;stroke-width:8;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" > 
   <path d="M -18.5,0 L -18.5,116" />
   <path d="M -37,62 L 0,62" />
   <path d="M -36,32.5 L -36,85.5" />
   <path d="M -1,32.5 L -1,85.5" />
  </g>
  <path id="at" d="M 0,9 L 0,-4.8378226 M 3.3392435,-4.8378226 L -3.3392435,-4.8378226" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
  <g id="flak">
   <path d="M -0.029499773,4.0507451 L -0.029499773,-6.0268069 M 1.7878813,-4.5807409 L -0.029499773,-6.3981229 L -1.8468798,-4.5807409" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
   <circle cx="0" cy="0" r="2.5" transform="translate(-2.949925e-2,6.743672)" style="opacity:1;fill:none;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <path id="gun" d="M -4.2e-08,9 L -4.2e-08,-4.4302796 M 1.8173808,-2.9842149 L -4.2e-08,-4.8015956 L -1.8173808,-2.9842149" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
  <path id="nw" d="M 3e-08,-5.4 L 3e-08,6.3 L -2.7,9 M 3e-08,-5.4 L 3e-08,6.3 L 2.7,9" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
  <g id="htnw" transform="translate(0,-1.237437)">
   <circle cx="0" cy="0" r="1.4678571" transform="translate(-6.423712,12.73115)" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <rect width="9.1499996" height="3" rx="1.5" ry="1.5" x="-0.82774806" y="11.199047" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -3.8500002,1.237437 L -8.85,10.237437 L 8.85,10.237437" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
   <path d="M 1.2409702,10.237437 L 6.2409702,1.237437" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 5.879922,10.237437 L 10.879922,1.237437" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -7.5,10.237437 L -2.5266052,1.2853264" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <path id="gw" d="M 5.45714,9 L -5.45714,8.98929 L 3.55714,0.48929" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  <g id="mor">
   <circle cx="0" cy="2" r="1.65" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:1.20000005;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -4.2e-08,9 L -4.2e-08,-4.4302796 M 1.8173808,-2.9842149 L -4.2e-08,-4.8015956 L -1.8046567,-2.996939" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
  </g>
  <path id="ac" d="M 0.15,2.907344 C -0.60000002,2.457344 -1.406809,2.399999 -2.25,2.399999 C -5.822227,2.399999 -8.4,5.401304 -8.4,9 L 8.4,8.907345 L 8.4,2.307344 C 7.9643,1.135859 6.880885,0.100964 5.85,-0.242656 C 3.6,-0.992656 1.2,0.207344 0.15,2.907344 z " style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
  <g id="cp" transform="matrix(0.15,0,0,0.15,-95.25,-326.9043)" style="display:inline" >
   <path d="M 600,2086.3622 L 600,2239.3622" style="fill:none;stroke:black;stroke-width:8;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;display:inline" />
   <rect width="70" height="69.999878" x="601" y="2103.3623" style="fill:none;stroke:black;stroke-width:6;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 601,2103.375 L 636,2138.375 L 671,2103.375 L 601,2103.375 z " style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:1;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;display:inline" />
   <path d="M 601,2173.3622 L 636,2138.3622 L 671,2173.3622 L 601,2173.3622 z " style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:1;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;display:inline" />
  </g>
  <g id="div" transform="matrix(0.15,0,0,0.15,-95.28725,-365.0043)" style="display:inline">
   <path d="M 598,2340.3622 L 598,2493.3622" style="opacity:1;fill:none;stroke:black;stroke-width:8;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;display:inline" />
   <path d="M 598,2356.3622 L 673.49663,2399.9502 L 598,2443.5382 L 598,2356.3622 z " style="opacity:1;fill:none;stroke:black;stroke-width:6;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1;display:inline" />
   <path d="M 598,2356.375 L 598,2382.4375 L 643.15625,2382.4375 L 598,2356.375 z M 598,2417.4688 L 598,2443.5312 L 643.125,2417.4688 L 598,2417.4688 z " style="opacity:1;fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:6;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1;display:inline" />
  </g>
  <g id="bde" transform="matrix(0.15,0,0,0.15,-94.76225,-396.6543)" style="display:inline">
   <path d="M 595,2551.3622 L 595,2704.3622" style="fill:none;stroke:black;stroke-width:8;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 609.83446,2568.7743 L 685.33109,2612.3623 L 609.83446,2655.9503 L 609.83446,2568.7743 z " transform="translate(-15.83446,-2.412124)" style="fill:none;stroke:black;stroke-width:6;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
   <path d="M 596,2609.9502 L 664,2609.9502" style="fill:none;stroke:black;stroke-width:6;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <g id="rgt" transform="matrix(0.15,0,0,0.15,-217.425,-10.35)">
   <path d="M 1421,2 L 1421,130" style="fill:none;stroke:black;stroke-width:6;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <rect y="17" x="1427" height="51" width="51" style="opacity:1;fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:6;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <g id="bn" transform="matrix(0.15,0,0,0.15,-217.9981,-41.25)">
   <path d="M 1425,202 L 1425,336" style="opacity:1;fill:none;stroke:black;stroke-width:6;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 1482.7607,274 L 1432.1197,303.2376 L 1432.1197,244.7624 L 1482.7607,274 z " transform="translate(-1.119663,-21.7624)" style="opacity:1;fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:6;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <rect id="coinf" x="-8.25" y="0.095697726" width="1.2157114" height="8.808604574" style="fill:black;fill-opacity:1;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
  <circle id="sup" cx="0" cy="0" r="8" style="opacity:1;fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:bevel;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  <rect id="copz" width="1.2157114" height="10.171276" x="-10.958575" y="0.22101748" transform="matrix(1,0,0.5,0.866025,0,0)" style="opacity:1;fill:black;fill-opacity:1;stroke:black;stroke-width:1.28948259;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:4;stroke-opacity:1" />
  <g id="bnsm" transform="matrix(0.1,0,0,0.1,-147.1412,-33.12998)">
   <path d="M 1425,202 L 1425,336" style="opacity:1;fill:none;stroke:black;stroke-width:6;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 1482.7607,274 L 1432.1197,303.2376 L 1432.1197,244.7624 L 1482.7607,274 z " transform="translate(-1.119663,-21.7624)" style="opacity:1;fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:6;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <g id="bdesm" transform="matrix(0.1,0,0,0.1,-64.0412,-270.0662)" style="display:inline">
   <path d="M 595,2551.3622 L 595,2704.3622" style="fill:none;stroke:black;stroke-width:8;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 609.83446,2568.7743 L 685.33109,2612.3623 L 609.83446,2655.9503 L 609.83446,2568.7743 z " transform="translate(-15.83446,-2.412124)" style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:6;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
   <path d="M 596,2609.9502 L 664,2609.9502" style="fill:none;stroke:black;stroke-width:6;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <g id="hsup">
   <circle cx="0" cy="0" r="8" style="opacity:1;fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:bevel;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 8,0 A 8,8 0 1 1 -8,0 L 0,0 z" style="opacity:1;fill:black;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:3;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <g id="mot">
   <circle cx="0" cy="0" r="1.4678571" transform="translate(-5.5821,11.51786)" style="opacity:1;fill:black;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="1.4678571" transform="translate(5.58214,11.51786)" style="opacity:1;fill:black;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <g id="ht" transform="translate(4.324179,-13.48423)">
   <circle cx="0" cy="0" r="1.4678571" transform="translate(-10.2063,25.06633)" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <rect width="9.1499996" height="3" rx="1.5" ry="1.5" x="-6.1241999" y="23.534227" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <circle id="bi" cx="0" cy="0" r="1.4678571" transform="translate(0,11.51786)" style="opacity:1;fill:black;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  <rect id="sp" width="14.4" height="3" rx="1.5" ry="1.5" x="-7.1999998" y="10.05" style="fill:none;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  <path id="cmt" d="M -7.425,11.75 L -5.175,9.05 L 5.175,9.05 L 7.425,11.75 L -7.425,11.75 z " style="opacity:1;fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  <path id="fix" d="M -7.425,-7.850003 L -5.175,-10.550003 L 5.175,-10.550003 L 7.425,-7.850003" style="opacity:1;fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  <g id="mg">
   <circle cx="0" cy="0" r="0.60000002" transform="translate(2.334372,4.500003)" style="opacity:0.98000004;fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.15000001;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.60000002" transform="translate(-2.334372,4.500003)" style="opacity:0.98000004;fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.15000001;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -1e-07,1.73576 L -1e-07,7.2642469" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <path id="mp" d="M -7.65,8.4 L 7.65,0.6" style="fill:none;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  <g id="mothq">
   <circle cx="0" cy="0" r="1.4678571" transform="translate(-3.069393,3.625)" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="1.4678571" transform="translate(-8.105107,3.625)" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <g id="motsm">
   <circle cx="0" cy="0" r="1" transform="translate(2.181871,-5.004126)" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="1" transform="translate(-2.181871,-5.004126)" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <circle id="smot" cx="0" cy="0" r="2" transform="translate(-5.58725,4.758433)" style="fill:$ncolor{'GE'};fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  <g id="motbty">
   <circle cx="0" cy="0" r="1.4678571" transform="translate(6.3321,12.71786)" style="fill:black;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="1.4678571" transform="translate(-6.3321,12.71786)" style="fill:black;stroke:black;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -8.85,10.2 L 8.85,10.2" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <circle id="crab" cx="0" cy="0" r="2" transform="translate(-11.87643,7.3)" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.60000002;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  <path id="dd" d="M -18.653522,4.5000171 L -8.2487935,4.5000171 M 8.2487936,4.5000171 L 16,4.5000171" style="fill:none;stroke:black;stroke-width:0.75;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  <g id="rr">
   <rect width="16.5" height="3" ry="0" x="-8.25" y="9" style="opacity:1;fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 5.5066665,9.5 L 5.5066665,11.5" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 2.7633333,9.5 L 2.7633333,11.5" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 0.019999862,9.5 L 0.019999862,11.5" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -2.7233334,9.5 L -2.7233334,11.5" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -5.4666669,9.5 L -5.4666669,11.5" style="fill:none;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <path id="pzdiv" d="M -8.473062,9.475018 L -0.67936979,9.475018 L 1.7749985,13.375001 L -6.018694,13.375001 L -8.473062,9.475018 z " style="fill:none;stroke:black;stroke-width:1.19999826;stroke-linejoin:round;stroke-miterlimit:4;stroke-opacity:1" />
  <g id="htdiv" transform="matrix(0.5,0,0,0.5,-4.425,9.312499)">
   <rect width="16.5" height="9" ry="0" x="-8.25" y="0" style="opacity:1;fill:none;stroke:black;stroke-width:2.4000001;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="1.4678571" transform="translate(-5.882121,11.55)" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:1.79999995;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <rect width="9.1499996" height="3" rx="1.5" ry="1.5" x="-1.8000208" y="10.049997" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:1.79999995;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" id="rect1895" />
  </g>
  <g id="rplsm">
   <path d="M -4.6412,-12.92998 L -4.6412,0.47002" style="fill:none;stroke:black;stroke-width:0.60000002;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -4.62,-11.140236 L 1.02287,-7.90622 L -4.62,-4.6404678" style="fill:none;stroke:black;stroke-width:0.60000002;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <g id="mf" transform="translate(-57.80598,35.08066)">
   <g clip-path="url(#mfClipPath)">
    <path d="M 57.889951,-17.193649 L 41.842087,-44.989348 L 57.889951,-17.193649 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 64.20209,-17.193649 L 48.154231,-44.989348 L 64.20209,-17.193649 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 61.04602,-17.193649 L 44.99815,-44.989348 L 61.04602,-17.193649 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 67.35817,-17.193648 L 51.310312,-44.989349 L 67.35817,-17.193648 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 70.51424,-17.193648 L 54.466383,-44.989349 L 70.51424,-17.193648 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 73.67032,-17.193648 L 57.622462,-44.989349 L 73.67032,-17.193648 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
   </g>
   <path d="M 63.719527,-40.810017 L 69.633075,-30.58066 L 63.719528,-20.351302 L 51.892433,-20.351302 L 45.978885,-30.580659 L 51.892431,-40.810016 L 63.719527,-40.810017 z " style="fill:none;fill-opacity:1;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 65.800412,-30.58066 C 65.800412,-26.17115 62.221183,-22.596537 57.80598,-22.596537 C 53.390777,-22.596537 49.811548,-26.17115 49.811548,-30.58066 C 49.811548,-34.990169 53.390777,-38.564782 57.80598,-38.564782 C 62.221183,-38.564782 65.800412,-34.990169 65.800412,-30.58066 z " style="fill:none;fill-opacity:1;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <clipPath id="mfClipPath">
   <path d="M 65.800412,-30.58066 C 65.800412,-26.17115 62.221183,-22.596537 57.80598,-22.596537 C 53.390777,-22.596537 49.811548,-26.17115 49.811548,-30.58066 C 49.811548,-34.990169 53.390777,-38.564782 57.80598,-38.564782 C 62.221183,-38.564782 65.800412,-34.990169 65.800412,-30.58066 z " style="fill:black;fill-opacity:1;stroke:none;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </clipPath>
  <g id="lf">
   <path d="M -23.749971,15.375 L 23.749971,15.375" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.50000012;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(-16.90907,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(-21.13634,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(-19.0227,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(-14.79544,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(-12.6818,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(-10.56817,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(-8.454535,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(-6.3409,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(-4.227267,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(-2.113633,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(4.739704e-7,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(2.113634,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(4.227268,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(6.340902,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(10.56817,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(12.6818,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(14.79544,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(16.90907,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(19.0227,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(21.13634,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(23.24997,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="0.5" transform="translate(-23.24997,15.375)" style="fill:#ff5000;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.25;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -12.084857,0.625 L -13.033408,1.625 L -13.981959,0.625 L -14.93051,1.625 L -15.879061,0.625 L -16.827612,1.625 L -17.776164,0.625 L -18.724715,1.625 L -19.673266,0.625 L -20.621817,1.625 L -21.570368,0.625 L -22.51892,1.625 L -23.467471,0.625" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.75;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
   <path d="M 23.478083,0.625 L 22.529531,1.625 L 21.58098,0.625 L 20.632429,1.625 L 19.683878,0.625 L 18.735327,1.625 L 17.786775,0.625 L 16.838224,1.625 L 15.889673,0.625 L 14.941122,1.625 L 13.992571,0.625 L 13.044019,1.625 L 12.095468,0.625" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:#ff5000;stroke-width:0.75;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
  </g>
  <g id="ff">
   <path d="M -20.90625,4.244099 L -20.90625,9.244099 L -23.40625,9.244099 L -23.40625,13.02535 L 23.40625,13.02535 L 23.40625,9.244099 L 20.90625,9.244099 L 20.90625,4.244099 L 17.09375,4.244099 L 17.09375,9.244099 L 11.40625,9.244099 L 11.40625,4.244099 L 7.59375,4.244099 L 7.59375,9.244099 L 1.90625,9.244099 L 1.90625,4.244099 L -1.90625,4.244099 L -1.90625,9.244099 L -7.59375,9.244099 L -7.59375,4.244099 L -11.40625,4.244099 L -11.40625,9.244099 L -17.09375,9.244099 L -17.09375,4.244099 L -20.90625,4.244099 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.19999981;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
   <g transform="translate(-55.77305,70.06832)" clip-path="url(#ffClipPath)">
    <path d="M 33.694346,-47.176791 L 17.646489,-74.972492 L 33.694346,-47.176791 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 36.850425,-47.176791 L 20.802568,-74.972492 L 36.850425,-47.176791 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 46.318644,-47.176792 L 30.270787,-74.972491 L 46.318644,-47.176792 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 52.630792,-47.176792 L 36.582935,-74.972491 L 52.630792,-47.176792 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 49.474721,-47.176792 L 33.426864,-74.972491 L 49.474721,-47.176792 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 43.162571,-47.176792 L 27.114714,-74.972491 L 43.162571,-47.176792 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 40.006496,-47.176791 L 23.958639,-74.972492 L 40.006496,-47.176791 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 55.786871,-47.176792 L 39.739007,-74.972491 L 55.786871,-47.176792 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 62.09901,-47.176792 L 46.051151,-74.972491 L 62.09901,-47.176792 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 58.94294,-47.176792 L 42.89507,-74.972491 L 58.94294,-47.176792 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 65.25509,-47.176791 L 49.207232,-74.972492 L 65.25509,-47.176791 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 68.41116,-47.176791 L 52.363303,-74.972492 L 68.41116,-47.176791 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 77.87939,-47.176792 L 61.83153,-74.972491 L 77.87939,-47.176792 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 84.19153,-47.176792 L 68.14367,-74.972491 L 84.19153,-47.176792 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 81.03545,-47.176792 L 64.98759,-74.972491 L 81.03545,-47.176792 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 74.72331,-47.176792 L 58.67545,-74.972491 L 74.72331,-47.176792 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 71.56724,-47.176791 L 55.519382,-74.972492 L 71.56724,-47.176791 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 87.3476,-47.176792 L 71.29974,-74.972491 L 87.3476,-47.176792 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 93.65975,-47.176792 L 77.61189,-74.972491 L 93.65975,-47.176792 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 90.50368,-47.176792 L 74.45581,-74.972491 L 90.50368,-47.176792 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
   </g>
  </g>
  <clipPath id="ffClipPath">
   <path d="M 34.866797,-65.82422 L 34.866797,-60.82422 L 32.366797,-60.82422 L 32.366797,-57.04297 L 79.179297,-57.04297 L 79.179297,-60.82422 L 76.679297,-60.82422 L 76.679297,-65.82422 L 72.866797,-65.82422 L 72.866797,-60.82422 L 67.179297,-60.82422 L 67.179297,-65.82422 L 63.366798,-65.82422 L 63.366798,-60.82422 L 57.679298,-60.82422 L 57.679298,-65.82422 L 53.866798,-65.82422 L 53.866798,-60.82422 L 48.179298,-60.82422 L 48.179298,-65.82422 L 44.366797,-65.82422 L 44.366797,-60.82422 L 38.679297,-60.82422 L 38.679297,-65.82422 L 34.866797,-65.82422 z " style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:1.19999981;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
  </clipPath>
  <g id="fau" transform="translate(-83.32125,21.90926)">
   <g transform="translate(-5.818588,-8.259082)" clip-path="url(#fauClipPath)">
    <path d="M 85.625792,5.130228 L 69.577935,-22.665471 L 85.625792,5.130228 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 82.469721,5.130228 L 66.421864,-22.665471 L 82.469721,5.130228 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 88.781871,5.130228 L 72.734007,-22.665471 L 88.781871,5.130228 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 95.09401,5.130228 L 79.046151,-22.665471 L 95.09401,5.130228 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 91.93794,5.130228 L 75.89007,-22.665471 L 91.93794,5.130228 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 98.25009,5.130229 L 82.202232,-22.665472 L 98.25009,5.130229 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 101.40616,5.130229 L 85.358303,-22.665472 L 101.40616,5.130229 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 110.87439,5.130228 L 94.82653,-22.665471 L 110.87439,5.130228 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 107.71831,5.130228 L 91.67045,-22.665471 L 107.71831,5.130228 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 104.56224,5.130229 L 88.514382,-22.665472 L 104.56224,5.130229 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
   </g>
   <path d="M 75.900861,-8.4755752 C 71.9058,-9.2547492 68.768235,-13.090605 68.927051,-17.099213 C 69.38505,-18.865557 71.189443,-20.153082 73.031053,-20.124262 C 76.551103,-21.312489 78.673159,-24.557557 81.750426,-26.431041 C 83.842354,-27.219164 86.369876,-26.265615 87.546397,-24.431436 C 89.890285,-22.540728 93.537604,-23.063444 95.535722,-20.64832 C 98.407281,-17.58898 98.494661,-12.331002 95.527422,-9.3034542 C 93.367264,-7.5183602 89.838528,-7.7808132 87.91053,-9.7796452 C 85.54178,-11.270431 82.359306,-10.60246 80.246389,-8.9777242 C 78.938076,-8.3202842 77.307178,-7.7581692 75.900861,-8.4755752 z " style="fill:none;fill-opacity:1;stroke:#ff5000;stroke-width:1.19999886;stroke-linecap:butt;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <clipPath id="fauClipPath">
   <path d="M 81.719449,-0.2164934 C 77.724388,-0.9956674 74.586823,-4.8315233 74.745639,-8.8401314 C 75.203638,-10.606475 77.008031,-11.894 78.849641,-11.86518 C 82.369691,-13.053406 84.491747,-16.298474 87.569014,-18.171958 C 89.660942,-18.960081 92.188464,-18.006532 93.364985,-16.172353 C 95.708873,-14.281645 99.356192,-14.804361 101.35431,-12.389237 C 104.22587,-9.3298984 104.31325,-4.0719204 101.34601,-1.0443724 C 99.185852,0.7407216 95.657116,0.4782686 93.729118,-1.5205633 C 91.360368,-3.0113493 88.177894,-2.3433784 86.064977,-0.7186424 C 84.756664,-0.061202398 83.125766,0.5009126 81.719449,-0.2164934 z " style="fill:black;fill-opacity:1;stroke:none;stroke-width:1.19999886;stroke-linecap:butt;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </clipPath>
  <g id="fad" transform="matrix(-1,0,0,-1,-5.918404e-7,8.999991)">
   <use x="0" y="0" width="16" height="16" xlink:href="#fau" />
  </g>
  <g id="spt" transform="translate(-89.21742,17.75175)">
   <g transform="translate(-12.95951,16.85015)" clip-path="url(#spClipPath)">
    <path d="M 96.345755,-8.747492 L 80.297898,-36.543191 L 96.345755,-8.747492 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 102.6579,-8.747492 L 86.610046,-36.543191 L 102.6579,-8.747492 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 99.501832,-8.747492 L 83.453975,-36.543191 L 99.501832,-8.747492 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 105.81398,-8.747492 L 89.766118,-36.543191 L 105.81398,-8.747492 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 112.12612,-8.747492 L 96.078262,-36.543191 L 112.12612,-8.747492 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 108.97005,-8.747492 L 92.922181,-36.543191 L 108.97005,-8.747492 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 115.2822,-8.747491 L 99.234343,-36.543192 L 115.2822,-8.747491 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 118.43827,-8.747491 L 102.39041,-36.543192 L 118.43827,-8.747491 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 127.9065,-8.747492 L 111.85864,-36.543191 L 127.9065,-8.747492 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 124.75042,-8.747492 L 108.70256,-36.543191 L 124.75042,-8.747492 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
    <path d="M 121.59435,-8.747491 L 105.54649,-36.543192 L 121.59435,-8.747491 z " style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
   </g>
   <rect width="28.800014" height="8.7999973" x="74.817413" y="-11.854936" style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:#ff5000;stroke-width:1.20000052;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 89.21742,-12.999693 L 89.21742,-23.077245 M 86.80629,-21.037429 L 91.628551,-21.037429 L 89.21742,-23.448561 L 86.80629,-21.037429 z " style="fill:#ff5000;fill-opacity:1;stroke:#ff5000;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1" />
  </g>
  <clipPath id="spClipPath">
   <rect width="28.800014" height="8.7999973" x="87.776924" y="-28.705086" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:1.20000052;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </clipPath>
  <g id="cut">
   <path d="M -16.99829,15.351845 C -0.55805777,1.209709 -3.1213204,-24.069358 -3.1213204,-24.069358" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:#ff5000;stroke-width:1px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" />
   <path d="M 3.1815109,23.306795 C 3.1815109,23.306795 -1.9450133,-1.441941 19.886908,-6.391689" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:#ff5000;stroke-width:1px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" />
  </g>
  <g id="mul">
   <rect width="2" height="2" x="19.3125" y="31.780371" style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.5;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <rect width="2" height="2" x="19.3125" y="34.780369" style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.5;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <rect width="2" height="2" x="19.3125" y="37.780369" style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.5;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <rect width="2" height="2" x="27.6875" y="31.780371" style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.5;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <rect width="2" height="2" x="27.6875" y="34.780369" style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.5;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <rect width="2" height="2" x="27.6875" y="37.780369" style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.5;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <rect width="39.125" height="4" x="4.9375" y="40.780369" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.5;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 13.689544,6.0801969 C 13.733765,6.2452292 12.79489,6.6401909 11.592509,6.9623677 C 10.390128,7.2845446 9.3795575,7.4119351 9.3353372,7.2469027 C 9.291117,7.0818704 10.229992,6.6869088 11.432373,6.3647319 C 12.634754,6.0425551 13.645324,5.9151646 13.689544,6.0801969 z " style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.50000006;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 33.170882,6.0094542 C 33.126662,6.1744865 32.116091,6.047096 30.913711,5.7249192 C 29.71133,5.4027423 28.772455,5.0077807 28.816675,4.8427484 C 28.860895,4.677716 29.871466,4.8051065 31.073847,5.1272834 C 32.276227,5.4494602 33.215102,5.8444219 33.170882,6.0094542 z " style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.50000006;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 39.664662,7.3353042 C 39.620442,7.5003365 38.609871,7.372946 37.407491,7.0507692 C 36.20511,6.7285923 35.266235,6.3336307 35.310455,6.1685984 C 35.354675,6.003566 36.365246,6.1309565 37.567627,6.4531334 C 38.770007,6.7753102 39.708882,7.1702719 39.664662,7.3353042 z " style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.50000006;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 20.183324,4.8427369 C 20.227545,5.0077692 19.28867,5.4027309 18.086289,5.7249077 C 16.883908,6.0470846 15.873338,6.1744751 15.829117,6.0094427 C 15.784897,5.8444104 16.723772,5.4494488 17.926153,5.1272719 C 19.128534,4.8050951 20.139104,4.6777046 20.183324,4.8427369 z " style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.50000006;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 26.753901,4.718986 C 26.753901,4.88984 25.744794,5.028345 24.499998,5.028345 C 23.255202,5.028345 22.246095,4.88984 22.246095,4.718986 C 22.246095,4.548132 23.255202,4.409627 24.499998,4.409627 C 25.744794,4.409627 26.753901,4.548132 26.753901,4.718986 z " style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.5;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <path id="p38" d="M -0.23586315,-6.0188337 C -1.0293031,-5.3323337 -0.92349315,-3.9618737 -1.1592331,-2.9611137 C -1.3014431,-1.9500637 -0.90077315,-0.25707367 -2.4788031,-0.50852367 C -3.0772131,-0.28293367 -3.4508431,-0.63502367 -3.3905331,-1.2495237 C -3.5540031,-2.2187937 -3.6374731,-3.2823537 -4.2744431,-4.0718037 C -5.6003731,-4.1977337 -5.8087131,-2.1075237 -5.8489731,-1.0406137 C -5.9302831,0.28064633 -7.9776731,-0.30411367 -8.9825331,0.034746333 C -10.872803,0.28214633 -12.826693,0.25845633 -14.657853,0.82387633 C -15.654483,1.8596363 -13.952323,2.9311463 -12.875193,2.8769563 C -10.565453,3.3654363 -8.1692731,3.5063963 -5.9233631,4.2561663 C -4.9320931,5.2806363 -5.9029131,6.4607763 -5.6402531,7.5993963 C -5.2716631,9.0933863 -4.9777131,10.661776 -5.2195531,12.198266 C -6.2906231,12.642366 -7.1452031,14.422416 -5.4551631,14.688156 C -4.4178831,15.396796 -3.3612031,14.727696 -2.1404931,14.845676 C -0.034523148,14.804036 2.0901069,14.753506 4.1828869,14.987416 C 4.9341469,15.077106 7.0053969,14.473716 6.3512869,13.167136 C 5.0327669,12.619916 5.0252769,11.270806 5.2030569,10.040726 C 5.2021969,8.7918263 5.9641969,7.5789463 5.6337469,6.3441163 C 4.9871169,5.2192563 5.9564769,3.7840263 7.2537769,3.8722763 C 9.5725969,3.3401763 11.982587,3.2147063 14.258117,2.5080763 C 15.647737,1.8586263 14.760327,0.30363633 13.435737,0.51911633 C 10.945897,0.14199633 8.4102969,0.10039633 5.9391369,-0.40008367 C 5.7675069,-1.5818537 5.9196769,-3.4680237 4.7078869,-4.0063337 C 3.6753569,-4.2146937 3.6429369,-2.2759837 3.4399269,-1.4691137 C 3.3435869,-1.0131637 3.4592569,-0.20101367 2.7149469,-0.47914367 C 1.5082969,-0.34503367 1.0073369,-1.2019337 1.2351269,-2.3526637 C 1.0972469,-3.5583337 0.98776685,-4.8184337 0.46413685,-5.9250837 C 0.14245685,-6.2148637 0.067866852,-5.6701137 -0.23586315,-6.0188337 z M -3.3671131,4.6874163 C -1.1042431,4.7909063 1.1621369,4.7832563 3.4249769,4.6881463 C 4.4658569,5.3568163 3.1497369,6.9051163 3.6518969,7.8932263 C 4.0182469,9.3099063 4.2108569,10.820936 3.9953869,12.274916 C 1.5066369,12.603506 -1.0293031,12.525676 -3.5311131,12.361696 C -4.6359331,11.913496 -3.8672131,9.9977763 -3.8780931,8.9314763 C -3.3470331,7.7312163 -3.6911931,6.5574463 -3.7691531,5.3420963 C -3.7280331,5.0671663 -3.8042431,4.6150063 -3.3671131,4.6874163 z " style="fill:black" />
  <path id="p47" d="M -0.067577728,-6.2670135 C -0.84335773,-5.4416635 -1.9294877,-4.6906835 -1.6925777,-3.3232635 C -1.6030577,-2.1338435 -1.9197777,-1.1396035 -3.3310577,-1.4183735 C -4.3926377,-0.92926347 -5.3384477,-2.1184335 -6.2238277,-1.4482635 C -7.5796177,-1.1719835 -8.9676877,-1.1496535 -10.342578,-1.0357635 C -10.363788,-1.3696435 -10.223758,-2.7270735 -10.667558,-2.1523835 C -10.398498,-0.42840347 -12.861528,-1.2179535 -12.861328,0.30798653 C -13.037238,1.6090365 -11.696078,2.3851265 -10.662468,2.7982565 C -8.1760477,3.7827665 -5.5067577,4.1609765 -2.8602777,4.4127565 C -1.2110977,4.3230365 -1.7477577,6.3177265 -1.4750177,7.3806065 C -1.3826977,8.7695865 -0.94456773,10.140887 -1.0175777,11.532987 C -2.3497577,12.216527 -3.9894077,12.320807 -5.1384477,13.331857 C -5.6413877,14.538077 -3.8389577,14.795117 -3.0113277,14.964237 C -2.1373177,15.444407 -1.0153577,14.766857 -0.33632773,15.020487 C 0.11160227,15.841357 0.47265227,14.317337 1.1109923,15.063427 C 2.2078623,15.265027 3.3448423,14.911337 4.3953423,14.598137 C 5.9583523,14.208737 4.9387823,12.652867 3.8086923,12.564837 C 2.9048923,12.115077 1.6181523,12.060407 0.97288227,11.347987 C 1.0967023,9.5157565 1.4943823,7.7100865 1.6141923,5.8744765 C 1.3520523,4.1994365 3.2009123,4.3931865 4.3192923,4.2500965 C 6.7831223,3.9648065 9.2955723,3.4982965 11.527612,2.3729265 C 12.418032,1.9233565 13.130202,0.94854653 12.790702,-0.075363467 C 12.311212,-1.1116235 10.448882,-0.59289347 10.657402,-2.1523835 C 10.213432,-2.7306935 10.353462,-1.3736935 10.332422,-1.0357635 C 8.8777723,-1.1813935 7.3696423,-1.1175335 5.9699223,-1.5545135 C 5.1886223,-1.9380535 4.2732823,-0.97266347 3.3208323,-1.4183735 C 2.1536723,-1.2551435 1.5254423,-1.8142835 1.7024723,-2.9901635 C 1.8072923,-4.2043435 1.3823023,-5.1920135 0.41992227,-5.8732635 C 0.35150227,-6.1048135 0.18859227,-6.3017735 -0.067577728,-6.2670135 z " style="fill:black" />
  <path id="spit" d="M -0.010984811,-5.3228295 C -1.0394548,-4.5058195 -0.90874481,-2.9896395 -1.0760748,-1.8023595 C -1.1931348,-1.0095095 -2.2302448,-1.4832195 -2.8002048,-1.2295495 C -5.7677848,-1.0008095 -8.7835448,-0.96180954 -11.683345,-0.22944954 C -12.667945,-0.10222954 -13.222225,1.1303105 -12.272845,1.7173605 C -10.311865,3.2813105 -7.7344448,3.6765705 -5.3515248,4.1969105 C -4.1681048,4.5108105 -2.9136748,4.4265205 -1.7405448,4.7128805 C -0.64423481,5.3450405 -1.0980048,6.8160205 -0.91098481,7.8521705 C -0.81372481,9.0419505 -0.76682481,10.23495 -0.71098481,11.42717 C -1.7124648,11.66106 -2.9406848,11.78476 -3.5047348,12.75217 C -3.9524648,13.9955 -2.3944948,14.27585 -1.4980848,14.26451 C -0.033384811,14.33255 1.4885952,14.42034 2.9107052,14.01504 C 4.0453452,13.68946 3.4934052,12.10833 2.5253552,11.9345 C 1.9855152,11.60942 1.1657152,11.63531 0.69226519,11.36271 C 0.78683519,9.4703905 0.88608519,7.5753205 1.0292752,5.6886605 C 1.1874252,4.4326305 2.6044352,4.5553805 3.5394552,4.4795005 C 6.1710052,4.0677805 8.8773952,3.6267605 11.270585,2.3978605 C 11.993425,2.0360505 13.390805,1.0497305 12.446915,0.19948046 C 11.407765,-0.56905954 10.019595,-0.52863954 8.7955852,-0.75209954 C 6.3261852,-1.0435595 3.8358452,-1.1388095 1.3622352,-1.3469595 C 0.68531519,-1.9817095 1.1695852,-3.3740795 0.68997519,-4.2486695 C 0.53936519,-4.6378495 0.40180519,-5.1329095 -0.010984811,-5.3228295 z " style="fill:black" />
  <path id="mosq" d="M -0.0026282782,-5.9205882 C -1.2390983,-5.2882582 -0.60587828,-3.5152582 -1.5371883,-2.6646082 C -2.8176683,-1.9296582 -3.7937183,-3.7347482 -2.8537983,-4.5617882 C -2.0938083,-4.5461682 -1.3697983,-5.1678882 -2.5293583,-5.2452682 C -3.6448183,-5.5799482 -4.5946383,-5.9283682 -5.6626983,-5.2337882 C -6.2698583,-5.3314282 -7.1572583,-4.8594882 -6.0220583,-4.7362682 C -5.4853983,-4.6429082 -5.0752283,-4.5590982 -5.3221483,-3.9214282 C -5.4733983,-3.1888682 -5.1928283,-1.8235882 -6.2174583,-1.8428582 C -8.7516583,-1.6488482 -11.312958,-1.7123682 -13.827658,-1.3330882 C -14.747558,-0.58927825 -13.488658,0.30156175 -12.734158,0.48489175 C -10.298858,1.5070918 -7.6911583,2.0895618 -5.2901283,3.1856618 C -4.6622383,3.6000518 -4.1583983,4.2582918 -3.3742683,3.6954518 C -2.1902083,3.8419418 -0.88539828,4.3161818 -1.2377683,5.7563318 C -1.1491083,7.6548318 -0.75498828,9.5368018 -0.79101828,11.441662 C -1.7045383,12.441862 -3.5471883,12.227802 -4.6735483,13.140612 C -6.2716583,14.023222 -4.0734983,14.911242 -3.1401283,14.779412 C -0.70199828,14.962302 1.7779117,15.020902 4.1973717,14.623162 C 5.4731917,14.573192 5.5203817,13.186792 4.2950817,12.938052 C 3.3008617,12.035242 1.0413817,12.553922 0.77237172,11.110662 C 0.85824172,8.9343018 1.2302717,6.7818518 1.3158317,4.6052418 C 1.9659917,3.6312518 3.5740917,3.7748718 4.5023017,3.7861218 C 5.5653117,2.7490318 7.1290317,2.5263818 8.4640317,1.9869018 C 10.271132,1.3238318 12.217532,0.91421175 13.853842,-0.13054825 C 14.920342,-1.3197682 12.837652,-1.6480782 11.985722,-1.5437082 C 9.8941417,-1.6982182 7.7866117,-1.6856082 5.7036217,-1.9143382 C 5.3003817,-2.7235282 5.3797217,-3.6713582 5.2661217,-4.5518382 C 5.9095617,-4.5714582 7.3702117,-5.1773782 5.8977417,-5.1841682 C 4.8498117,-5.6252182 3.9417417,-5.9026382 2.9006617,-5.3065182 C 2.2334617,-5.3757582 1.2627717,-4.7612182 2.4723717,-4.6518382 C 3.8182917,-4.4966582 3.1881317,-1.9576982 1.8048117,-2.5862382 C 0.56567172,-3.0892282 1.2332617,-4.9089982 0.29858172,-5.7446382 L 0.15072172,-5.8589682 L -0.0026282782,-5.9205882 z " style="fill:black" />
  <path id="b26" d="M -0.019622965,-5.711957 C -1.087563,-5.205194 -1.012843,-3.853667 -1.310753,-2.87677 C -1.659243,-1.795094 -1.715693,-0.665464 -1.758193,0.461162 C -2.234393,1.80873 -3.375583,0.373068 -2.988373,-0.505707 C -2.769153,-1.646794 -4.505303,-2.327213 -4.526903,-0.880978 C -4.930253,-0.114367 -4.389143,1.482497 -5.565623,1.495594 C -7.170533,1.804065 -8.814033,1.91173 -10.407133,2.263043 C -11.450833,2.366961 -12.034733,3.884542 -10.815933,4.267724 C -9.312533,4.72177 -7.724533,4.831723 -6.187633,5.1502 C -5.197913,5.09092 -4.382713,5.772298 -3.597703,6.064654 C -2.825863,5.11464 -1.419473,5.726192 -1.534333,6.936378 C -1.357363,8.106464 -1.180233,9.297854 -1.250873,10.481793 C -2.088223,11.304832 -3.593353,11.064399 -4.287613,12.086901 C -4.719663,13.500791 -2.663383,13.492835 -1.755623,13.606763 C -0.83878296,13.476862 -0.50151296,14.533384 0.090147035,14.711957 C 0.58980704,13.485264 2.024547,13.612116 3.120647,13.424545 C 4.492917,13.455424 4.712667,11.677798 3.350747,11.41199 C 2.658797,10.988066 1.033057,11.111459 1.185637,9.963672 C 1.295817,8.552646 1.277847,7.058348 1.892877,5.756793 C 2.904317,5.138537 3.741217,6.704517 4.514317,5.537852 C 5.631377,5.112633 6.857107,5.084005 8.019507,4.823416 C 9.120477,4.556872 10.451757,4.687639 11.325397,3.86834 C 11.951267,2.966262 10.744307,2.228802 9.960667,2.153893 C 8.279277,1.90071 6.582637,1.71849 4.917877,1.369293 C 4.618077,0.366165 4.724157,-0.781601 4.136627,-1.693207 C 2.872007,-2.021472 2.959457,-0.384895 2.887897,0.42312 C 2.737357,1.563586 1.302507,0.771454 1.684657,-0.133007 C 1.715187,-1.608618 1.202007,-3.007268 0.91249704,-4.436833 C 0.78665704,-4.973808 0.51969704,-5.491706 -0.019622965,-5.711957 z " style="fill:black" />
  <path id="b24" d="M -0.05889283,-3.9420674 C -0.54875283,-3.4688834 -1.9784828,-3.2939644 -1.3051928,-2.4829774 C -1.3356228,-1.6520124 -0.81523283,0.57209557 -2.2088928,0.25168257 C -2.9302828,-0.58305343 -0.91940283,-1.6823824 -2.5759428,-1.5429524 C -3.4278228,-1.5765444 -4.9684528,-1.5083334 -4.0450428,-0.41811143 C -3.7721028,0.98980157 -5.5647028,0.69111557 -6.3539228,0.45467357 C -7.0811728,-0.43412643 -5.1065328,-1.1882474 -6.7962528,-1.2828064 C -7.1923028,-1.1859414 -8.2959228,-1.6285484 -8.3190528,-1.1398024 C -8.9531328,-0.76355343 -7.3938728,0.54525757 -8.7262728,0.74035557 C -10.967603,1.0076316 -13.269743,0.72412957 -15.481153,1.2146166 C -16.639073,2.1065586 -15.350003,3.5754296 -14.157093,3.3937366 C -10.124383,3.8328536 -6.0597428,4.0282316 -2.0401428,4.5641826 C -1.7531428,5.8390936 -2.4936028,7.2005886 -2.7979928,8.4546746 C -3.2765028,9.6903916 -4.3461128,10.882319 -4.1045728,12.298025 C -3.4810628,13.306288 -2.0031828,12.792324 -0.98824283,12.942984 C 0.51354717,12.907051 2.0325572,13.027438 3.5223572,12.826683 C 4.8616872,12.26944 3.8111472,10.526806 3.4064572,9.6188446 C 2.5556772,8.2871506 2.3078472,6.6818076 1.9449072,5.1641736 C 1.9833672,3.9109296 3.9279172,4.5869706 4.8134172,4.2472736 C 8.0658772,3.8920886 11.341227,3.7487776 14.585127,3.3270426 C 15.923797,3.4907006 16.564077,1.2806676 15.087697,1.1045686 C 12.941437,0.79040557 10.757477,0.98771557 8.6098572,0.71418257 C 7.5192872,0.30295957 8.9537472,-0.74779743 8.3520872,-1.2260384 C 8.0874772,-1.5240444 7.1375972,-1.2432534 6.6561972,-1.2591854 C 5.0745572,-1.2355314 7.6238572,0.26807957 5.9440972,0.58502557 C 4.7937072,1.0646246 3.2808772,0.074858569 4.3986072,-1.0808664 C 4.0638072,-1.6646194 1.9941872,-1.8037334 1.8789672,-1.1768934 C 3.1680272,-0.58962343 1.5939772,1.3282076 1.3187872,-0.37994443 C 1.0790072,-1.2575424 1.5147272,-2.6145034 1.3911072,-3.1545674 C 0.80995717,-3.2241644 0.56745717,-4.0136464 -0.05889283,-3.9420674 z M -1.4651428,5.5829326 C -0.95998283,6.7223546 -1.2435428,8.1199126 -1.1319128,9.3628446 C -0.75811283,10.530159 -1.8676928,10.830922 -2.7238928,10.502236 C -3.1930928,9.8264346 -2.5003728,8.7420476 -2.3639128,7.9469706 C -2.0726128,7.1704716 -1.9106428,6.2387096 -1.4651428,5.5829326 z M 1.4848572,5.5829326 C 2.0153372,6.4406586 2.2285372,7.5730156 2.5712672,8.5617076 C 2.6685572,9.2035346 3.4486472,10.622162 2.2751272,10.591681 C 1.0998072,10.942171 1.0297572,9.6849516 1.1655572,8.8094966 C 1.2734972,7.7626006 1.0151872,6.5281186 1.4848572,5.5829326 z " style="fill:black" />
  <path id="b25" d="M -0.29238348,-5.0373875 C -1.5200435,-4.8356285 -1.1984635,-3.1249325 -1.3464935,-2.2131725 C -1.3825035,-1.1278835 -1.3755035,-0.041835548 -1.3861335,1.0438625 C -2.1524535,1.4577115 -2.8067535,0.50217145 -2.4673835,-0.18738755 C -1.7694235,-1.0209955 -3.8029635,-0.74727555 -4.3007735,-0.77378655 C -4.7540935,-0.84960655 -5.6946135,-0.26150455 -4.7316635,-0.25398855 C -4.5587135,0.32030245 -4.4162735,1.6039805 -5.3923835,1.4563625 C -7.4368035,1.6264725 -9.4952135,1.6486195 -11.530713,1.9003945 C -12.865173,1.8431345 -13.751643,3.5029705 -12.726743,4.4616835 C -11.782733,5.0407635 -10.578143,4.9547405 -9.5170835,5.2036635 C -7.8269535,5.4793235 -6.1126135,5.6259385 -4.4423835,6.0126125 C -3.9631535,6.8541895 -3.2021835,6.7149525 -2.5243735,6.2688955 C -1.0998535,5.8994425 -1.5139035,7.7326365 -1.3236335,8.5688625 C -1.2819735,9.2209455 -1.2403035,9.8730285 -1.1986335,10.525112 C -2.2192735,10.952209 -3.3084235,11.164849 -4.3861335,11.393862 C -4.3094935,11.952894 -4.6033235,12.730095 -4.0986335,13.100112 C -3.9380235,13.350059 -3.3296235,13.169959 -2.9932135,13.251066 C -2.1232735,13.333742 -1.0088435,13.102281 -0.46085348,13.948762 C 0.53192652,14.415874 1.2523965,12.864583 2.4788865,13.272482 C 3.0238765,13.250442 3.5688665,13.228402 4.1138665,13.206362 C 4.5166865,12.809135 4.3788765,12.095631 4.4013665,11.52175 C 4.2873565,11.213337 3.6699565,11.311877 3.3513665,11.168862 C 2.7013365,10.932335 1.6135265,10.908883 1.2221665,10.39522 C 1.3515165,9.0412845 1.2711565,7.6287485 1.6826165,6.3313625 C 2.7344865,5.9068355 3.7489565,7.3889825 4.4576165,6.0126125 C 7.0686765,5.4426815 9.7565565,5.2919405 12.363867,4.7001125 C 13.592507,4.2218625 13.373737,2.1702165 12.029867,2.0154855 C 10.167727,1.5990535 8.2331165,1.7196035 6.3416465,1.5199355 C 5.8098565,1.4431215 5.1613965,1.5509715 4.7301565,1.2480695 C 4.6390065,0.64019145 4.3812865,-0.35585255 5.2209165,-0.40968055 C 4.4065665,-1.0120405 3.1655965,-0.84577555 2.2326165,-0.58113755 C 2.8149365,-0.057262548 2.5868765,1.3774525 1.5921465,1.1063625 C 1.1963265,1.0536795 1.4893565,0.37779945 1.3948965,0.067708452 C 1.3419665,-1.4796605 1.5094865,-3.0839735 1.0220365,-4.5733535 C 0.81084652,-5.1870255 0.17787652,-4.9639855 -0.29238348,-5.0373875 z " style="fill:black" />
  <path id="b17" d="M -0.052823996,-5.9061277 C -0.928494,-5.8464297 -0.886244,-4.6965887 -1.188134,-4.0543257 C -1.536844,-3.5042267 -1.040114,-1.4051507 -1.900954,-1.8207737 C -2.401774,-2.6342917 -0.818714,-3.4869647 -2.293544,-3.4981467 C -3.225404,-3.8528077 -4.421434,-3.3175447 -3.789344,-2.2484257 C -3.294754,-0.73486868 -6.008934,-0.66646168 -5.294544,-2.2230247 C -4.499484,-3.1820357 -7.159394,-3.1814187 -7.459074,-2.5811277 C -6.611804,-1.6667597 -7.232064,-0.28452368 -8.552834,-0.52824568 C -10.412154,-0.17682068 -12.314114,-0.062996683 -14.161714,0.32873432 C -15.563634,0.49700932 -15.488284,2.3528093 -14.237664,2.7038723 C -11.452044,3.2990983 -8.579404,3.4030363 -5.754724,3.7610163 C -4.334084,3.9315353 -2.903124,4.0601073 -1.496574,4.3188723 C -1.202984,6.0938253 -1.055324,7.9075003 -1.027824,9.7063723 C -2.592104,10.549428 -4.532854,10.446012 -6.077664,11.341727 C -6.812344,12.863136 -4.105824,12.57502 -3.196214,12.785722 C -2.043064,12.871132 -0.494214,12.923997 -0.527824,14.457831 C 0.497106,15.945866 0.433666,13.294643 1.244176,13.073763 C 2.734046,12.71582 4.305976,12.815259 5.774766,12.372766 C 7.202246,11.192782 4.426236,10.708654 3.530966,10.505727 C 2.340396,10.199215 0.333276,10.128114 1.024596,8.3632393 C 1.145096,7.0141173 1.195316,5.6493773 1.453426,4.3188723 C 5.596266,3.6255993 9.816976,3.4823493 13.959676,2.7813723 C 14.875296,2.6389263 15.756396,1.2508463 14.741526,0.62061532 C 13.446976,-0.088978683 11.891156,0.088903317 10.482256,-0.22440168 C 9.408596,-0.61976768 7.552666,-0.14517268 7.045696,-1.2906937 C 6.919556,-2.0460307 8.005396,-3.0657777 6.576506,-2.9514667 C 5.830556,-2.9207217 4.506546,-3.0179587 5.298556,-1.9950977 C 5.630176,-0.36729968 2.999826,-1.1136987 3.770806,-2.5198867 C 4.687136,-3.9399817 1.392206,-3.7566077 1.665926,-3.0623777 C 2.417036,-2.5564337 1.476716,-0.77738268 1.340926,-2.3061277 C 1.373726,-3.4412027 1.049926,-4.5465437 0.603796,-5.5827847 C 0.501946,-5.8562657 0.202326,-5.9245387 -0.052823996,-5.9061277 z " style="fill:black" />
  <path id="a20" d="M -0.012232989,-5.1149026 C -1.144733,-4.7728726 -1.110633,-3.3361226 -1.208333,-2.3768026 C -1.378233,-1.2980026 -1.089533,-0.03447259 -1.533033,0.92095741 C -2.484433,1.4857174 -3.114433,0.08709741 -1.918733,0.02942741 C -2.366333,-0.75508259 -3.924333,-0.26419259 -4.814133,-0.33479259 C -5.793733,-0.35271259 -5.260933,0.19128741 -4.758033,0.43515741 C -4.952433,1.6167274 -6.667633,0.80639741 -7.537033,1.0720874 C -9.396833,1.1571474 -11.286433,1.0315674 -13.121033,1.3956074 C -14.565633,1.7287974 -13.446133,3.1974574 -12.476233,3.2568674 C -9.954033,4.3415374 -7.131833,4.4922874 -4.630933,5.6163474 C -4.234433,5.9696174 -3.771433,7.1680574 -3.143433,6.4288474 C -2.218433,5.5526274 -0.93553299,6.4534674 -1.242833,7.6386174 C -1.149633,9.0000474 -1.142033,10.366277 -1.055933,11.728847 C -2.209633,12.024777 -3.426933,12.153977 -4.499033,12.697267 C -5.272733,13.880517 -2.943833,14.050327 -2.098633,14.054717 C -0.12593299,14.115917 1.885667,14.219897 3.830867,13.832167 C 4.940067,13.706557 4.905767,12.456617 3.790267,12.398807 C 2.885967,12.116837 1.952067,11.947787 1.031567,11.728847 C 1.160467,9.9494074 1.092767,8.1574474 1.369067,6.3913474 C 2.222767,5.6028974 3.046367,6.6050474 3.748567,6.6114274 C 4.341767,5.9545674 4.861767,5.2454674 5.825267,5.1381974 C 8.358467,4.3193374 11.114867,4.0891874 13.455367,2.7457474 C 14.595067,1.7169774 12.714867,1.1018174 11.849367,1.2109174 C 9.552067,1.0599074 7.241067,1.1107174 4.946367,0.99576741 C 4.018467,0.34110741 6.247767,-0.09988259 4.972467,-0.31539259 C 3.969267,-0.30746259 2.685267,-0.65644259 1.862767,-0.08990259 C 2.120167,0.34194741 3.028367,0.18951741 2.428267,0.97310741 C 1.022667,1.4130274 1.284467,-0.28494259 1.244067,-1.1774026 C 1.152267,-2.3672326 1.298667,-3.7073226 0.59366701,-4.7378926 C 0.43996701,-4.9234326 0.23306701,-5.0825626 -0.012232989,-5.1149026 z " style="fill:black" />
  <path id="p51" d="M 0.0080263063,-7.9312502 C -1.1597137,-7.2607002 -1.0834537,-5.5914102 -1.2671937,-4.4035102 C -1.3324937,-3.3933102 -1.3085137,-2.3803802 -1.3232337,-1.3687502 C -3.9505137,-0.50549021 -6.7629737,-0.63667021 -9.4773737,-0.26028021 C -11.135354,-0.025500209 -12.860034,-0.16777021 -14.475114,0.29597979 C -15.433254,0.81468979 -15.073874,2.7963998 -14.039334,2.9635598 C -10.199014,4.0051598 -6.2584337,4.6137298 -2.3804537,5.4829598 C -0.64813369,5.7553498 -1.2347137,7.8246398 -1.0445137,9.0547798 C -0.94465369,10.47536 -0.20499369,12.77147 -2.4753737,12.57869 C -3.5101337,12.89297 -5.9307937,12.54581 -5.3910937,14.27423 C -4.7686137,15.70748 -2.6235737,14.99888 -1.3419537,15.44805 C -0.43759369,15.43688 -0.036413694,16.14355 0.014286306,16.93125 C -0.035293694,15.11789 2.1504463,15.43357 3.3904663,15.20425 C 4.6525463,15.52586 6.3575863,14.12302 5.0766663,13.07676 C 3.7474863,12.57599 2.1837863,12.81169 0.94996631,12.08364 C 0.73810631,10.55464 1.2223263,8.9262898 1.1392863,7.3499998 C 0.82726631,5.7695698 2.4761063,5.3348898 3.6767663,5.1874998 C 7.2829063,4.4732998 10.918483,3.8461698 14.456243,2.8369698 C 15.289303,2.1264298 15.350283,0.015109791 13.770723,0.10274979 C 10.279203,-0.21073021 6.7788263,-0.47309021 3.2972463,-0.88471021 C 2.7279463,-1.1152602 1.5259063,-0.98409021 1.3447263,-1.6030802 C 1.3117663,-3.5913602 1.4853863,-5.7020602 0.54662631,-7.5201402 C 0.42062631,-7.7069402 0.24602631,-7.9034602 0.0080263063,-7.9312502 z " style="fill:black" />
  <path id="typh" d="M 0.028147131,-5.5976678 C -1.0302329,-4.9438878 -0.80259287,-3.5154278 -1.5292929,-2.6530278 C -1.8847929,-2.1846578 -1.7943529,-1.4182078 -2.0366929,-0.99005778 C -4.9703329,-0.93803778 -7.9285529,-0.78385778 -10.796333,-0.13515778 C -11.730733,0.056632217 -13.383773,1.0554422 -12.178273,2.0255022 C -10.809713,3.2401922 -8.9318329,3.5631422 -7.2272329,4.0647222 C -5.4818129,4.4225422 -3.7355729,4.8420422 -1.9492529,4.9239322 C -0.80889287,5.4386222 -0.81643287,6.7439322 -0.79061287,7.8398322 C -0.73439287,9.0563922 -0.59165287,10.268662 -0.47819287,11.478242 C -1.1539129,12.147422 -2.5720129,12.027702 -3.1865129,12.928102 C -3.7455129,14.238322 -2.2634929,14.619242 -1.2792129,14.552872 C 0.082807131,14.613882 1.4831471,14.664852 2.8144071,14.333872 C 4.1001071,13.555532 2.7972871,12.107642 1.6964071,12.015202 C 0.78846713,11.946722 0.23608713,11.434452 0.63418713,10.505152 C 0.83118713,8.9797422 0.78954713,7.4285922 1.0369671,5.9115322 C 1.4635071,4.8432622 2.6143671,4.8526022 3.6044271,4.7742322 C 6.2543271,4.3145422 8.9608271,3.8429922 11.395227,2.6543822 C 12.532107,2.2561722 13.249467,0.69727222 11.759027,0.23831222 C 10.028147,-0.58895778 8.0453471,-0.56285778 6.1774271,-0.80558778 C 4.7980471,-0.93739778 3.4126271,-0.96661778 2.0281471,-0.99141778 C 1.9257071,-1.7839578 1.7517271,-2.5876178 1.2128671,-3.2093578 C 1.0132671,-4.0594178 0.80038713,-5.0665878 0.028147131,-5.5976678 z " style="fill:black" />
  <path id="train" d="M -4.0980111,13.560156 C -5.2213951,12.683654 -6.7806957,12.805394 -7.8664467,13.657722 C -9.2605297,14.35381 -10.456688,13.291907 -11.669664,12.853145 C -13.041003,12.859899 -14.453276,12.228827 -14.673395,10.829265 C -15.452527,9.765059 -17.864202,10.787983 -17.460513,9.058104 L -7.3306977,9.172864 C -6.7091717,9.443011 -6.6055097,10.039261 -6.0021761,9.269196 C -4.2799831,9.085859 -2.5193171,9.154343 -0.79569508,9.307871 C -0.14345208,10.342356 0.09966892,8.812646 1.1742549,9.135144 C 2.6800649,8.867013 4.3074889,9.689593 5.5536329,9.233706 C 6.2561229,9.772732 7.5972989,8.943233 8.7881929,9.227505 L 10.730714,9.334259 L 10.730714,12.031162 L 13.867515,12.031162 L 13.867515,9.334259 L 17.020114,9.334259 L 17.020114,12.943893 L 10.110033,12.943893 C 9.0463909,13.883543 6.9382259,14.53474 6.1894869,13.060304 C 4.5813439,12.270777 3.5190919,14.428386 1.9246359,13.920567 C 0.77300192,13.348417 -0.43337708,12.268729 -1.5076041,13.633017 C -2.3154971,14.026154 -3.3588671,14.195849 -4.0980111,13.560156 z M -11.457783,11.677504 C -10.854025,10.538805 -11.891333,10.028312 -12.761117,10.75467 C -13.276878,11.562442 -11.831794,12.633435 -11.457783,11.677504 z M -2.6605111,11.727507 C -3.3736671,10.695239 -3.0005791,12.551118 -2.6605131,11.727504 L -2.6605111,11.727507 z M 8.1394879,11.615691 C 7.1394749,10.783553 7.6609549,12.72257 8.1394879,11.615691 z M -8.7105127,11.577506 C -9.4975787,10.807176 -9.2515217,12.573888 -8.7105127,11.577506 z M 2.6894869,11.577506 C 1.9024199,10.807176 2.1484789,12.573889 2.6894869,11.577506 z M -16.800238,8.667588 C -18.976367,8.697156 -17.468643,5.927889 -17.850202,4.59461 C -18.159862,3.301994 -17.150248,1.002887 -18.487665,0.33898899 C -19.430648,-0.84315801 -16.405295,-0.19763701 -15.673947,-0.36133601 C -14.227357,0.06185399 -11.785894,-1.244555 -10.944051,0.07797099 C -11.382256,0.65755699 -10.704065,2.451579 -10.48899,1.121878 C -10.28658,0.55118299 -10.599218,-0.68389801 -9.6267967,-0.37249901 C -8.1998257,-0.80404901 -8.4809927,0.82328099 -8.2880227,1.727507 L -0.16051108,1.727507 C -0.05403708,0.83860499 -0.29276108,-0.60034701 0.91957992,-0.73538001 C 2.6318079,-1.160226 2.7464839,0.52040899 2.9302249,1.698234 C 4.2927329,1.801556 6.6461989,2.51745 7.3451649,0.98689999 C 7.0834499,-0.52962601 8.0400979,-2.832732 9.8981719,-1.735085 C 11.777268,-1.141788 9.9796119,1.235549 11.405145,1.943419 L 11.405145,7.927504 L 0.65578092,7.927504 L -3.5266921,8.143496 L -8.8761027,8.667588 L -16.800238,8.667588 z M -15.821964,3.818038 L -15.821964,1.609688 L -17.137266,1.609688 L -17.137266,3.818038 L -15.821964,3.818038 z M -13.595808,3.818038 L -13.595808,1.609688 L -14.87741,1.609688 L -14.87741,3.818038 L -13.595808,3.818038 z M 11.941983,7.877581 L 11.941983,2.160228 C 12.808528,1.706821 13.998751,1.141126 13.509357,-0.20171001 C 13.442928,-1.739938 11.441422,-3.046584 12.047458,-4.453062 C 13.556737,-5.228007 15.450284,-5.110064 17.003302,-4.522674 C 17.767138,-3.38305 15.900668,-1.926195 15.73567,-0.62273701 C 15.044473,0.75017399 15.887755,2.251671 17.479812,1.9283 C 18.070727,2.968286 18.10552,4.409942 18.668061,5.313924 C 17.724658,6.048001 18.23458,7.877581 16.623517,7.877581 L 11.941983,7.877581 z " style="fill:#ff5000;fill-opacity:1"/>
  <g id="dmul">
   <path d="M 4.25906,44.338561 L 8.14817,41.510134 L 8.9326,44.338561 L 12.72225,41.510134 L 13.60613,44.338561 L 17.29636,41.510134 L 18.27967,44.338561 L 21.87045,41.510134 L 22.95322,44.338561 L 26.44455,41.510134 L 27.62676,44.338561 L 31.01864,41.510134 L 32.3003,44.338561 L 35.59275,41.510134 L 36.97383,44.338561 L 40.16683,41.510134 L 41.64737,44.338561 L 44.74094,41.510134" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:black;stroke-width:1px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" />
   <rect width="2" height="2" x="19.3125" y="34.924347" style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.5;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <rect width="2" height="2" x="19.3125" y="37.924347" style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.5;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <rect width="1.9999981" height="1.9999981" x="35.845585" y="23.494387" transform="matrix(0.967443,0.253087,-0.253087,0.967443,0,0)" style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.49999952;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <rect width="1.9999981" height="1.9999981" x="35.845585" y="26.494379" transform="matrix(0.967443,0.253087,-0.253087,0.967443,0,0)" style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.49999952;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <rect width="1.9999981" height="1.9999981" x="35.845585" y="29.494377" transform="matrix(0.967443,0.253087,-0.253087,0.967443,0,0)" style="fill:none;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.49999952;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 13.10619,8.401277 C 12.98538,8.522097 12.17389,7.906484 11.29369,7.026281 C 10.41349,6.146078 9.79788,5.334594 9.91869,5.213782 C 10.0395,5.09297 10.85099,5.708575 11.73119,6.588778 C 12.61139,7.468981 13.227,8.280465 13.10619,8.401277 z " style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.50000006;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 27.42564,7.302483 C 27.38142,7.467516 26.37085,7.340125 25.16847,7.017948 C 23.96609,6.695771 23.02722,6.30081 23.07144,6.135777 C 23.11565,5.970745 24.12623,6.098135 25.32861,6.420312 C 26.53099,6.742489 27.46986,7.137451 27.42564,7.302483 z " style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.50000006;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 33.56586,6.860566 C 33.52164,7.025599 32.51107,6.898208 31.30869,6.576031 C 30.10631,6.253854 29.16743,5.858893 29.21165,5.69386 C 29.25587,5.528828 30.26645,5.656218 31.46883,5.978395 C 32.67121,6.300572 33.61008,6.695534 33.56586,6.860566 z " style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.50000006;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 19.95815,4.443119 C 20.04358,4.591083 19.23893,5.215584 18.1609,5.837982 C 17.08288,6.46038 16.13971,6.844984 16.05429,6.697021 C 15.96886,6.549056 16.77351,5.924556 17.85154,5.302158 C 18.92956,4.67976 19.87273,4.295156 19.95815,4.443119 z " style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.50000006;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M 26.7539,4.862966 C 26.7539,5.03382 25.74479,5.172325 24.5,5.172325 C 23.2552,5.172325 22.24609,5.03382 22.24609,4.862966 C 22.24609,4.692112 23.2552,4.553607 24.5,4.553607 C 25.74479,4.553607 26.7539,4.692112 26.7539,4.862966 z " style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:0.5;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <g id="2mp">
   <text x="-14.399645" y="35.677399" transform="matrix(0.707107,-0.707107,0.707107,0.707107,0,0)" style="font-size:24px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-align:start;line-height:125%;writing-mode:lr-tb;text-anchor:start;fill:black;fill-opacity:1;stroke:none;stroke-width:1pt;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;font-family:Nimbus Sans L">+2</text>
   <text x="-11.658006" y="49.049397" transform="matrix(0.707107,-0.707107,0.707107,0.707107,0,0)" style="font-size:14.00000954px;font-style:italic;font-variant:normal;font-weight:bold;font-stretch:normal;text-align:start;line-height:125%;writing-mode:lr-tb;text-anchor:start;fill:black;fill-opacity:1;stroke:none;stroke-width:1pt;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;font-family:Nimbus Sans L">MP</text>
   <path d="M 24.818913,46.936745 C 23.700963,46.720484 22.548423,46.866512 22.501943,45.418771 C 21.642523,43.822131 23.996553,45.073234 23.685333,43.038011 C 24.157173,42.003688 25.662843,43.293693 26.509093,43.011569 C 25.971053,44.229951 28.340513,45.224851 26.343993,46.055424 C 26.069373,46.767232 25.741783,47.516731 24.818913,46.936745 z M 25.423233,45.044995 C 27.568433,44.088352 22.491413,42.745059 24.082093,44.918492 C 24.405693,45.488104 24.973443,45.377129 25.423233,45.044995 z M 36.085853,45.907694 C 34.604403,45.366061 35.169023,43.765437 36.567233,43.735825 C 36.591363,44.156605 36.247463,44.69263 37.592323,44.401367 C 38.578383,45.123651 36.850423,46.386155 36.085853,45.907694 z M 9.8651527,44.480279 C 10.480643,42.400296 5.4025427,43.370349 8.4841627,42.005355 C 9.4928927,40.953925 6.7383827,38.450468 9.1958627,39.884428 C 10.752093,41.245978 11.750103,36.454071 11.768613,39.487793 C 11.182653,41.653954 15.839623,39.947807 13.352003,41.484457 C 11.070343,41.866388 14.941153,44.851718 12.400673,43.794323 C 10.878243,41.985711 10.109763,47.171182 9.8651527,44.480279 z M 11.051213,42.803823 C 12.520493,40.672974 8.5633827,41.578475 10.414753,43.017559 C 10.648633,43.14725 10.875123,42.905629 11.051213,42.803823 z M 18.542303,43.343225 C 17.499923,41.430861 20.850143,40.281762 21.352653,42.457897 C 21.545623,43.799081 19.074893,44.613961 18.542303,43.343225 z M 40.140153,41.347016 C 40.439923,39.616919 36.615573,40.538904 38.487233,39.270957 C 38.964093,38.135506 38.275673,35.936193 40.139133,37.270088 C 42.280033,36.289104 38.233303,35.107814 39.426793,33.468217 C 41.020793,33.159319 41.452193,35.059244 41.078833,35.82882 C 41.425733,36.838301 41.437723,38.033619 42.590153,38.340917 C 42.336463,39.620542 41.497633,41.660776 40.242573,41.730835 L 40.167933,41.568255 L 40.140153,41.347016 L 40.140153,41.347016 z M 40.681903,39.801013 C 42.777243,38.126965 37.363173,38.395255 39.820783,39.956519 C 40.077513,40.243765 40.456803,39.914341 40.681903,39.801013 z M 32.528433,39.269995 C 31.035663,37.600803 33.978513,35.823759 34.921423,37.826245 C 35.478073,39.144687 33.562633,40.51013 32.528433,39.269995 z M 16.610023,38.888175 C 14.266883,38.854581 15.332713,35.051509 17.250283,36.319866 C 18.891533,36.885568 18.180883,39.273897 16.610023,38.888175 z M 7.5901527,34.379663 C 5.2135627,33.675423 7.2709427,30.328747 9.0004227,32.040829 C 10.102353,32.904348 8.8642627,34.954775 7.5901527,34.379663 z M 42.881823,29.659578 C 43.049723,28.09145 39.370823,28.594932 41.400433,26.903092 C 41.960353,26.041063 40.132013,24.265898 42.063583,25.158537 C 43.428493,26.310038 43.964633,21.898644 44.211183,24.71704 C 45.221403,25.491712 46.551593,25.598956 45.737313,27.349794 C 46.534513,29.467967 44.077303,27.4557 43.605333,29.262065 C 43.426493,29.423319 43.167823,29.965854 42.881823,29.659578 z M 42.407133,27.136257 C 41.672343,26.196063 42.647073,28.245284 42.407133,27.136257 z M 40.507693,22.091455 C 37.797233,20.965335 41.706213,18.144376 42.447553,20.756091 C 42.674233,21.664466 41.300023,22.973676 40.507693,22.091455 z M 5.4360927,17.345887 C 4.8009727,16.928777 3.1230327,18.177424 3.5952827,16.293276 C 3.0661527,15.478405 2.4682627,14.653358 3.9133227,14.358301 C 3.8517227,12.768577 5.0332827,12.942334 5.8875427,13.694462 C 7.6915627,12.629884 6.9156427,15.272549 7.8127327,16.001938 C 6.3715027,16.195773 7.1198727,18.687716 5.4360927,17.345887 z M 5.5683627,16.028368 C 6.7321527,14.354222 2.8861127,14.92208 4.6740527,16.378545 C 4.9981327,16.659613 5.3980027,16.275349 5.5683627,16.028368 z M 38.433523,17.404439 C 36.168943,16.587467 38.252983,13.306221 39.666313,15.39487 C 40.011693,16.161458 39.560213,17.882066 38.433523,17.404439 z M 38.740153,16.213746 C 38.178753,15.193575 38.198953,17.215364 38.740153,16.213746 z M 39.044233,13.04699 C 39.517193,11.389566 36.193193,11.390391 38.083373,10.271204 C 38.562543,9.1748244 36.871383,7.4749274 38.905043,8.5288664 C 39.616083,7.6837244 40.493453,6.3489084 40.322853,8.3856744 C 40.242613,9.6141514 43.648513,8.9217904 41.427513,10.006818 C 41.699003,11.06253 42.618973,12.44889 40.786623,11.893699 C 40.031053,12.00526 39.678053,12.821283 39.044233,13.04699 z M 33.752653,11.888472 C 32.843453,11.643901 33.291393,10.279195 33.078733,9.5078354 C 34.482123,7.9614394 36.867663,10.721122 35.015613,11.837229 C 34.636173,12.129409 34.159553,12.108017 33.752653,11.888472 z M 7.5117727,11.182496 C 6.2606727,9.7547604 10.157623,9.5008044 7.7641527,8.6194834 C 6.7360427,7.5429964 4.0192127,9.0413174 6.3727227,9.3693754 C 6.0743827,11.521683 2.6768727,7.9707194 5.2835727,7.2353134 C 5.6635527,5.3667354 8.1071927,8.6024034 7.9849727,6.0246054 C 8.5945227,4.2153654 9.2927127,9.2271404 10.306123,6.7261934 C 10.299803,3.5089454 15.218763,6.3426594 12.530533,7.7536264 C 10.694693,7.1959104 9.1692827,8.7100224 10.649103,10.178222 C 9.3815627,9.9544913 8.4984427,10.740505 7.6580227,11.371764 L 7.5117827,11.182496 L 7.5117727,11.182496 z M 12.319453,6.9335624 C 12.783793,4.6680854 10.666323,7.0046674 12.155193,7.0920514 L 12.319453,6.9335644 L 12.319453,6.9335624 z M 30.558903,5.0404454 C 27.838913,4.0825654 31.271353,0.62330537 32.264693,3.5147554 C 32.464093,4.3778254 31.472133,5.6952254 30.558903,5.0404454 z M 30.835283,3.8145954 C 30.291083,2.8590554 29.975223,5.0651554 30.835283,3.8145954 z M 24.740153,4.6360654 C 23.226973,4.5532754 26.158923,2.8561654 24.142153,2.6263254 C 22.964263,1.0631154 27.824043,2.0812454 26.080193,3.8798754 C 25.731313,4.1903854 25.301623,4.9755454 24.740153,4.6360654 z " style="fill:black" />
  </g>
  <path id="rcce" d="M -5.9609781,-0.60000002 L -5.9609781,-3.038196 C -5.9609781,-4.988578 -5.5660301,-5.657266 -5.2106301,-4.722494 C -4.8920021,-3.88444 -4.1380261,-3.528182 -2.9746261,-3.66597 C -1.8228301,-3.802384 -1.5413761,-3.987288 -0.87236813,-5.047064 C -0.61094813,-5.461178 -0.30819013,-5.8 -0.19957013,-5.8 C 0.16599387,-5.8 0.0018798689,-4.741898 -0.49525813,-3.893596 C -1.1945821,-2.700288 -2.0919101,-2.315982 -3.8372241,-2.462302 L -5.2020781,-2.576728 L -5.2020781,-0.60000002 L -5.9609781,-0.60000002 z " style="fill:black" />
  <path id="para" d="M -5.25,-6.6875 C -5.4048789,-6.6456279 -5.5455803,-6.5542642 -5.6875,-6.4375 C -6.3468002,-6.2832142 -6.6896476,-5.8157068 -7.15625,-5.4375 C -7.2849304,-5.2861164 -7.406469,-5.118182 -7.5,-4.90625 C -7.509785,-4.7954965 -7.4835452,-4.6574217 -7.4375,-4.5 C -6.793844,-3.1617898 -5.9859787,-1.9194083 -5.3125,-0.59375 L -3.96875,-0.59375 C -3.6320105,-1.2565792 -3.272858,-1.8876711 -2.90625,-2.53125 C -2.5477179,-3.1800166 -2.180348,-3.8397673 -1.84375,-4.5 C -1.797705,-4.6574217 -1.771465,-4.7954965 -1.78125,-4.90625 C -1.8747811,-5.118182 -1.9963195,-5.2861164 -2.125,-5.4375 C -2.4879438,-5.9480488 -3.0554568,-6.1366891 -3.59375,-6.4375 C -3.7356696,-6.5542642 -3.876371,-6.6456279 -4.03125,-6.6875 C -4.2270985,-6.6875 -4.4281109,-6.7402395 -4.625,-6.6875 C -4.8283288,-6.7747053 -5.0448368,-6.6875 -5.25,-6.6875 z M -6.3125,-4.75 C -6.2443537,-4.7669862 -6.180916,-4.7600935 -6.125,-4.75 C -5.656208,-4.696214 -4.9683939,-4.732618 -4.96875,-4.65625 L -4.96875,-1.0625 L -6.84375,-4.4375 C -6.7504305,-4.537514 -6.5169389,-4.6990414 -6.3125,-4.75 z M -3.15625,-4.75 C -2.9325859,-4.7903742 -2.561926,-4.570852 -2.4375,-4.4375 L -4.3125,-1.0625 L -4.3125,-4.65625 C -4.312856,-4.732618 -3.625042,-4.696214 -3.15625,-4.75 z " style="fill:black" />
  <g id="pio">
   <path d="M -4.641196,-7.0933951 L -4.641196,-0.5808951" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:black;stroke-width:0.60000002;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -7.14293,-5.3017896 L -4.641196,-6.8169374 L -2.139462,-5.3017896" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:black;stroke-width:1;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -7.14293,-2.273258 L -4.641196,-3.7884058 L -2.139462,-2.273258" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:black;stroke-width:1;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <g id="rrpio">
   <path d="M -4.641196,-7.0933951 L -4.641196,-0.5808951" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:black;stroke-width:0.60000002;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <circle cx="0" cy="0" r="1" transform="translate(-4.641196,-2.4375)" style="fill:black" />
  </g>
  <g id="gl">
   <path d="M -6.5037,-8.81913 C -6.895124,-8.7456604 -7.261448,-8.6312224 -7.49745,-8.48788 C -7.728986,-8.3472506 -7.884418,-8.2388424 -7.97245,-8.15038 C -7.86915,-8.1304034 -7.633996,-8.13164 -7.2912,-8.14413 C -6.626218,-8.336388 -5.603614,-8.1793208 -4.978698,-7.77538 C -4.859896,-7.6985868 -4.762052,-7.4392146 -4.691198,-7.26288 C -4.782654,-6.9467332 -4.916382,-6.3503428 -5.078698,-6.25663 C -5.175696,-6.2006288 -4.93875,-6.1745014 -4.641198,-6.16288 C -4.342694,-6.1744452 -4.106484,-6.200504 -4.203698,-6.25663 C -4.367046,-6.3509384 -4.48409,-6.95441 -4.572448,-7.26913 C -4.505244,-7.4452502 -4.419526,-7.7005098 -4.303698,-7.77538 C -3.678784,-8.1793208 -2.65618,-8.336388 -1.991198,-8.14413 C -1.644162,-8.1313998 -1.41396,-8.1302656 -1.309948,-8.15038 C -1.397982,-8.2388424 -1.54716,-8.3472506 -1.778698,-8.48788 C -2.0147,-8.6312224 -2.381024,-8.7456604 -2.772448,-8.81913 C -3.272412,-8.8741106 -3.765636,-8.8475436 -4.034948,-8.72538 C -4.441114,-8.6049498 -4.833684,-8.6077168 -5.247448,-8.72538 C -5.6493,-8.8787208 -6.082898,-8.8567664 -6.5037,-8.81913 z " style="fill:black" />
   <path d="M -133.15993 35.686077 A 9.1772394 9.1772394 0 1 1  -151.51441,35.686077 A 9.1772394 9.1772394 0 1 1  -133.15993 35.686077 z" transform="matrix(0.2,0,0,0.2,23.82765,-11.60381)" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:0.60000002;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -4.641198,-2.5447778 L -4.641198,-0.5149886" style="fill:lime;fill-opacity:0.75;fill-rule:evenodd;stroke:black;stroke-width:0.40000001;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -7.032218,-0.358048 L -5.628696,-2.7890196" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:black;stroke-width:0.40000001;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" id="path54823" />
   <path d="M -2.25018,-0.3935734 L -3.653702,-2.824545" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:black;stroke-width:0.40000001;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <path id="croc" d="M -5.19,-0.75541546 C -5.19,-1.0299975 -5.330994,-1.3134455 -5.69,-1.3134455 C -6.155962,-1.3134455 -6.19,-1.2051995 -6.19,-2.1273833 L -6.19,-3.3378353 L -4.09,-3.3378353 L -3.09,-5.2378353 C -2.167106,-7.0836213 -2.016192,-7.2744373 -1.132792,-7.7125273 C -0.33886201,-8.1062493 0.13874799,-8.1883753 1.667208,-8.1939973 C 4.2851338,-8.2036273 4.4099998,-8.1435513 4.4099998,-6.8743573 L 4.4099998,-5.8378353 L 3.0231318,-5.8378353 C 1.766382,-5.8378353 1.57966,-5.7836033 1.032924,-5.2597973 C 0.42756999,-4.6798313 -0.059204007,-3.5567053 0.15966399,-3.3378353 C 0.22401599,-3.2734853 0.56802799,-3.3378353 0.92413599,-3.3378353 C 1.566732,-3.3378353 1.571662,-3.3303093 1.57935,-2.3378353 C 1.586252,-1.4467395 1.539336,-1.3351795 1.148548,-1.3134455 C 0.90734599,-1.3000315 0.29444599,-1.3395155 -0.21345401,-1.3134455 C -1.260792,-1.2596875 -1.59,-1.0406675 -1.59,-0.62603146 C -1.59,-0.55466946 -5.19,-0.64065146 -5.19,-0.75541546 z " style="fill:black" />
  <g id="hvy">
   <path d="M 2.4,4.57806 L 2.4,-0.41588159" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -2.4,4.57806 L -2.4,-0.41588163" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:black;stroke-width:1.20000005;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
  <g id="hw">
   <path d="M 5.2423266,5.3996499 L 5.2423266,2.6003492" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:black;stroke-width:1px;stroke-linecap:square;stroke-linejoin:miter;stroke-opacity:1" />
   <path d="M 4.2243991,6.3996499 L 6.2602541,6.3996499" style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:black;stroke-width:1px;stroke-linecap:square;stroke-linejoin:miter;stroke-opacity:1" />
   <path d="M -4.5276214,6.3996502 L -3.2588662,6.3996502 L -4.5276214,5.667134 L -4.5276214,6.3996502 z " style="fill:none;fill-opacity:0.75;fill-rule:evenodd;stroke:black;stroke-width:1px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" />
   <rect width="1.8322695" height="0.81434202" x="0.27229151" y="5.4853086" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:black;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -2.1053667,-1.9252139 L -1.620013,-1.0845565 L -2.5907204,-1.0845566 L -2.1053667,-1.9252139 z " transform="translate(3.293793,5.66913)" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
   <path d="M -2.1053667,-1.9252139 L -1.620013,-1.0845565 L -2.5907204,-1.0845566 L -2.1053667,-1.9252139 z " transform="translate(3.293793,4.837532)" style="fill:black;fill-opacity:1;fill-rule:evenodd;stroke:none;stroke-width:1.20000005;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  </g>
 </defs>
SVG

while (<>) {
   my ($nat,$div,$name,$fo,$fd,$fm,$fs,$fr,$ro,$rd,$rm,$rs,$rr,
       $flag,$symb,$trans,$mod,$type,$notes) = split /,/;
   $div =~ s/"//g;
   $name =~ s/"//g;
   $name =~ s/&/\&amp;/g;

   print <<SVG;
 <g>
SVG

   if ($mod =~ /hq/ or $symb eq 'sup' or $symb eq 'hsup') {
      print <<"SVG";
  <use x="@{[51*$x+24.5]}" y="@{[51*$y+24.5]}" style="fill:@{[$ncolor{$nat}]}" xlink:href="#c" />
  <text style="font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:end;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed">
   <tspan x="@{[51*$x+44]}" y="@{[51*$y+22]}">$fd</tspan>
   <tspan x="@{[51*$x+44]}" y="@{[51*$y+37]}">$fm</tspan>
  </text>
  <text style="font-size:9px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+3]}" y="@{[51*$y+35]}">$fs</text>
SVG

      # HQ flag
      if ($mod =~ /hq/) {
         # name
         if (length $div > 5 and $div =~ / /) {
            ($a,$b) = split / /, $div;
            print <<"SVG";
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:end;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed">
   <tspan x="@{[51*$x+37]}" y="@{[51*$y+35]}">$a</tspan>
   <tspan x="@{[51*$x+37]}" y="@{[51*$y+43]}">$b</tspan>
  </text>
SVG
         }
         elsif (length $div >= 5) {
            print <<"SVG";
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+45]}">$div</text>
SVG
         }
         else {
            print <<"SVG";
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+25]}" y="@{[51*$y+45]}">$div</text>
SVG
         }

         # infantry
         if ($symb eq 'inf') {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#$flag" />
SVG
            # transport
            if ($trans eq 'mot') {
               if ($flag eq 'cp') {
                  print <<"SVG";
  <use x="@{[51*$x+25.33725]}" y="@{[51*$y+18]}" xlink:href="#mothq" />
SVG
               }
               else {
                  print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#mothq" />
SVG
               }
            }
            elsif ($trans eq 'smot') {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#smot" />
SVG
            }
            elsif ($trans eq 'ht') {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#htdiv" />
SVG
            }

            # paratroops
            if ($mod =~ /para/) {
               print <<"SVG";
  <use x="@{[51*$x+24]}" y="@{[51*$y+34]}" xlink:href="#para" />
SVG
            }
         }
         # armor
         elsif ($symb eq 'pz') {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#$flag" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#pzdiv" />
SVG
         }
         # flak
         elsif ($symb eq 'flak') {
            if ($flag eq 'rgt' or $flag eq 'bn') {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+13]}" xlink:href="#$flag" />
  <use x="@{[51*$x+20.781399]}" y="@{[51*$y+26]}" xlink:href="#flak" />
SVG
               if ($trans eq 'mot') {
                  print <<"SVG";
  <use x="@{[51*$x+26.33915]}" y="@{[51*$y+13.5]}" xlink:href="#mothq" />
SVG
               }
            }
            else {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#$flag" />
  <use x="@{[51*$x+19.779499]}" y="@{[51*$y+26]}" xlink:href="#flak" />
SVG
            }
         }
         # nebelwerfer
         elsif ($symb eq 'nw') {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#$flag" />
  <use x="@{[51*$x+19.487719]}" y="@{[51*$y+26]}" xlink:href="#nw" />
SVG
            if ($trans eq 'mot') {
                  print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#mothq" />
SVG
            }
         }

         # mechanized movement
         if ($symb eq 'pz' or $trans eq 'ht') {
            print <<"SVG";
   <line x1="@{[51*$x+38]}" y1="@{[51*$y+39]}" x2="@{[51*$x+44]}" y2="@{[51*$y+39]}" style="stroke-width:1;stroke:black;stroke-opacity:1" />
SVG
         }
      }
      # supply
      elsif ($symb eq 'sup' or $symb eq 'hsup') {
         print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+25]}" xlink:href="#$symb" />
SVG

         if ($mod =~ /para/) {
            print <<"SVG";
  <use x="@{[51*$x+29.640625]}" y="@{[51*$y+16.99375]}" xlink:href="#para" />
SVG
         }
      }
   }
   # fortifications
   elsif ($nat eq 'F') {
      print <<"SVG";
  <use x="@{[51*$x]}" y="@{[51*$y]}" style="fill:@{[$ncolor{$nat}]}" xlink:href="#s" />
SVG

      # strongpoints
      if ($symb eq 'spt') {
         $fill = $ncolor{$fd == 2 ? 'FT' : 'F'};
         $stroke = $fd == 2 ? 'none' : $ncolor{'FT'};
         print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+15]}" xlink:href="#spt" />
  <circle cx="@{[51*$x+25]}" cy="@{[51*$y+25]}" r="3.5" style="fill:$fill;fill-opacity:1;stroke:$stroke;stroke-width:0.89999998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
  <text style="font-size:14px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:$ncolor{'FT'};fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+45]}">$fo/$fd/$fm</text>
SVG
      }
      else {
         print <<"SVG";
  <text style="font-size:14px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:$ncolor{'FT'};fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+15]}">$fo/$fd/$fm</text>
SVG
         # minor forts
         if ($symb eq 'mf' or $symb eq 'fau' or $symb eq 'fad') {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+27]}" xlink:href="#$symb" />
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+35]}">$name</text>
SVG
         }
         elsif ($symb eq 'ff') {
            print <<"SVG";
  <use x="@{[51*$x+24.5]}" y="@{[51*$y+28]}" xlink:href="#ff" />
SVG
         }
         elsif ($symb eq 'lf') {
            print <<"SVG";
  <use x="@{[51*$x+24.5]}" y="@{[51*$y+28]}" xlink:href="#ff" />
  <use x="@{[51*$x+24.5]}" y="@{[51*$y+28]}" xlink:href="#lf" />
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+30]}">$name</text>
SVG
         }
      }
   }
   # informational markers
   elsif ($nat eq 'W' or $nat eq 'Y' or
          $symb eq 'diag' or $symb eq 'int' or $symb eq '2mp') {
      print <<"SVG";
  <use x="@{[51*$x]}" y="@{[51*$y]}" style="fill:@{[$ncolor{$nat}]}" xlink:href="#s" />
SVG
      # diagonal markers
      if ($symb eq 'diag') {
         # small text
         if ($mod =~ /sm/) {
            ($a,$b) = split / /, $name;

            if ($b) {
               print <<"SVG";
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" transform="rotate(-45,@{[51*$x+25]},@{[51*$y+23]})">
   <tspan x="@{[51*$x+25]}" y="@{[51*$y+23]}">$a</tspan>
   <tspan x="@{[51*$x+25]}" y="@{[51*$y+33]}">$b</tspan>
  </text>
SVG
            }
            else {
               print <<"SVG";
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+30]}" transform="rotate(-45,@{[51*$x+25]},@{[51*$y+25]})">$name</text>
SVG
            }
         }
         # medium text
         elsif ($mod =~ /med/) {     
            print <<"SVG";
  <text style="font-size:14px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+30]}" transform="rotate(-45,@{[51*$x+25]},@{[51*$y+23]})">$name</text>
SVG
         }
         # large text
         elsif ($mod =~ /lg/) {
            print <<"SVG";
  <text style="font-size:24px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+23]}" y="@{[51*$y+34]}" transform="rotate(-45,@{[51*$x+23]},@{[51*$y+22]})">$name</text>
SVG
         }

         # cut rail
         if ($mod =~ /cut/) {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+25]}" xlink:href="#cut" />
SVG
         }
      }
      # port capacity
      elsif ($symb eq 'pc') {
         print <<"SVG";
  <text style="font-size:12px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+23]}" y="@{[51*$y+29]}" transform="rotate(-45,@{[51*$x+23]},@{[51*$y+22]})">$name</text>
  <text style="font-size:36px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+35]}" y="@{[51*$y+55]}">*</text>
SVG
      }
      # interdiction
      elsif ($symb eq 'int') {
         ($a,$b) = split / /, $name;
         print <<"SVG";
  <text style="font-size:12px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+23]}" y="@{[51*$y+29]}" transform="rotate(-45,@{[51*$x+23]},@{[51*$y+22]})">$a</text>
  <text style="font-size:24px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:end;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+45]}" y="@{[51*$y+45]}">$b</text>
SVG
      }
      # heavy bomber +2 MP
      elsif ($symb eq '2mp') {
         print <<"SVG";
  <use x="@{[51*$x]}" y="@{[51*$y]}" xlink:href="#2mp" />
SVG
      }
      # mulberries
      elsif ($symb eq 'mul') {
         ($a,$b) = split / /, $name;
         print <<"SVG";
  <use x="@{[51*$x]}" y="@{[51*$y]}" xlink:href="#mul" />
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed">
   <tspan x="@{[51*$x+25]}" y="@{[51*$y+15]}">$a</tspan>
   <tspan x="@{[51*$x+25]}" y="@{[51*$y+25]}">$b</tspan>
  </text>
SVG
      }
      # damaged
      elsif ($symb eq 'dmul') {
         print <<"SVG";
  <use x="@{[51*$x]}" y="@{[51*$y]}" xlink:href="#dmul" />
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+27]}" y="@{[51*$y+27]}" transform="rotate(-30,@{[51*$x+27]},@{[51*$y+27]})">$name</text>
SVG
      }
      # train
      elsif ($symb eq 'train') {
         print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+25]}" xlink:href="#train" />
SVG
      }
   }
   # air units
   elsif ($symb eq 'air') {
      print <<"SVG";
  <use x="@{[51*$x]}" y="@{[51*$y]}" style="fill:@{[$ncolor{$nat}]}" xlink:href="#s" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+10]}" xlink:href="#$mod" />
  <text style="font-size:4px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+5]}" y="@{[51*$y+25]}">$type</text>
  <text style="font-size:18px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:end;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+45]}" y="@{[51*$y+45]}">$div</text>
SVG
      ($a,$b) = split / /, $name;
      if ($b) {
         print <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Roman No9 L" x="@{[51*$x+5]}" y="@{[51*$y+45]}">$b</text>
SVG
      }
      print <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:end;fill:black;fill-opacity:1;font-family:Nimbus Roman No9 L" x="@{[51*$x+45]}" y="@{[51*$y+25]}">$a</text>
SVG
   }
   # ground units
   else {
      print <<"SVG";
  <use x="@{[51*$x]}" y="@{[51*$y]}" style="fill:@{[$ncolor{$nat}]}" xlink:href="#s" />
  <text style="font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:end;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x]}" y="@{[51*$y]}" >
   <tspan x="@{[51*$x+47]}" y="@{[51*$y+15]}">$fo</tspan>
   <tspan x="@{[51*$x+47]}" y="@{[51*$y+30]}">$fd</tspan>
   <tspan x="@{[51*$x+47]}" y="@{[51*$y+45]}">$fm</tspan>
  </text>
  <text style="font-size:10px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+25]}" y="@{[51*$y+45]}" >$div</text>
  <text style="font-size:9px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+3]}" y="@{[51*$y+45]}" >$fs</text>
  <text style="font-size:9px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+3]}" y="@{[51*$y+10]}" >$fr</text>
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Roman No9 L" x="@{[51*$x+3]}" y="@{[51*$y+37]}" >$name</text>
SVG
      
      # mechanized movement
      if ($symb eq 'pz' or $symb eq 'ac' or
         $trans eq 'ht' or $trans eq 'sp') {
         print <<"SVG";
   <line x1="@{[51*$x+41]}" y1="@{[51*$y+47]}" x2="@{[51*$x+47]}" y2="@{[51*$y+47]}" style="stroke-width:1;stroke:black;stroke-opacity:1" />
SVG
      }

      # artillery
      if ($symb eq 'arty') {
         # self-propelled artillery
         if ($trans eq 'sp') {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#arty" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#sp" />
SVG
            # batallion flag
            if ($flag eq 'bn') {
               print <<"SVG";
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17]}" xlink:href="#bnsm" />
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
                  print <<"SVG";
  <use x="@{[51*$x+29.649]}" y="@{[51*$y+17]}" xlink:href="#para" />
SVG
               }

               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+22]}" xlink:href="#arty" />
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17+$f]}" xlink:href="#${flag}sm" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+20-$f]}" xlink:href="#motsm" />
SVG
            }
            # motorized battery carriage
            else {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#arty" />
  <use x="@{[51*$x+25]}" y="@{[51*$y-2]}" xlink:href="#motbty" />
SVG
            }
         }
         # fixed or casemented artillery
         elsif ($trans eq 'fix' or $trans eq 'cmt') {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+18]}" xlink:href="#arty" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#$trans" />
SVG
         }
         # railroad artillery
         elsif ($trans eq 'rr') {
            print <<"SVG";
  <use x="@{[51*$x+23]}" y="@{[51*$y+18]}" xlink:href="#arty" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#rr" />
  <text style="font-size:8px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:start;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+28]}" y="@{[51*$y+25]}">E</text>
SVG
         }
         else {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+22]}" xlink:href="#arty" />
SVG
            # batallion or brigade flag
            if ($flag eq 'bn' or $flag eq 'bde') {
               $f = 0;

               # para or glider
               if ($mod =~ /para|gl/) {
                  $f = -4;
                  print <<"SVG";
  <use x="@{[51*$x+29.649]}" y="@{[51*$y+17]}" xlink:href="#$&" />
SVG
               }

               print <<"SVG";
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17+$f]}" xlink:href="#${flag}sm" />
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
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+23]}" xlink:href="#at" />
  <use x="@{[51*$x+30.5]}" y="@{[51*$y+17]}" xlink:href="#bnsm" />
  <use x="@{[51*$x+26]}" y="@{[51*$y+20]}" xlink:href="#motsm" />
SVG
            }
            # motorized battery carriage
            else {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+21]}" xlink:href="#at" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+2]}" xlink:href="#motbty" />
SVG
               # glider
               if ($mod =~ /gl/) {
                  print <<"SVG";
     <use x="@{[51*$x+29.649]}" y="@{[51*$y+12]}" xlink:href="#gl" />
SVG
               }

               # heavy
               if ($mod =~ /hvy/) {
                  print <<"SVG";
     <use x="@{[51*$x+25]}" y="@{[51*$y+21]}" xlink:href="#hvy" />
SVG
               }
            }
         }
         else {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+22]}" xlink:href="#at" />
SVG
            # batallion flag
            if ($flag eq 'bn') {
               print <<"SVG";
  <use x="@{[51*$x+30.5]}" y="@{[51*$y+17]}" xlink:href="#bnsm" />
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
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+24]}" xlink:href="#flak" />
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17]}" xlink:href="#bnsm" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+20]}" xlink:href="#motsm" />
SVG
            }
            # motorized battery carriage
            else {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+17]}" xlink:href="#flak" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+17]}" xlink:href="#motbty" />
SVG

               # heavy
               if ($mod =~ /hvy/) {
                  print <<"SVG";
     <use x="@{[51*$x+25]}" y="@{[51*$y+15]}" xlink:href="#hvy" />
SVG
               }
            }
         }
         else {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+22]}" xlink:href="#flak" />
SVG
            # batallion flag
            if ($flag eq 'bn') {
               print <<"SVG";
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17]}" xlink:href="#bnsm" />
SVG
            }
         }
      }
      # gun
      elsif ($symb eq 'gun' or $symb eq 'mor') {
         # self-propelled guns
         if ($trans eq 'sp') {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#gun" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#sp" />
SVG
            # batallion flag
            if ($flag eq 'bn') {
               print <<"SVG";
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17]}" xlink:href="#bnsm" />
SVG
            }
         }
         # motorized guns
         elsif ($trans eq 'mot') {
            # batallion flag
            if ($flag eq 'bn') {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+22]}" xlink:href="#gun" />
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17]}" xlink:href="#bnsm" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+20]}" xlink:href="#motsm" />
SVG
            }
            # motorized battery carriage
            else {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#gun" />
  <use x="@{[51*$x+25]}" y="@{[51*$y]}" xlink:href="#motbty" />
SVG
               if ($symb eq 'mor') {
                  print <<"SVG";
  <circle cx="@{[51*$x+25]}" cy="@{[51*$y+23]}" r="2.5" style="fill:black;stroke:none" />
SVG
               }
            }
         }
         else {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+22]}" xlink:href="#gun" />
SVG
            # batallion flag
            if ($flag eq 'bn') {
               print <<"SVG";
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17]}" xlink:href="#bnsm" />
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
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+22]}" xlink:href="#nw" />
  <use x="@{[51*$x+29.5]}" y="@{[51*$y+17]}" xlink:href="#bnsm" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+20]}" xlink:href="#motsm" />
SVG
               # "fixed"
               if ($mod =~ /fix/) {
                  print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+28]}" xlink:href="#fix" />
SVG
               }
            }
         }
         elsif ($trans eq 'ht') {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+17]}" xlink:href="#htnw" />
SVG
         }
      }
      # mortar
      elsif ($symb eq 'gw') {
         # motorized mortars 
         if ($trans eq 'mot') {
            # batallion flag
            if ($flag eq 'bn') {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#gw" />
  <use x="@{[51*$x+33]}" y="@{[51*$y+19]}" xlink:href="#bnsm" />
  <use x="@{[51*$x+28.5]}" y="@{[51*$y+22]}" xlink:href="#motsm" />
SVG
            }
            # motorized battery carriage
            else {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+13]}" xlink:href="#gw" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+14]}" xlink:href="#motbty" />
SVG
            }
         }
      }    
      # infantry
      elsif ($symb eq 'inf') {
         print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#inf" />
SVG
         # transport
         if ($trans eq 'mot' or $trans eq 'ht' or
             $trans eq 'bi'  or $trans eq 'rr') {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#$trans" />
SVG
         }

         # company stripe
         if ($flag eq 'co') {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#coinf" />
SVG
            $m = $mod =~ /para/ ? -5 : 0; 

            # reconnaisance
            if ($mod =~ /rcce/) {
               print <<"SVG";
  <use x="@{[51*$x+26]}" y="@{[51*$y+19+$m]}" xlink:href="#rcce" />
SVG
            }
            # pioneers
            elsif ($mod =~ /pio/) {
               if    ($trans eq 'rr') { $r = -2; }
               elsif ($mod =~ /gl/)   { $r = -8; }
               else                   { $r =  0; }

               if ($trans eq 'rr') {
                  print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#rrpio" />
SVG
               }

               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19+$r]}" xlink:href="#pio" />
SVG
            }

            # paratroops
            if ($mod =~ /para/) {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#para" />
SVG
            }
            # gliders
            elsif ($mod =~ /gl/) {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#gl" />
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

            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19+$f]}" xlink:href="#${flag}sm" />
SVG
            # reconnaisance
            if ($mod =~ /rcce/) {
               print <<"SVG";
  <use x="@{[51*$x+26]}" y="@{[51*$y+10+$m]}" xlink:href="#rcce" />
SVG
            }
            # pioneers
            elsif ($mod =~ /pio/) {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19+$m]}" xlink:href="#pio" />
SVG
            }

            # paratroops 
            if ($mod =~ /para/) {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#para" />
SVG
            }
            # gliders
            elsif ($mod =~ /gl/) {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#gl" />
SVG
            }
         }

         # machine gun
         if ($mod =~ /mg/) {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#mg" />
SVG
         }
         # military police
         elsif ($mod =~ /mp/) {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#mp" />
SVG
         }
         # feld ersatz
         elsif ($mod =~ /fe/) {
            print <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">F.E.</text>
SVG
         }
         # fusiliers
         elsif ($mod =~ /fus/) {
            print <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">FUS</text>
SVG
         }
         # ost
         elsif ($mod =~ /ost/) {
            print <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">OST</text>
SVG
         }
         # commandos
         elsif ($mod =~ /kom/) {
            print <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">KOM</text>
SVG
         }
         elsif ($mod =~ /cdo/) {
            print <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">CDO</text>
SVG
         }
         # rangers
         elsif ($mod =~ /rgr/) {
            print <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">RGR</text>
SVG
         }
         # heavy weapons
         elsif ($mod =~ /hw/) {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#hw" />
SVG
         }
         # railroad engineers
         elsif ($mod =~ /pio/ and $trans eq 'rr') {
            print <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">E</text>
SVG
         }
         # remnant
         elsif ($mod =~ /rem/) {
            print <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">REM</text>
SVG
         }
         # replacement
         elsif ($mod =~ /rpl/) {
            print <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">RPL</text>
SVG
         }
      }
      # armor
      elsif ($symb eq 'pz') {
         print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#pz" />
SVG
         # company stripe
         if ($flag eq 'co') {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#copz" />
SVG
         }
         # batallion or replacement flag
         elsif ($flag eq 'bn' or $flag eq 'rpl') {
            if ($mod =~ /ag/) {
               $f = 0;

               # para
               if ($mod =~ /para/) {
                  $f = -4;
                  print <<"SVG";
  <use x="@{[51*$x+25.359]}" y="@{[51*$y+15]}" xlink:href="#para" />
SVG
               }

               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+17+$f]}" xlink:href="#bnsm" />
SVG
            }
            else {
               print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#${flag}sm" />
SVG
            }
         }
     
         # assault gun
         if ($mod =~ /ag/) {
            print <<"SVG";
  <use x="@{[51*$x+20]}" y="@{[51*$y+19]}" xlink:href="#gun" />
SVG
         }
         elsif ($mod =~ /croc/) {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#croc" />
SVG
         }

         # RMSR
         if ($mod =~ /rmsr/) {
            print <<"SVG";
  <text style="font-size:8px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L" x="@{[51*$x+25]}" y="@{[51*$y+10]}">RMSR</text>
SVG
         }
         # crab
         elsif ($mod =~ /crab/) {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#crab" />
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">CRAB</text>
SVG
         }
         # AVRE
         elsif ($mod =~ /avre/) {
            print <<"SVG";
  <use x="@{[51*$x+24]}" y="@{[51*$y+8]}" xlink:href="#gw" />
SVG
         }
         # dual drive
         elsif ($mod =~ /dd/) {
            print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#dd" />
SVG
         }
         # remnant
         elsif ($mod =~ /rem/) {
            print <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">REM</text>
SVG
         }
         # replacement
         elsif ($mod =~ /rpl/) {
            print <<"SVG";
  <text style="font-size:6px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-anchor:middle;fill:black;fill-opacity:1;font-family:Nimbus Sans L Condensed" x="@{[51*$x+25]}" y="@{[51*$y+26]}">RPL</text>
SVG
         }
      }
      # armored cars
      elsif ($symb eq 'ac') {
         print <<"SVG";
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#ac" />
  <use x="@{[51*$x+25]}" y="@{[51*$y+19]}" xlink:href="#$trans" />
SVG
         # batallion flag
         if ($flag eq 'bn') {
            print <<"SVG";
  <use x="@{[51*$x+38]}" y="@{[51*$y+22]}" xlink:href="#bnsm" />
SVG
         }

         $a = 0;
         if ($flag eq 'co') {
            if ($mod =~ /gl/) { $a = -1; }
            else { $a = 8; }
         }
 
         # reconnaisance
         if ($mod =~ /rcce/) {
            print <<"SVG";
  <use x="@{[51*$x+39]}" y="@{[51*$y+13+$a]}" xlink:href="#rcce" />
SVG
         }

         # gliders
         if ($mod =~ /gl/) {
            print <<"SVG";
  <use x="@{[51*$x+38]}" y="@{[51*$y+19]}" xlink:href="#gl" />
SVG
         }
      }
   }

   print <<SVG;
 </g>
SVG

   if ($x > 39) { $x = 0; $y++; }
   else { $x++; }
}

print <<SVG;
</svg>
SVG
