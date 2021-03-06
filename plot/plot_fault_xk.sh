#!/usr/bin/sh

psfile=a.ps
#psbasemap -R-2/2/-12/6 -JX6i/1i -Bf1S    -Y4i  -K -P           --BASEMAP_TYPE=graph > a.ps
#psbasemap -R           -JX1i/3i -Bf3W      -Y-2i -X3i -K -P -O  --BASEMAP_TYPE=graph >> a.ps
#psbasemap -R0/2/-12/6  -JX3i/3i -Bg0.1/g1W -K -P -O           --BASEMAP_TYPE=plain >> a.ps
#psbasemap -R-2/0/-12/6 -JX3i/3i -Bg0.1/g1E -K -P -O -X-3i     --BASEMAP_TYPE=plain >> a.ps

# dump plot.


# plot
b_spine_h() {
gawk 'BEGIN {   s_2=-2;
                s_1=-1;
		s0 = 0;
		s1 = 1;
		s2 = 2;
		ds = 1;
		dds=0.02;
                for(s=s_2;s<=s2;s=s+dds) { 
                    if ( s < s_1) {
			    printf "%6.2f %12.8f\n", s, (s-s_2)**3 ;
		    } else if ( s < s0 ){
		    	    printf "%6.2f %12.8f\n", s, 3*(s0-s)**3-6*ds*(s0-s)**2+4*ds**3;
	            } else if ( s < s1 ){
		            printf "%6.2f %12.8f\n", s, 3*(s-s0)**3-6*ds*(s-s0)**2+4*ds**3; 
	            } else if ( s < s2 ){
		            printf "%6.2f %12.8f\n", s, (s2-s)**3 ;
	            }
		} 
	    }'  
}


b_spine_v() {
gawk 'BEGIN {   s_2=-2;
                s_1=-1;
		s0 = 0;
		s1 = 1;
		s2 = 2;
		ds = 1;
		dds=0.02;
                for(s=s_2;s<=s2;s=s+dds) { 
                    if ( s < s_1) {
			    printf "%6.2f %12.8f\n",  (s-s_2)**3 ,s ;
		    } else if ( s < s0 ){
		    	    printf "%6.2f %12.8f\n",  3*(s0-s)**3-6*ds*(s0-s)**2+4*ds**3 ,s ;
	            } else if ( s < s1 ){
		            printf "%6.2f %12.8f\n",  3*(s-s0)**3-6*ds*(s-s0)**2+4*ds**3 ,s ; 
	            } else if ( s < s2 ){
		            printf "%6.2f %12.8f\n",  (s2-s)**3 , s ;
	            }
		} 
	    }'  
}
b_spine_v1() {
gawk 'BEGIN {   s_2=-2;
                s_1=-1;
		s0 = 0;
		s1 = 1;
		s2 = 2;
		ds = 1;
		dds=0.06;
                for(s=s_2;s<=s0;s=s+dds) { 
                    if ( s < s_1) {
			    printf "%6.2f %12.8f\n",  (s-s_2)**3 ,s ;
		    } else if ( s < s0 ){
		    	    printf "%6.2f %12.8f\n",  3*(s0-s)**3-6*ds*(s0-s)**2+4*ds**3 ,s ;
	            } else if ( s < s1 ){
		            printf "%6.2f %12.8f\n",  3*(s-s0)**3-6*ds*(s-s0)**2+4*ds**3 ,s ; 
	            } else if ( s < s2 ){
		            printf "%6.2f %12.8f\n",  (s2-s)**3 , s ;
	            }
		} 
	    }'  
}
b_spine_v2() {
gawk 'BEGIN {   s_2=-2;
                s_1=-1;
		s0 = 0;
		s1 = 1;
		s2 = 2;
		ds = 1;
		dds=0.06;
                for(s=s_2;s<=s1;s=s+dds) { 
                    if ( s < s_1) {
			    printf "%6.2f %12.8f\n",  (s-s_2)**3 ,s ;
		    } else if ( s < s0 ){
		    	    printf "%6.2f %12.8f\n",  3*(s0-s)**3-6*ds*(s0-s)**2+4*ds**3 ,s ;
	            } else if ( s < s1 ){
		            printf "%6.2f %12.8f\n",  3*(s-s0)**3-6*ds*(s-s0)**2+4*ds**3 ,s ; 
	            } else if ( s < s2 ){
		            printf "%6.2f %12.8f\n",  (s2-s)**3 , s ;
	            }
		} 
	    }'  
}


nw=9
nh=6

w=3
h=1

x1=`gawk -v w=$w -v h=$h -v nw=$nw -v nh=$nh  'BEGIN{print 0.25*w}'`
x2=`gawk -v w=$w -v h=$h -v nw=$nw -v nh=$nh  'BEGIN{print -h-(nw-1)*0.25*w}'`
x3=`gawk -v w=$w -v h=$h -v nw=$nw -v nh=$nh  'BEGIN{print (nw+3)*0.25*w}'`
y1=`gawk -v w=$w -v h=$h -v nw=$nw -v nh=$nh  'BEGIN{print (nh+3)*0.25*w}'`
y2=`gawk -v w=$w -v h=$h -v nw=$nw -v nh=$nh  'BEGIN{print -0.75*w+0.5*w}'`

psbasemap -R0/1/0/1  -Jx0.6c -Gwhite -P -K -X${x1}i -Y9i  > $psfile
for i in `seq $nw` ; do 
  if [ $i -eq 2 ] ; then
	b_spine_h | psxy -R-2/2/0/4 -JX${w}i/${h}i  -W3px/255/0/0 -P -K -O  -X${x1}i  >> $psfile 
  else
	b_spine_h | psxy -R-2/2/0/4 -JX${w}i/${h}i  -W1px/0/0/0 -P -K -O  -X${x1}i  >> $psfile
  fi
done

psbasemap -R0/1/0/1 -Jx0.6c -Gwhite -P -K -O -X${x2}i -Y${y2}i >> $psfile
b_spine_v1 | psxy -R0/4/-2/2 -JX-${h}i/${w}i -Sc3p -Gblack -N -P -K -O -Y-${x1}i >> $psfile 
b_spine_v2 | psxy -R0/4/-2/2 -JX-${h}i/${w}i -Sc3p -Gblack -N -P -K -O -Y-${x1}i >> $psfile 
for i in `seq $nh` ; do
  if [ $i -eq `expr $nh - 1` ] ; then	
	b_spine_v | psxy -R0/4/-2/2 -JX-${h}i/${w}i -W3px/255/0/0 -P -K -O  -Y-${x1}i >> $psfile 
  else
	b_spine_v | psxy -R0/4/-2/2 -JX-${h}i/${w}i -W1px/0/0/0 -P -K -O  -Y-${x1}i >> $psfile 
  fi
done

gmtset GRID_PEN_PRIMARY = 2p 
psbasemap -R0/`expr $nw + 3`/0/`expr $nh + 3`  -JX${x3}i/${y1}i  -P  -K -Bg1 -O -X${h}i  >> $psfile
gawk 'BEGIN { for(ix=1.1; ix<=4.9; ix=ix+0.1) { print ix,1 ; print ix,5 ; print ">"} ; 
              for(iy=1.1; iy<=4.9; iy=iy+0.1) { print 1,iy ; print 5,iy ; print ">"} }' | psxy -R -JX -W6px/205/140/140 -K -P -O -m -Bg1 >> $psfile
gawk -v nh=$nh -v nw=$nw 'BEGIN { for(ix=0; ix<nw+3; ix++) for(iy=0; iy<nh+3; iy++) print ix+0.5,iy+0.5 }' | psxy -R -JX -Sc8p -G240/240/240 -K -P -N -O >> $psfile
gawk -v nh=$nh -v nw=$nw 'BEGIN { for(ix=2; ix<nw+2; ix++) for(iy=2; iy<nh+2; iy++) print ix,iy }' | psxy -R -JX -Sc12p -G250/150/150 -K -P -N -O  >> $psfile

# x,   y,   size,  angle,  fontno,  justify,  text
gawk -v nh=$nh -v nw=$nw 'BEGIN {
     print    0.5,     0.5,  "20     0       4      MC     NY";
     print nw+2.5,  nh+2.5,  "20     0       4      MC     NX";
     print    0.5,  nh+2.5,  "20     0       4      MC     1";
     print nw+1.5,     1.5,  "20     0       4      MC     (ix,iy)";
     print    2.0,  nh+4.5,  "20     0       4      MC     1"
     print    3.0,  nh+4.5,  "25     0       4      MC     il"
     print nw+1.0,  nh+4.5,  "20     0       4      MC     NL"
     print   -1.6,  nh+1.0,  "20     0       4      MC     1"
     print   -1.6,     2.0,  "20     0       4      MC     NW"
     print   -1.6,     3.0,  "25     0       4      MC     iw"
     print    2.8,       3,  "45     0       4      MC     X"
     print    3.3,     2.9,  "40     0       4      MC     k"
     print nw+2.5,   0.666,  "20     0       4      ML     NX=NL +3"
     print nw+2.5,   0.333,  "20     0       4      ML     NY=NW+3"
}' | pstext -R -JX -K -P -O  -N  >> $psfile
gmtset GRID_PEN_PRIMARY = 0.25p 

