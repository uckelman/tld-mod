#!/bin/bash

# map sections
convert maps/Map_Full.png -depth 8 -crop 2238x1408+0+0 \+repage maps/Map_A_Cherbourg.png
convert maps/Map_Full.png -depth 8 -crop 1368x2241+333+1407 \+repage maps/Map_B_Coutances.png
convert maps/Map_Full.png -depth 8 -crop 1442x2241+1700+1407 \+repage maps/Map_C_Saint_Lo.png
convert maps/Map_Full.png -depth 8 -crop 1404x2241+3141+1407 \+repage maps/Map_D_Caen.png
convert maps/Map_Full.png -depth 8 -crop 796x2241+4544+1407 \+repage maps/Map_E_Cabourg.png
convert maps/Map_Full.png -depth 8 -crop 2256x1915+886+3615 \+repage maps/Map_F_Avranches.png
convert maps/Map_Full.png -depth 8 -crop 2199x1915+3141+3615 \+repage maps/Map_G_Argentan.png

# map for scenario #3
convert maps/Map_Full.png -depth 8 -crop 3142x5024+0+0 \+repage maps/Map_ABCF.png
