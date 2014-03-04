---
layout: page
title: "链接"
description: "some usefull links"
group: navigation
comments: false
htmlhead: 
widget: false
mathjax: true
toc: false
osmplayer: true
---

<script type="text/javascript">
  $(function() {
    $("#youtube").osmplayer({
      width: '100%',
      height: '439px',
      playlist: 'https://gdata.youtube.com/feeds/api/playlists/3936178A38BB5F87?v=2&prettyprint=true'
    });
  });
</script>
<video id="youtube"></video>

<br/>
<p>jojo 第一季</p>
<script type="text/javascript">
  $(function() {
    $("#jojo-sucht-das-gluck").osmplayer({
      playlist: '/video/deutsch-lernen/jojo-sucht-das-gluck/playlist.xml',
      height: '439px'
    });
  });
</script>
<div id="jojo-sucht-das-gluck"></div>

<br/>
<p>jojo 第二季</p>
<iframe src="http://vdt.dw.de/index.php?v=deu_zwojojo&amp;w=460&amp;id=2&amp;showtranscript=0" width="480" height="260" scrolling="no" marginheight="0" marginwidth="0" frameborder="0" style="border-bottom:solid 10px #ffffff;">
</iframe>

<iframe src="http://vdt.dw.de/index.php?v=deu_zwojojo&amp;w=460&amp;id=3&amp;showtranscript=0" width="480" height="260" scrolling="no" marginheight="0" marginwidth="0" frameborder="0" style="border-bottom:solid 10px #ffffff;" >
</iframe>


    filterc.c  {  doc/examples filterc.c
    void xapiir(  src/dbh/xapiir.c
       float    *data,
       int       nsamps,
       char     *aproto,
       double    trbndw,   /*chebyshev  only*/
       double    a,        /*chebyshev  only*/
       int       iord,     /*order*/
       char     *type,     /*LP HP BP BR*/
       double    flo,     
       double    fhi,
       double    ts,       /*sampling interval*/
       int       passes    /*1--forward filtering only forward and reverse */)  
       {   

            float sd[30], sn[30] ;
            design(  
                iord, strtemp1, strtemp2,
                a,          /* used only by chebyshev filters*/
                trbndw,     /*transition bandwidth as fraction of lowpass*/
                flo,  fhi,  /*freq low freq high*/
                ts,         /*time sample*/
                sn, sd,     /*intent(out)?*/
                &nsects );  /*intent(out)?*/

             void   @file src/dbh/apply.c
	     apply(float    *data,
      		int       nsamps,
      		int       zp,  /*  if passes ==1 false. esle zp true. */
      		float    *sn,  /*  Numerator polynomials for 2nd Order Sections */
      		float    *sd,  /*  Denominator polynomials for 2nd Order Sections */
      		int      nsects) ;
       }
    }


<script type="math/tex; mode=display">
 y_n = \sum_1^N \left(b_0 * x_n + b1 * x_{n-1} + b2 * x_{n-2} -  a1 * y_{n-1} - a2 * y_{n-2} \right)
</script>






