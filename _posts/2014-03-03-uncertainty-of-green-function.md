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

**forward modeling:**

<script type="math/tex; mode=display">
u_j\left(t\right)=\sum_{q=1}^2 \int_s G_{qj}^0\left(t,\xi\right)*\dot{D}_q^0\left(t,\xi\right)~d\xi +e_{bj}\left( t \right)
</script>

+ *j*: station index. 
+ *q*: slip component, along **strike** and **dip** direction.
+ integration in space :  $ \int_s ~d\xi $ 
+ integration in time :  convolution operator \* 

** suppose: **
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
\begin{aligned}

u_j\left(t\right)&=\sum_{q=1}^2 \int_s G_{qj}^0\left(t,\xi\right)*  \color{red}{ \dot{D}_q^0\left(t,\xi\right) } ~d\xi +e_{bj}\left( t \right)\\
                 &=\sum_{q=1}^2 \int_s G_{qj}^0\left(t,\xi\right)*  \color{red}{ \sum_{k=1}^K \sum_{l=1}^L a_{qkl}X_k\left(\xi\right)T_l\left(t-t_k\right)} ~d\xi +e_{bj}\left( t \right)\\
                 &=\sum_{q=1}^2  \sum_{k=1}^K \sum_{l=1}^L a_{qkl} T_l\left(t-t_k\right) * \color{red}{ \int_s  X_k\left(\xi\right)G_{qj}^0\left(t,\xi\right) ~d\xi} +e_{bj}\left( t \right)\\
                 &=\sum_{q=1}^2 \sum_{k=1}^K \sum_{l=1}^L a_{qkl} T_l \left( t - t_k \right) * \color{red}{ g_{qkj}^0\left( t \right)} +e_{bj}\left( t \right) \\

\end{aligned}
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
           \bbox[#fee]{  \sum_{l=1}^L B\left(t\right)*a_{qkl}T_l\left(t-t_k\right)}  * \color{red}{ \int_s X_k \left( \xi \right)   \delta G_{qj}\left(t,\xi\right) ~d\xi }
           + B\left(t\right)*e_{bj}\left( t \right)} \\
	  &=B\left(t\right)  * \sum_{q=1}^2 \color{red}{ \int_s \sum_{k=1}^K 
            \sum_{l=1}^L   a_{qkl} X_k \left( \xi \right) T_l\left(t-t_k\right) * \delta G_{qj}\left(t,\xi\right) ~d\xi }
           + B\left(t\right)*e_{bj}\left( t \right) \\
	  &=B\left(t\right)  * \sum_{q=1}^2 \color{red}{ \int_s \dot{D}_q^0\left(t,\xi\right) * \delta G_{qj}\left(t,\xi\right) ~d\xi }
           + B\left(t\right)*e_{bj}\left( t \right) \\
\end{aligned}
</script>

---





---
*Note:*
cut,  [window function](http://en.wikipedia.org/wiki/Window_function), [appending $N_s-1$ ].  convolution, 

## Propagation of uncertainty 

**[variance-covariance matrix](http://en.wikipedia.org/wiki/Variance-covariance_matrix) **

<script type="math/tex; mode=display">
\begin{aligned}

\Sigma_{ij} &= \mathrm{cov}(X_i, X_j) = \mathrm{E}\begin{bmatrix}
(X_i - \mu_i)(X_j - \mu_j)\\
\end{bmatrix} \\

&= \begin{bmatrix}
 \mathrm{E}[(X_1 - \mu_1)(X_1 - \mu_1)] & \mathrm{E}[(X_1 - \mu_1)(X_2 - \mu_2)] & \cdots & \mathrm{E}[(X_1 - \mu_1)(X_n - \mu_n)] \\ \\
 \mathrm{E}[(X_2 - \mu_2)(X_1 - \mu_1)] & \mathrm{E}[(X_2 - \mu_2)(X_2 - \mu_2)] & \cdots & \mathrm{E}[(X_2 - \mu_2)(X_n - \mu_n)] \\ \\
 \vdots & \vdots & \ddots & \vdots \\ \\
 \mathrm{E}[(X_n - \mu_n)(X_1 - \mu_1)] & \mathrm{E}[(X_n - \mu_n)(X_2 - \mu_2)] & \cdots & \mathrm{E}[(X_n - \mu_n)(X_n - \mu_n)]
\end{bmatrix} \\

&= \begin{pmatrix}
   \sigma^2_1 & \text{cov}_{12} & \text{cov}_{13} & \cdots \\
   \text{cov}_{12} & \sigma^2_2 & \text{cov}_{23} & \cdots\\
   \text{cov}_{13} & \text{cov}_{23} & \sigma^2_3 & \cdots \\
   \vdots & \vdots & \vdots & \ddots \\
\end{pmatrix} \\


\end{aligned}
</script>

<script type="math/tex; mode=display">
\begin{aligned}
f_k &= \sum_i^n A_{ki} x_i  , (k=1\dots m); \mathbf{f} =\mathbf{A_{mn}x}  \\
\Sigma^f_{ij}&= \sum_k^n \sum_\ell^n A_{ik} \Sigma^x_{k\ell} A_{j\ell} \\
\Sigma^f&=\mathbf{A} \Sigma^x \mathbf{A}^\top \\
\Sigma^f_{ij}&= \sum_k^n  A_{ik} \left(\sigma^2_k \right)^x A_{jk}
\end{aligned}
</script>



**[Discrete convolution](http://en.wikipedia.org/wiki/Toeplitz_matrix)**

<script type="math/tex; mode=display">

        y = h \ast x =
            \begin{bmatrix}
                h_1 & 0 & \ldots & 0 & 0 \\
                h_2 & h_1 & \ldots & \vdots & \vdots \\
                h_3 & h_2 & \ldots & 0 & 0 \\
                \vdots & h_3 & \ldots & h_1 & 0 \\
                h_{m-1} & \vdots & \ldots & h_2 & h_1 \\
                h_m & h_{m-1} & \vdots & \vdots & h_2 \\
                0 & h_m & \ldots & h_{m-2} & \vdots \\
                0 & 0 & \ldots & h_{m-1} & h_{m-2} \\
                \vdots & \vdots & \vdots & h_m & h_{m-1} \\
                0 & 0 & 0 & \ldots & h_m
            \end{bmatrix}
            \begin{bmatrix}
                x_1 \\
                x_2 \\
                x_3 \\
                \vdots \\
                x_n
            \end{bmatrix}
</script>

## [Bézier curve](http://en.wikipedia.org/wiki/B%C3%A9zier_curve)
