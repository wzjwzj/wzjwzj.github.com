psfile=a.ps

gmtset FRAME_PEN  = 3p

psbasemap -R-2/2/0/4  -JX1i -Gwhite -P -K  -X6i >  $psfile

#psbasemap -R0/13/0/13 -Jx1i -Gp50/29:F255/0/0B0/255/0 -B -P -K -O >> $psfile
#psbasemap -R0/14/0/14 -Jx1i  -BWSNE -P -K -O >> $psfile

ps_xy(){
 gawk 'BEGIN {  f=1.41421356237 ; a="i" ;
   print "12.5  1.5", 3*f a  ;
   print " 8.5  5.5", 5*f a  ;
   print " 5.0  9.0", 2*f a  ;
   print " 2.0 12.0", 4*f a  ; 
 }' 
}

ps_xy |  psxy -R0/14/0/14 -Jx1i -P -K -Gp300/29:FblackBwhite -W5p/100/100/100 -O -Ss -BWSNE >> $psfile

pstext -R -Jx -K -P -O  -N  -BWSNE  -Gred << EOF >> $psfile
 8.0 6.0   120 0 4 MC C
 9.2 5.8   120 0 4 MC dj
# -2  7     140 0 4 MC C=
EOF



exit

# x,   y,   size,  angle,  fontno,  justify,  text
gawk 'BEGIN {
     print    -2.1,     -1.2,  "33     0       0      MC     t"
     print    -1.9,     -1.3,  "30     0       4      MC     k"
}' | pstext -R -JX -K -P -O  -N  >> $psfile
