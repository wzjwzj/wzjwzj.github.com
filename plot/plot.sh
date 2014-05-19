psfile=a.ps

rm -f .gmt_bb_info  .gmtcommands4  .gmtdefaults4


psbasemap -R0/6/0/6   -JX6i -P -K  -Gwhite > $psfile

#psxy -R0/6/0/6        -JX6i -Sv   -P -K -O -m -N  << EOF >> $psfile
#4.4 4.15 130  8 
#6.7 1.88 40   2
#EOF

psbasemap -R0/6/0/0.2 -Jx1i -P -K  -B -O >> $psfile
for i in `seq 10` ; do 
	psbasemap -R0/6/0/0.2 -Jx -P -K -Y0.58i  -B  -O  >> $psfile
done

psbasemap -R0/0.2/0/0.2 -Jx -P -K -Y-1.74i  -X4.24i  -B -Gblack -O  >> $psfile


psbasemap -R0/0.2/0/6   -Jx -P -K -Y-4.06i -X2.34i -B  -O  >> $psfile
psbasemap -R0/0.2/0/0.2 -Jx -P -K -Y1.74i -B -Gblack -O  >> $psfile
