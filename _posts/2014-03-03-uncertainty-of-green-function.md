---
layout: post
title: "uncertainty of Green function"
category: "uncategorized"
tags: info
 
toc:
widget:
mathjax: true
prettify: 
htmlhead: '<style> div.MathJax_Display {
overflow-x: auto;
overflow-y: hidden;
} </style>'
---
{% include JB/setup %}
 
##summary

+ the soultion was independent of the initial values of the model parameters.
+ more stronger smoothing constraint. more plausible slip distribution can be obtained, but then the moment-rate function becomes even smoother.
+ high-frequency components were well reproduced only by the new formulation.


<script type="math/tex; mode=display">
min: \left(d-Ha\right)^t E^{-1} (d-Ha)
</script>

<!--end_excerpt-->

## mathematical formulation

**GreenFunction.**

<script type="math/tex; mode=display">
u_j\left(t\right)=\sum_{q=1}^2 \int_s G_{qj}^0\left(t,\xi\right)*\dot{D}_q^0\left(t,\xi\right)~d\xi +e_{bj}\left( t \right)
</script>

+ *j*: station index. 
+ *q*: slip component, along **strike** and **dip** direction.
+ integration in space :  $ \int_s ~d\xi $ 
+ integration in time :  convolution operator \* 

<script type="math/tex; mode=display">
\dot{D}_q^0\left(t,\xi\right) \thickapprox \sum_{k=1}^K \sum_{l=1}^L a_{qkl}X_k\left(\xi\right)T_l\left(t-t_k\right)
</script>

+ $ X_k $ : basis functions for space. 
+ $ T_l $ : basis functions for time    
+ $ t_k $ : arrival time of rupture front at grid k. 
+ Note : we just convert to estimating $ a_{qkl} $ 
         there is no need to be orthogonal basis, here adopt Bézier basis functions. 
         so the shape can be control by neibourhood grid which favor applying smoothing constrians.

---

<script type="math/tex; mode=display">
u_j\left(t\right)=\sum_{q=1}^2 \sum_{k=1}^K \sum_{l=1}^l a_{qkl} T_l \left( t - t_k \right) * g_{qkj}^0\left( t \right) +e_{bj}\left( t \right)
</script>

with 
<script type="math/tex; mode=display">
 g_{qkj}^0\left( t \right) = \int_s X_k \left( \xi \right) G_{qj}^0\left(t,\xi\right) ~d\xi
</script>

suppose: 
<script type="math/tex; mode=display">
g_{qkj}^0\left( t \right) = g_{qkj}  \left( t \right) + \delta g_{qkj} \left( t \right) 
</script>

<script type="math/tex; mode=display">
\begin{aligned}
u_j \left( t \right) & = \sum_{q=1}^2 \sum_{k=1}^K 
                       \left[  
                          \sum_{l=1}^L \bbox[#eee]{ T_l\left(t-t_k\right)*g_{qkj}\left( t \right) } \color{red}{ a_{qkl}}    + 
                          \bbox[#eee]{  \sum_{l=1}^L a_{qkl}T_l\left(t-t_k\right)}  * \color{red}{ \delta g_{qkj} \left( t \right) }
                       \right] 
                     + e_{bj}\left( t \right) \\
		& = \sum_{q=1}^2 \sum_{k=1}^K 
                       \left[  
                          \sum_{l=1}^L \bbox[#eee]{ \widetilde{H}_{qklj}\left(t\right) }  \color{red}{ a_{qkl}}    + 
                          \bbox[#eee]{  \widetilde{P}_{qk}\left(t,a_{qkl}\right)} * \color{red}{ \delta g_{qkj} \left( t \right) }
                       \right] 
                     + e_{bj}\left( t \right)
\end{aligned}
</script>

**apply filter $B(t)$ **

<script type="math/tex; mode=display">
\begin{aligned}
d_j \left( t \right) & = B\left(t\right) * u_j\left( t\right) \\
 		     & = \sum_{q=1}^2 \sum_{k=1}^K 
                       \left[  
                          \sum_{l=1}^L \bbox[#eee]{ B\left(t\right)*T_l\left(t-t_k\right)*g_{qkj}\left( t \right) } \color{red}{ a_{qkl}}    + 
                          \bbox[#eee]{  \sum_{l=1}^L B\left(t\right)*a_{qkl}T_l\left(t-t_k\right)}  * \color{red}{ \delta g_{qkj} \left( t \right) }
                       \right] 
                     + B\left(t\right)*e_{bj}\left( t \right) \\
		     & = \sum_{q=1}^2 \sum_{k=1}^K 
                       \left[  
                          \sum_{l=1}^L \bbox[#eee]{ B\left(t\right)*\widetilde{H}_{qklj}\left(t\right) }  \color{red}{ a_{qkl}}    + 
                          \bbox[#eee]{  B\left(t\right)*\widetilde{P}_{qk}\left(t,a_{qkl}\right)} * \color{red}{ \delta g_{qkj} \left( t \right) }
                       \right] 
                     + B\left(t\right)*e_{bj}\left( t \right) \\
		     & = \sum_{q=1}^2 \sum_{k=1}^K 
                       \left[  
                          \sum_{l=1}^L \bbox[#eee]{ H_{qklj}\left(t\right) }  \color{red}{ a_{qkl}}    + 
                          \bbox[#eee]{  P_{qk}\left(t,a_{qkl}\right)} * \color{red}{ \delta g_{qkj} \left( t \right) }
                       \right] 
                     + B\left(t\right)*e_{bj}\left( t \right)
		
\end{aligned}
</script>

---
<script type="math/tex; mode=display">
\begin{aligned}
d_j &= H_ja+e_j\left(a\right) \\
with &: \\
e_j(a) &= \sum_{q=1}^2 \sum_{k=1}^K P_{qkj}\left(a\right)  \delta g_{qkj} \left( t \right) + B_je_{bj}
\end{aligned}
</script>
---
<script type="math/tex; mode=display">
\begin{aligned}
\widetilde{e}_j(t;a) & = \sum_{q=1}^2 \sum_{k=1}^K 
           \bbox[#eee]{  P_{qk}\left(t,a_{qkl}\right)} * \color{red}{ \delta g_{qkj} \left( t \right) }
           + B\left(t\right)*e_{bj}\left( t \right) \\
	  & = \sum_{q=1}^2 \sum_{k=1}^K 
            \bbox[#eee]{  B\left(t\right)*\widetilde{P}_{qk}\left(t,a_{qkl}\right)} * \color{red}{ \delta g_{qkj} \left( t \right) }
          + B\left(t\right)*e_{bj}\left( t \right) \\
          &=\bbox[#eee]{ \sum_{q=1}^2 \sum_{k=1}^K 
            \bbox[#fee]{  \sum_{l=1}^L B\left(t\right)*a_{qkl}T_l\left(t-t_k\right)}  * \color{red}{ \delta g_{qkj} \left( t \right) }
           + B\left(t\right)*e_{bj}\left( t \right)} \\
	  &=\bbox[#eee]{\sum_{q=1}^2 \sum_{k=1}^K 
           \bbox[#fee]{  \sum_{l=1}^L B\left(t\right)*a_{qkl}T_l\left(t-t_k\right)}  * \color{red}{ \int_s X_k \left( \xi \right)   \delta G_{qj}^0\left(t,\xi\right) ~d\xi }
           + B\left(t\right)*e_{bj}\left( t \right)} \\
	  &=B\left(t\right)  * \sum_{q=1}^2 \color{red}{ \int_s \sum_{k=1}^K 
            \sum_{l=1}^L   a_{qkl} X_k \left( \xi \right) T_l\left(t-t_k\right) * \delta G_{qj}^0\left(t,\xi\right) ~d\xi }
           + B\left(t\right)*e_{bj}\left( t \right) \\
	  &=B\left(t\right)  * \sum_{q=1}^2 \color{red}{ \int_s \dot{D}_q^0\left(t,\xi\right) * \delta G_{qj}^0\left(t,\xi\right) ~d\xi }
           + B\left(t\right)*e_{bj}\left( t \right) \\
\end{aligned}
</script>

---




