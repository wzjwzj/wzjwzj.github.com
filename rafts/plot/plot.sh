psfile=a.ps

rm .gmt_bb_info  .gmtcommands4  .gmtdefaults4

psbasemap -R0/6/0/6 -Jx1i  -B -P -K > $psfile
psbasemap -R0/1/0/1 -Jx    -Y5i  -Gp800/29:FgrayBwhite -P -K -B -O >> $psfile
psbasemap -R0/1/0/1 -Jx    -Y-1i -X1i -Gp800/29:FblackBwhite -P -K -B -O >> $psfile
for i in `seq 4` ; do 
  psbasemap -R0/1/0/1 -Jx    -Y-1i -X1i -Gp800/29:FgrayBwhite -P -K -B -O >> $psfile
done

printf  "1 3\n1 6\n>\n2 3\n2 6\n>\n3 0\n3 6\n>\n0 3\n6 3\n>\n0 4\n3 4\n>\n0 5\n3 5\n" | psxy -R0/6/0/6 -Jx1i -B -P -K -O -m -X-5i  >> $psfile

psbasemap -R0/0.2/0/6 -Jx1i -X6.5i -P -K -O -B >> $psfile
printf  "0 1\n0.2 1\n>\n0 2\n0.2 2\n>\n0 3\n0.2 3\n>\n0 4\n0.2 4\n>\n0 5\n0.2 5\n>\n0 6\n0.2 6\n" | psxy -R -Jx -B -P -K -O -m  >> $psfile

psbasemap -R0/6/0/0.2 -Jx1i -X-6.5i -Y6.5i -P -K -O -B >> $psfile
printf  "1 0 \n1 0.2\n>\n2 0\n2 0.2\n>\n3 0\n3 0.2\n>\n4 0\n4 0.2\n>\n5 0\n5 0.2\n>\n6 0\n6 0.2\n" | psxy -R -Jx -B -P -K -O -m  >> $psfile

psbasemap -R0/1/0/0.2 -Jx1i -X1i -P -K -O -B -Gp800/29:FblackBwhite >> $psfile
psbasemap -R0/0.2/0/1 -Jx1i -X5.5i -Y-2.5i -P -K -O -B -Gp800/29:FblackBwhite >> $psfile



psxy -R0/2/0/2 -Jx3i -Sv -Y-0.2i  -P -K -O -m  << EOF >> $psfile
1 1 0   3 
1 1 -90 3 
EOF

# bspine

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
		a=0.7;
		b=0.8;
		c=0.6;
		d=0.0;
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

#gmtset FRAME_WIDTH = 2c FRAME_PEN  = 3p TICK_LENGTH = 1c TICK_PEN = 2p

b_spine_h  | gawk '{print $1,$2*0.56}' | psxy -R-2/2/0/6 -JX2i/1i -W1px/250/50/50  -P -K -O  -X2i -Y0.2i      >> $psfile
b_spine_h  | gawk '{print $1,$2*0.8}'  | psxy -R         -JX      -W1px/250/50/50  -P -K -O  -X0.5i  >> $psfile
b_spine_h  | gawk '{print $1,$2*0.51}' | psxy -R         -JX      -W1px/250/50/50  -P -K -O  -X0.5i  >> $psfile
b_spine_4w | gawk '{print $1,$2*0.75}' | psxy -R-2/4/0/6 -JX3i/1i  -Sc2p -Gblack -P -K -O -Bf1S -X-1i  >> $psfile


#Plot xyz

cgrid() {
  gawk 'BEGIN { 
              d2r=3.1415926/180 ;
              s=0*d2r;  d=0*d2r; 
              dx=6;  dy=4 ; nx=6;  ny=5 ;
              for(ix=0.5;ix<=nx;ix++){ 
                 for(iy=0.5;iy<=ny;iy++){
                    l=ix*dx;
                    w=iy*dy;
                    x=l*cos(s)-w*cos(d)*sin(s);
                    y=l*sin(s)+w*cos(d)*cos(s);
                    z=w*sin(d);
                    print x,y,z,0,dx*0.2,dy*0.2,"j";
                }
                print ">";
             }
      }' 
}
 
# plot
cgrid | psxyz -R0/24/0/12/0/18  -Jx0.2c -Jz1c -S  -E0/90 -W1.5p,0/0/0 -P -N -K -O -m -Gwhite -Y-2i -X1i -W10/10/10 >> $psfile
cgrid | psxyz -R0/24/0/12/0/18  -Jx0.2c -Jz1c -S  -E0/90 -W1.5p,0/0/0 -P -N -K -X-0.2i -Y-0.2i -O -m -Gwhite -W10/10/10 >> $psfile
cgrid | psxyz -R0/24/0/12/0/18  -Jx0.2c -Jz1c -S  -E0/90 -W1.5p,0/0/0 -P -N -K -X -Y -O -m -Gwhite -W10/10/10 >> $psfile

cgrid | psxyz -R0/24/0/12/0/18  -Jx0.2c -Jz1c -S  -E0/90 -W1.5p,0/0/0 -P -N -K -O -m -Gwhite -X1i -Y-0.7i -W10/10/10 >> $psfile
cgrid | psxyz -R0/24/0/12/0/18  -Jx0.2c -Jz1c -S  -E0/90 -W1.5p,0/0/0 -P -N -K -X-0.2i -Y-0.2i -O -m -Gwhite -W10/10/10>> $psfile
cgrid | psxyz -R0/24/0/12/0/18  -Jx0.2c -Jz1c -S  -E0/90 -W1.5p,0/0/0 -P -N -K -X -Y -O -m -Gwhite -W1/1/1>> $psfile

# x,   y,   size,  angle,  fontno,  justify,  text
printf  "1   1  30     0       0      MC     K\n" | pstext -R0/2/0/2 -JX1i -K -P -O  -N -X0i -Y0i  >> $psfile
printf  "1   1  30     0       0      MC     L\n" | pstext -R0/2/0/2 -JX1i -K -P -O  -N -X-1.2i -Y3.5i  >> $psfile
printf  "1   1  30     0       0      MC     q\n" | pstext -R0/2/0/2 -JX1i -K -P -O  -N  -Y2i -X1.0i >> $psfile

