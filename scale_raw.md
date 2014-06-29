---
layout: page
title: "Scaling Laws  (to be continued)"
description: "Scaling Laws"
comments: false
mathjax: true
---

to be continued ...

<div>$$
M_\mathrm{w} = {\frac{2}{3}}\log_{10}(M_0) - 6.0 \quad 
N\cdot m\\
\qquad\qquad= {\frac{2}{3}}\log_{10}(M_0) - 10.7 \quad dyne\cdot cm \\
1\,dyne=10^{-5}\,N  \qquad
1\,N\cdot m = 10^7\,dyne\cdot cm \\
$$</div>

<div class="mag-mom">
  Mag-or-Mom(N&middot;m): <input type="text" name="mag-mom" />     <input type="button" name="scale-raw" value="calc"/><br/>
  Mag:                        <input type="text" name="mag"/><br/>
  Mom:                        <input type="text" name="mom"/>N&middot;m
</div>


<div class="scale-raw">
  $M_o: dyne \cdot cm $
  <br/>
  <div class="area">$A=2.23\times 10^{-15} \times M_0^{2/3}$  <input type="text" name="area"/></div>
  <div class="dislocation">$\Delta \overline u=1.56\times 10^{-7}\times M_0^{1/3}$ <input type="text" name="dislocation"/> </div> 
  <div class="duration">$T_R=2.03\times 10^{-9}\times M_0^{1/3}$  <input type="text" name="duration"/></div>
  <div class="" > Asperities:  $22\%$ </div>
  <div class=""> Asperities contrast: $2.01$ </div>
  <br/>
  $L,W: km,\quad \Delta \overline u: cm,\quad M_o: N \cdot m $
  <br/>
  <div class="strike-slip">
    <div class="length">$\log\,L=0.36\,\log\,M_0-5.15 $                    <input type="text" name="length"/> </div>
    <div class="width">$\log\,W=0.09\,\log\,M_0-0.54 $                     <input type="text" name="width"/> </div>
    <div class="dislocation">$\log\,\Delta \overline u =0.55\,\log\,M_0-8.68 $    <input type="text" name="dislocation"/> </div>
  </div>
  <br/>
  <div class="dip-slip">
    <div class="length">$\log\,L=0.38\,\log\,M_0-5.71 $                       <input type="text" name="length"/> </div>
    <div class="width">$\log\,W=0.33\,\log\,M_0-4.93 $                        <input type="text" name="width"/> </div>
    <div class="dislocation">$\log\,\Delta \overline u =0.29\,\log\,M_0-3.88 $       <input type="text" name="dislocation"/>  </div>
  </div>
  <br/>
  <div class="stress-drop">
    <div class="cirlular-crack-model">$\Delta \sigma = \frac{7}{16}\frac{M_0}{r^3}\quad$<input type="text" name="sd1" style="width:250px"/></div>
    <div class="corner-frequency">$f_c=\frac{2.34}{2\pi}\frac{\beta}{r}$</div>
    <div class="stress-drop">$\Delta \sigma = 8.47 M_0 \left(\frac{f_c}{\beta}\right)^3$</div>
    <div class="stress-drop-div-apparent-stress">$\frac{\Delta \sigma}{\tau_a}=4.3$</div>
  </div>
</div>

<div>$S=\frac{shear\,stress}{shear\,strain}=\frac{\frac{F}{A}}{\frac{\Delta x}{L}}=\frac{FL}{A \Delta X}$</div>

<script>
   $("input[name='scale-raw']").click( function(){
            var mag = 1.0*$("input[name='mag-mom']").val();
            var mom = mag ;
            var invlog10=1/Math.log(10);
            if( mag < 10.0 ){
                mom = Math.pow(10,(mag+6.0)*1.5); 
            }else{
                mag = Math.log(mom)/Math.log(10)*2.0/3-6.0;
            }
            mom1=mom*1.0E7;
            $("input[name='mag']").val( mag.toFixed(2) );
            $("input[name='mom']").val( mom.toExponential(2) );
            
            $("div.scale-raw>div.area        input[name='area']"       ).val((2.23e-15*Math.pow(mom1,2.0/3.0)).toFixed(2)+' km^2');
            $("div.scale-raw>div.dislocation input[name='dislocation']").val(( 1.56e-7*Math.pow(mom1,1.0/3.0)).toFixed(2)+' cm');
            $("div.scale-raw>div.duration    input[name='duration']"   ).val(( 2.03e-9*Math.pow(mom1,1.0/3.0)).toFixed(2)+' sec');
            
            $("div.scale-raw>div.strike-slip>div.length input[name='length']"           ).val(Math.pow(10,0.36*invlog10*Math.log(mom)-5.15).toFixed(2)+' km');
            $("div.scale-raw>div.strike-slip>div.width  input[name='width']"            ).val(Math.pow(10,0.09*invlog10*Math.log(mom)-0.54).toFixed(2)+' km');
            $("div.scale-raw>div.strike-slip>div.dislocation  input[name='dislocation']").val(Math.pow(10,0.55*invlog10*Math.log(mom)-8.68).toFixed(2)+' cm');

            $("div.scale-raw>div.dip-slip>div.length input[name='length']"           ).val(Math.pow(10,0.38*invlog10*Math.log(mom)-5.71).toFixed(2)+' km');
            $("div.scale-raw>div.dip-slip>div.width  input[name='width']"            ).val(Math.pow(10,0.33*invlog10*Math.log(mom)-4.93).toFixed(2)+' km');
            $("div.scale-raw>div.dip-slip>div.dislocation  input[name='dislocation']").val(Math.pow(10,0.29*invlog10*Math.log(mom)-3.88).toFixed(2)+' cm');
            
            var area=Math.pow(10,0.38*invlog10*Math.log(mom)-5.71)*Math.pow(10,0.33*invlog10*Math.log(mom)-4.93)*1e6;
            var sd=3.0e3*Math.pow(10,0.29*invlog10*Math.log(mom)-3.88)/Math.sqrt(area/Math.PI);
            $("div.scale-raw>div.stress-drop>div.cirlular-crack-model input[name='sd1']").val((0.4375*mom/Math.pow(area/Math.PI, 3/2)*1e-5).toFixed(2)+' bar  '+sd.toFixed(2)+' bar   '+  (7000/(16*Math.pow(22.3/Math.PI,3/2))).toFixed(2) + 'bar' )
   });
</script>

