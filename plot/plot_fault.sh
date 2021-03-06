#Plot xyz
psfile="falut.ps"

cgrid() {
  gawk 'BEGIN { 
              d2r=3.1415926/180 ;
              s=0*d2r;  d=0*d2r; 
              dx=4;  dy=4 ; nx=6;  ny=3 ;
              for(ix=0.5;ix<=nx;ix++){ 
                 for(iy=0.5;iy<=ny;iy++){
                    l=ix*dx;
                    w=iy*dy;
                    x=l*cos(s)-w*cos(d)*sin(s);
                    y=l*sin(s)+w*cos(d)*cos(s);
                    z=w*sin(d);
                    print x,y,z,0,dx*0.6,dy*0.6,"j";
                }
                print ">";
             }
      }' 
}
 
egrid1() {
  gawk 'BEGIN { 
              d2r=3.1415926/180 ;
              dx=0.8;   dy=0.8 ;  nx=30;   ny=15 ;
              s=0*d2r; 
              d=0*d2r; 
              for(ix=0.5;ix<=nx;ix++){ 
                 for(iy=0.5;iy<=ny;iy++){
                    l=ix*dx;
                    w=iy*dy;
                    x=l*cos(s)-w*cos(d)*sin(s)
                    y=l*sin(s)+w*cos(d)*cos(s)
                    z=w*sin(d);
                    print x,y,z,dx*0.1,"c" ;
                }
                print ">";
             }
      }'
}


egrid2() {
  gawk 'BEGIN { d2r=3.1415926/180 ;
              dx=0.8;   dy=0.8 ;  nx=30;   ny=15 ;
              s=0*d2r; 
              d=0*d2r; 
              for(ix=12/dx+0.5;ix<=16/dy;ix++){ 
                 for(iy=4/dx+0.5;iy<=8/dy;iy++){
                    l=ix*dx;
                    w=iy*dy;
                    x=l*cos(s)-w*cos(d)*sin(s)
                    y=l*sin(s)+w*cos(d)*cos(s)
                    z=w*sin(d);
                    print x,y,z,0,dx*0.6,dy*0.6,"j" ;
                }
                print ">";
             }
      }'
}


frame() {
 gawk 'BEGIN {
              d2r=3.1415926/180 ;
              s=0*d2r; d=0*d2r; 
              dx=4;  dy=4 ; nx=6;  ny=3 ;
              for(ix=0;ix<=nx;ix++){ 
                 for(iy=0;iy<=ny;iy++){
                    l=ix*dx;
                    w=iy*dy;
                    x=l*cos(s)-w*cos(d)*sin(s)
                    y=l*sin(s)+w*cos(d)*cos(s)
                    z=w*sin(d);
                    print x,y,z ;
                 }
                 print ">";
              }
              for(iy=0;iy<=ny;iy++){
                 for(ix=0;ix<=nx;ix++){ 
                    l=ix*dx;
                    w=iy*dy;
                    x=l*cos(s)-w*cos(d)*sin(s)
                    y=l*sin(s)+w*cos(d)*cos(s)
                    z=w*sin(d);
                    print x,y,z ;
                 }
                 print ">";
              }
      }' 
}

#          -Ba1:XLABEL:/a1:YLABEL:/a1:ZLABEL::."3-D PLOT":15 \

# dump plot.
psbasemap -R0/1/0/1  -Jx0.6c -Gwhite -P -K > $psfile

# plot
plot1(){
cgrid | psxyz -R0/24/0/12/0/18  -Jx0.6c -Jz1c -S\
          -Ggray \
          -E150/30 \
          -W1.5p,0/0/0 -P -N -K -O -m >> $psfile

egrid2 | psxyz -R  -Jx -Jz -S\
          -Ggray \
          -E150/30 \
          -W0.5p,0/0/0 -P -N -K -O -m >> $psfile

egrid1 | psxyz -R  -Jx -Jz -S \
          -Gblue \
          -E150/30 \
          -P -N -K -O -m >> $psfile

frame | psxyz -R  -Jx -Jz  \
          -Gblue \
          -E150/30 \
          -W2p,0/0/0 -P -N -K -O -m >> $psfile
}

plot1

