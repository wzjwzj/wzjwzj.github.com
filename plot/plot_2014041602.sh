b_spine_h() {
gawk 'BEGIN {   s_2=-2;
                s_1=-1;
		s0 = 0;
		s1 = 1;
		s2 = 2;
		s3 = 3;
		s4 = 4;
		s5 = 5;
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


b_spine_4w() {
gawk 'BEGIN {   s_2=-2;
                s_1=-1;
		s0 = 0;
		s1 = 1;
		s2 = 2;
		s3 = 3;
		s4 = 4;
		s5 = 5;
		ds = 1;
		dds=0.1;
		a=0.6;
		b=0.3;
		c=1.0;
		d=0.5;
                for(s=s_2;s<=s5;s=s+dds) { 
                    if ( s < s_1) {
		        printf "%6.2f %12.8f\n", s, a*((s-s_2)**3) ;
		    } else if ( s < s0 ){
		        printf "%6.2f %12.8f\n", s, a*(3*(s0-s)**3-6*ds*(s0-s)**2+4*ds**3)   + b*((s-s_1)**3) ;
	            } else if ( s < s1 ){
		        printf "%6.2f %12.8f\n", s, a*(3*(s-s0)**3-6*ds*(s-s0)**2+4*ds**3)   + b*(3*(s1-s)**3-6*ds*(s1-s)**2+4*ds**3)  + c*((s-s0)**3) ;
	            } else if ( s < s2 ){
		        printf "%6.2f %12.8f\n", s, a*((s2-s)**3) + b*(3*(s-s1)**3-6*ds*(s-s1)**2+4*ds**3) + c*(3*(s2-s)**3-6*ds*(s2-s)**2+4*ds**3) + d*((s-s1)**3) ;
	            } else if ( s < s3 ){
		        printf "%6.2f %12.8f\n", s, b*((s3-s)**3) + c*(3*(s-s2)**3-6*ds*(s-s2)**2+4*ds**3) + d*(3*(s3-s)**3-6*ds*(s3-s)**2+4*ds**3) ;
	            } else if ( s < s4 ){
		        printf "%6.2f %12.8f\n", s, c*((s4-s)**3) + d*(3*(s-s3)**3-6*ds*(s-s3)**2+4*ds**3) ;
	            } else if ( s < s5 ){
		        printf "%6.2f %12.8f\n", s, d*((s5-s)**3);
	            } 
		} 
	    }'  
}

psfile=a.ps
gmtset FRAME_WIDTH = 2c FRAME_PEN  = 3p TICK_LENGTH = 1c TICK_PEN = 2p

psbasemap -R-2/2/0/4  -JX1i -Gwhite -P -K  -X2i >  $psfile

b_spine_h  | gawk '{print $1,$2*0.6}' | psxy -R-2/2/0/6 -JX4i/3i -W3px/250/50/50  -P -K -O        >> $psfile
b_spine_h  | gawk '{print $1,$2*0.3}' | psxy -R         -JX      -W3px/250/50/50  -P -K -O  -X1i  >> $psfile
b_spine_h  | gawk '{print $1,$2*1.0}' | psxy -R         -JX      -W3px/250/50/50  -P -K -O  -X1i  >> $psfile
b_spine_h  | gawk '{print $1,$2*0.5}' | psxy -R         -JX      -W3px/250/50/50  -P -K -O  -X1i  >> $psfile

b_spine_4w | gawk '{print $1,$2*1.0}' | psxy -R-2/5/0/6 -JX7i/3i  -Sc6p -Gblack -P -K -O -Bf1S -X-3i  >> $psfile
#b_spine_4w | gawk '{print $1,$2*0.8}' | psxy -R-2/5/0/6 -JX7i/3i  -Sc6p -Ggray -P -K -O    >> $psfile


# x,   y,   size,  angle,  fontno,  justify,  text
gawk 'BEGIN {
     print    -2.1,     -1.2,  "33     0       0      MC     t"
     print    -1.9,     -1.3,  "30     0       4      MC     k"
}' | pstext -R -JX -K -P -O  -N  >> $psfile
