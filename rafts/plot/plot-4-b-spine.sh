#!/usr/bin/sh
psbasemap -R-2/2/-12/6 -JX6i/1i -Bf1S    -Y4i  -K -P           --BASEMAP_TYPE=graph > a.ps
psbasemap -R           -JX1i/3i -Bf3W      -Y-2i -X3i -K -P -O  --BASEMAP_TYPE=graph >> a.ps
psbasemap -R0/2/-12/6  -JX3i/3i -Bg0.1/g1W -K -P -O           --BASEMAP_TYPE=plain >> a.ps
psbasemap -R-2/0/-12/6 -JX3i/3i -Bg0.1/g1E -K -P -O -X-3i     --BASEMAP_TYPE=plain >> a.ps

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
	    }'  | psxy -R-2/2/-12/6 -JX6i/3i -P -W2px/255/0/0 -K -O  >> a.ps

gawk 'BEGIN {   s_2=-2;
                s_1=-1;
		s0 = 0;
		s1 = 1;
		s2 = 2;
		ds = 1;
		dds=0.02;
                for(s=s_2;s<=s2;s=s+dds) { 
                    if ( s < s_1) {
			    printf "%6.2f %12.8f\n", s,  3*(s-s_2)**2 ;
		    } else if ( s < s0 ){
		    	    printf "%6.2f %12.8f\n", s, -9*(s0-s)**2+12*ds*(s0-s);
	            } else if ( s < s1 ){
		            printf "%6.2f %12.8f\n", s,  9*(s-s0)**2-12*ds*(s-s0); 
	            } else if ( s < s2 ){
		            printf "%6.2f %12.8f\n", s, -3*(s2-s)**2 ;
	            }
		} 
	    }' | psxy -R-2/2/-12/6 -JX6i/3i -P -W2px/0/255/0  -K -O  >> a.ps

gawk 'BEGIN {   s_2=-2;
                s_1=-1;
		s0 = 0;
		s1 = 1;
		s2 = 2;
		ds = 1;
		dds=0.2;
                for(s=s_2;s<=s2;s=s+dds) { 
                    if ( s < s_1) {
			    printf "%6.2f %12.8f\n", s,  6*(s-s_2) ;
		    } else if ( s < s0 ){
		    	    printf "%6.2f %12.8f\n", s, 18*(s0-s)-12*ds ;
	            } else if ( s < s1 ){
		            printf "%6.2f %12.8f\n", s, 18*(s-s0)-12*ds ; 
	            } else if ( s < s2 ){
		            printf "%6.2f %12.8f\n", s,  6*(s2-s) ;
	            }
		} 
	    }' | psxy -R-2/2/-12/6 -JX6i/3i -P -W2px/0/0/255  -K -O >> a.ps

pstext -R -J -P -K -O -H1 -N << EOF >> a.ps
# x,y,size,angle,fontno,justify,text   [T|M|B][L|C|R] (top/middle/bottom/left/center/right).
-2 -1  10  0 0  BC  S 
-1 -1  10  0 0  BC  S
 0 -1  10  0 0  BC  S
 1 -1  10  0 0  BC  S
 2 -1  10  0 0  BC  S
-1.9 -1.2 8  0 0  BC  j-2 
-0.9 -1.2 8  0 0  BC  j-1
 0.1 -1.2 8  0 0  BC  j
 1.1 -1.2 8  0 0  BC  j+1
 2.1 -1.2 8  0 0  BC  j+2
EOF
