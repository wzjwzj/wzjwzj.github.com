psfile=a.ps

rm -f .gmt*

l=6
w=6

nw=8
nl=10

#makecpt  -Cgebco -T1/16/1 -D -I -N > color.cpt 
makecpt  -Cgray  -T1/16/1 -D -I -N  > color.cpt 
#makecpt -Chot   -T1/16/1 -D -I -N > color.cpt 

gawk -v l=$l -v w=$w -v nw=$nw -v nl=$nl ' 
  function abs(x) {
    return ((x<0.0)?-x:x);
  }
  BEGIN  {  
    k=nw*nl;
    dw=w/k;dl=l/k; 
    for(iw=1;iw<=nw;iw++) 
       for(il=1;il<=nl;il++) { 
          for(jw=1;jw<=nw;jw++) 
             for(jl=1;jl<=nl;jl++) { 
                kw= (iw-1)*nl+il ;
                kl= (jw-1)*nl+jl ;
                pw=( kw -0.5 )*dw; 
                pl=( kl -0.5 )*dl;
                if(  abs(iw-jw)<4 )
                  print pl,pw, "100" ,"0",dl "i",dw "i" ;   

                if(  abs(iw-jw)<4  &&  abs(il-jl)<4 )
                   print pl,pw, (4-abs(iw-jw))*(4-abs(il-jl)) ,"0",dl "i",dw "i" ;   
            }
      } 
  }' | psxy -R0/$l/0/$w -Jx1i/-1i  -B  -Sj -N  -Ccolor.cpt  -K -P  > $psfile


pstext -R -Jx -K -P -O -H1 -N << EOF >> $psfile
x y size angle  fontno  justify text
0 5.75 20   0      0       0        NW=$nw; NL=$nl; K=NW*NL
EOF
