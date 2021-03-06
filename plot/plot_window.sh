psfile=a.ps
xx=1.0; yy=6.0
dx=0.1; dy=0.1
xc=0.5; yc=0.2


makecpt -Crainbow -T0/10/0.1 -Z > tmp.cpt

#dummy plot
psbasemap -R0/1/0/1  -Jx0.6c -Gred -P  -K  > $psfile

# plot 
gawk -v xx=$xx -v yy=$yy -v dx=$dx -v dy=$dy -v xc=$xc -v yc=$yc 'BEGIN { 
	      for( x=0;x<=xx; x+=dx)  
		      for(y=0;y<=yy;y+=dy)
			  print x,y,sqrt((x-xc)**2+(y-yc)**2);
     }'  | pscontour -R0/${xx}/0/${yy} -Jx1i -Ctmp.cpt -Bwsne -W0.5p -P  -K -O >> $psfile

psbasemap -R0/1/0/1  -Jx0.6c -Gred -P -O  -K  -Y1i -X1i >> $psfile

printf "0 0\n 1 0.08\n 2 0\n0 0" | psxy -R0/2/0/1 -JX1i/1i -K -P -X0.5i -O  >> $psfile
printf "0 0\n 1 0.10\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0.08\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0.11\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0.09\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0.20\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 1.00\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0.80\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0.05\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0.02\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0.02\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0.12\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0.02\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -W0.2p/255/0/0  -X -O  >> $psfile

psbasemap -R0/1/0/1  -Jx0.6c -Gred -P -O  -K  -Y1.5i -X-6.5i >> $psfile

printf "0 0\n 1 0\n 2 0\n0 0" | psxy -R0/2/0/1 -JX1i/2i -K -P -X0.5i -O  >> $psfile
printf "0 0\n 1 0\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0.2\n 2 0\n0 0" | psxy -R0/2/0/1 -JX0.5i/1i -K -P -O  >> $psfile
printf "0 0\n 1 0.8\n 2 0\n0 0" | psxy -R0/2/0/1 -JX0.5i/1i -K -P -X0.25i -O  >> $psfile
printf "0 0\n 1 1.0\n 2 0\n0 0" | psxy -R0/2/0/1 -JX0.5i/1i -K -P -X0.25i -O  >> $psfile
printf "0 0\n 1 0.3\n 2 0\n0 0" | psxy -R0/2/0/1 -JX0.5i/1i -K -P -X0.25i -O  >> $psfile
printf "0 0\n 1 0\n 2 0\n0 0" | psxy -R0/2/0/1 -JX1i/2i -K -P -X0.5i -O  >> $psfile
printf "0 0\n 1 0\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -X -O  >> $psfile
printf "0 0\n 1 0\n 2 0\n0 0" | psxy -R0/2/0/1 -JX -K -P -W0.2p/255/0/0  -X -O  >> $psfile

