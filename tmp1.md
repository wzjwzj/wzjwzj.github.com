---
layout: page
title: "链接"
description: "some usefull links"
group: navigation
comments: false
htmlhead: '.MathJax_Display {text-align: left !important;}'
widget: false
toc: false
osmplayer: true
mathjax: true
---



<script type="math/tex; mode=display">
\begin{aligned}
 
 b_j,0 \left( t \right) & : =   \begin{cases} 
 \begin{aligned}
 1 & \quad \quad t_j < t < t_{j+1} \\   
 0 &  
 \end{aligned}
 \end{cases}  \\

 b_0,1 \left( t \right) & : =   \begin{cases} 
 \begin{aligned}
 & \frac{ t-t_0 }{ t_1 - t_0 } b_{0,0} \left( t \right) + \frac{ t_2-t }{ t_2 - t_1 } b_{1,0} \left( t \right)  \quad \quad t_0 < t < t_2 \\
  & \quad 0 
 \end{aligned}
 \end{cases}  \\

 b_1,1 \left( t \right) & : =   \begin{cases} 
 \begin{aligned}
 & \frac{ t-t_1 }{ t_2 - t_1 } b_{1,0} \left( t \right) + \frac{ t_3-t }{ t_3 - t_2 } b_{2,0} \left( t \right)  \quad \quad t_1 < t < t_3 \\
  & \quad 0 
 \end{aligned}
 \end{cases}  \\

 b_0,2 \left( t \right) & : =   \begin{cases} 
 \begin{aligned}
 & \frac{ t-t_0 }{ t_2 - t_0 } b_{0,1} \left( t \right) + \frac{ t_3-t }{ t_3 - t_1 } b_{1,1} \left( t \right)  \quad \quad t_0 < t < t_3 \\
  & \quad 0 
 \end{aligned}
 \end{cases}  \\

 b_1,2 \left( t \right) & : =   \begin{cases} 
 \begin{aligned}
 & \frac{ t-t_1 }{ t_3 - t_1 } b_{1,1} \left( t \right) + \frac{ t_4-t }{ t_4 - t_2 } b_{2,1} \left( t \right)  \quad \quad t_1 < t < t_4 \\
  & \quad 0 
 \end{aligned}
 \end{cases}  \\

 ... \\

 b_j,n \left( t \right) & : =
 \frac{ t-t_j }{ t_{j+n} - t_j } b_{j,n-1} \left( t \right) + \frac{ t_{j+n+1}-t }{ t_{j+n+1} - t_{j+1} } b_{j+1,n-1} \left( t \right) \\

\end{aligned}
</script>

