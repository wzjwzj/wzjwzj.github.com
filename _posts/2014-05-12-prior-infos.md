---
layout: post
title: "prior knowledge"
category: "uncategorized"
tags: info
 
toc: true
widget:
mathjax: true
prettify:
htmlhead:
---
{% include JB/setup %}
 

## summary

<div>$$
\begin{aligned}
\dot{D}_q^0\left(t,\xi\right) \thickapprox \sum_{k=1}^K \sum_{l=1}^L a_{qkl}  X_k\left(\xi\right) & T_l\left(t-t_k\right) \quad;\quad a_{qkl}~\sim~\overline{D} \\
\int X_k\left(\mathbf{\xi}\right) ~d\mathbf{\xi} =  \Delta \xi_1 \Delta \xi_2 \quad  &; \quad \int  ~ T_l\left(t-t_k\right) ~  ~dt = 1
\end{aligned}
$$</div>
<!--end_excerpt-->


<div  style="width:100% ; height:174px;overflow-x:auto;overflow-y:hidden">
 <div style="width:460px; height:154px;margin:0 auto;">
 <div style="width:360px; height:75px;float:left;">$$ m(\xi)=\int_t \sum_{k=1}^K \sum_{l=1}^L a_{qkl}X_k\left(\xi\right)T_l\left(t-\tau_k\right)~dt \iff $$ </div> 
 <div style="width:100px; height:75px;float:right;background-image:url(/images/figures/2014041604.jpg);-moz-background-size:100% 100%;background-size:100% 100%;"></div>
 <div style="width:360px; height:75px;float:left;">$$ m(t)=\int_\Sigma \sum_{k=1}^K \sum_{l=1}^L a_{qkl}X_k\left(\xi\right)T_l\left(t-\tau_k\right)~d\xi \iff $$ </div> 
 <div style="width:100px; height:75px;float:right;background-image:url(/images/figures/2014041605.jpg);-moz-background-size:100% 100%;background-size:100% 100%;"></div>
 </div>
</div>


###  Taylor expansion
<div>$$
\begin{aligned}
f(\mathbf{x}+\Delta\mathbf{x})& \approx f(\mathbf{x}) + J(\mathbf{x})\Delta \mathbf{x} +\frac{1}{2} \Delta\mathbf{x}^\mathrm{T} H(\mathbf{x}) \Delta\mathbf{x}\\
&  \mathbf{J}\,\textit { is the Jacobian matrix }\\
&  \mathbf{H}\,\textit { is the Hessian matrix }  \\
\end{aligned}
$$</div>

###  Hessian matrix
<div>$$
\begin{aligned}
H(f) &= \begin{bmatrix}
\dfrac{\partial^2 f}{\partial x_1^2} & \dfrac{\partial^2 f}{\partial x_1\,\partial x_2} & \cdots & \dfrac{\partial^2 f}{\partial x_1\,\partial x_n} \\[2.2ex]
\dfrac{\partial^2 f}{\partial x_2\,\partial x_1} & \dfrac{\partial^2 f}{\partial x_2^2} & \cdots & \dfrac{\partial^2 f}{\partial x_2\,\partial x_n} \\[2.2ex]
\vdots & \vdots & \ddots & \vdots \\[2.2ex]
\dfrac{\partial^2 f}{\partial x_n\,\partial x_1} & \dfrac{\partial^2 f}{\partial x_n\,\partial x_2} & \cdots & \dfrac{\partial^2 f}{\partial x_n^2}
\end{bmatrix}.
\end{aligned}
$$</div>

### Roughness

<div>$$
 \vec{f}=\begin{pmatrix}{f_1(\xi_1,\xi_2) \\ f_2(\xi_1,\xi_2) }\end{pmatrix} \iff 
 \mathbf{H}\vec{f}=\begin{pmatrix}{\mathbf{H}f_1(\xi_1,\xi_2) \\ \mathbf{H}f_2(\xi_1,\xi_2) }\end{pmatrix} = \mathbf{0} \\
 ~\\
 \begin{bmatrix}
   \dfrac{\partial^2 f_1}{\partial \xi_1^2} & \dfrac{\partial^2 f_1}{\partial \xi_1\,\partial \xi_2}  \\
   \dfrac{\partial^2 f_1}{\partial \xi_2\,\partial \xi_1} & \dfrac{\partial^2 f_1}{\partial \xi_2^2}  \\
 \end{bmatrix} = \mathbf{0}; \quad
 \begin{bmatrix}
   \dfrac{\partial^2 f_2}{\partial \xi_1^2} & \dfrac{\partial^2 f_2}{\partial \xi_1\,\partial \xi_2}  \\
   \dfrac{\partial^2 f_2}{\partial \xi_2\,\partial \xi_1} & \dfrac{\partial^2 f_2}{\partial \xi_2^2}  \\
 \end{bmatrix} = \mathbf{0} \\
 ~ \\
 \textit{suppose}\, f_1,\,f_2\,\textit{independent, so we can quantify as follows(not unique)} \\
 ~ \\
\iff  \left[
    \left(\dfrac{\partial^2 f_j}{\partial \xi_1^2}\right)^2  + \left(\dfrac{\partial^2 f_j}{\partial \xi_1\,\partial \xi_2}\right)^2  +
    \left(\dfrac{\partial^2 f_j}{\partial \xi_2\,\partial \xi_1}\right)^2  + \left(\dfrac{\partial^2 f_j}{\partial \xi_2^2}\right)^2    
 \right] = 0 \\
 ~ \\
 ~ \\
\mathbb{R}_\xi f_j(\xi) \overset{def}{\iff} \left(\frac{\partial^2 f_j(\xi)}{\partial \xi^2}\right)^2 \overset{def}{\iff} \left[\left(\frac{\partial^2 f_j(\xi)}{\partial \xi^2_1}\right)^2+2\left(\frac{\partial^2 f_j(\xi)}{\partial\xi_1\partial\xi_2}\right)^2+\left(\frac{\partial^2 f_j(\xi) }{\partial \xi^2_2}\right)^2\right]   \\
\mathbb{R}_\tau f_j(t) \overset{def}{\iff} \left(\frac{\partial^2 f_j(t)}{\partial t^2}\right)^2   \\
\textit {if base function of time choose trianle instead 4-oder B-spine, then: }\\
\mathbb{R}_\tau f_j(t) \overset{def}{\iff} \left(\frac{\partial f_j(t)}{\partial t}\right)^2   \\
$$</div>



## prior constraints


### scheme 1: 

<div>$$
\begin{aligned}
\nabla^2 \dot{D}(t,\xi)+e_{\xi}                        =0 \overset{1}{\iff} & \mathbf{S_{\xi }a+e_{\xi }=0} \overset{2}{\iff} \mathbf{G_{\xi }=S_{\xi }^TS_{\xi }} ; \quad \mathbf{G}_{\xi},\mathbf{S}_\xi: M \times M\\
\frac{\partial^2}{\partial t^2}\dot{D}(t,\xi)+e_{\tau} =0 \iff & \mathbf{S_{\tau}a+e_{\tau}=0} \iff \mathbf{G_{\tau}=S_{\tau}^TS_{\tau}} ; \quad \mathbf{G}_{\tau}, \mathbf{S}_\tau: M \times M \\
\end{aligned}
$$</div>

<br/>

<div>$$
\begin{aligned}
\xi &= \xi^1 ~,~ \xi^2 \cdots \xi^k \cdots \xi^{k-1} ~,~ \xi^K \quad ?   \\
  t &=   t^1 ~,~ ~ t^2   ~ \cdots  t^l ~ \cdots ~   t^{l-1} ~,~    t^L \quad ?
\end{aligned}
$$</div>

<br/>


#### scheme 1.1
apply $\nabla^{2} \,, \frac{\partial^{2}}{\partial t^{2}}$ on $\dot D$

#### scheme 1.2
apply $\nabla^{2} \,, \frac{\partial^{2}}{\partial t^{2}}$ on $m(\xi ),m(t)$ instead of $\dot D$

<div>$$
\begin{aligned}
& \qquad \dot{D}_q^0\left(t,\xi\right) \thickapprox \sum_{k=1}^K \sum_{l=1}^L a_{qkl}  X_k\left(\xi\right)T_l\left(t-t_k\right) \\
\int X_k&  \left(\mathbf{\xi}\right) ~d\mathbf{\xi} =  \Delta \xi_1 \Delta \xi_2 \quad  ; \quad \int  ~ T_l\left(t-t_k\right) ~  ~dt = 1 \quad;\quad \int M_{4,j+2}(s)~ds=\frac{1}{4};\\
m_q(\xi)&=\int_t \sum_{k=1}^K \sum_{l=1}^L a_{qkl}X_k(\xi)T_l(t-\tau_k)~dt ~      = \sum_{k=1}^K \sum_{l=1}^L a_{qkl}X_k(\xi) \\
m_q(t)  &=\int_\Sigma \sum_{k=1}^K \sum_{l=1}^L a_{qkl}X_k(\xi)T_l(t-\tau_k)~d\xi = \sum_{k=1}^K \sum_{l=1}^L a_{qkl} \Delta \xi_1 \Delta \xi_2 T_l(t-\tau_k) \\
\textit{rewrite} & \\
m_{ql}(\xi)&=\sum_{k=1}^K a_{qkl}X_k(\xi) \quad;\quad m_{qk}(t)=\Delta \xi_1 \Delta \xi_2   \sum_{l=1}^L  a_{qkl}T_l(t-\tau_k) \\
\end{aligned}
$$</div>

<div  style="width:100% ; height:174px;overflow-x:auto;overflow-y:hidden">
 <div style="width:430px; height:154px;margin:0 auto;">
 <div style="width:300px; height:75px;float:left;">$$ m_{ql}(\xi)=\sum_{k=1}^Ka_{qkl}X_k\left(\xi\right) \qquad \qquad \iff $$ </div> 
 <div style="width:130px; height:75px;float:right;background-image:url(/images/figures/2014041604.jpg);-moz-background-size:100% 100%;background-size:100% 100%;"></div>
 <div style="width:300px; height:75px;float:left;">$$ m_{qk}(t)=\sum_{l=1}^L a_{qkl} \Delta \xi_1 \Delta \xi_2 T_l\left(t-\tau_k\right) \iff $$ </div> 
 <div style="width:130px; height:75px;float:right;background-image:url(/images/figures/2014041602.png);-moz-background-size:100% 100%;background-size:100% 100%;"></div>
 </div>
</div>

<div>$$
\begin{aligned}
X_k(\xi)&=16\Delta \xi_1 \Delta \xi_2 M_{4,i+2}(\xi_1)M_{4,j+2}(\xi_2) \,;\quad  k=(j-1)*I+i \\
T_l(t)&=4M_{4,l+2}(t) \\
\end{aligned} \\
$$</div>


<div>$$
\begin{aligned}
\nabla^2 m_{ql}(\xi)+e_{\xi}                      =0\,;\quad\xi &= \xi^1 ~,~ \xi^2 \cdots \xi^k \cdots \xi^{k-1} ~,~ \xi^K \quad \\
\frac{\partial^2}{\partial t^2}m_{qk}(t)+e_{\tau} =0\,;\quad t  &=   t^1 ~,~ ~ t^2   ~ \cdots  t^l ~ \cdots ~   t^{l-1} ~,~    t^L \quad\\
\end{aligned}
$$</div>

<div>$$
\begin{matrix}
\nabla^2 m_{ql}(\xi)+e_{\xi} = 0                   \iff &  \sum_{k=1}^Ka_{qkl} \nabla^2 X_k\left(\xi\right) & \iff  \mathbf{S}_\xi^{ql} ~ \mathbf{a}^{ql} + \mathbf{e}_\xi =\mathbf{0} \\
\frac{\partial^2}{\partial t^2}m_{qk}(t)+e_{\tau}  \iff & \sum_{l=1}^L a_{qkl} \Delta \xi_1\Delta \xi_2 \frac{\partial^2}{\partial t^2}T_l\left(t-\tau_k\right) & \iff  \mathbf{S}_\tau^{qk}  ~ \mathbf{a}^{qk} + \mathbf{e}_\tau=\mathbf{0} \\
\end{matrix}
$$</div>

<div style="font-size:150%">$$
\begin{matrix}
\mathbf{G}_{ij}^{ql}  &\mapsto & \mathbf{G}_{_{IJ}} \\
\mathbf{a}_i^{ql}\mathbf{G}_{ij}^{ql}\mathbf{a}_j^{ql} &=& \mathbf{a}_{_I} \mathbf{G}_{_{IJ}} \mathbf{a}_{_J} \\
\mathbf{G}_{ij}^{ql} & \mapsto& \mathbf{G}_{_{(q,i,l)\,,\,(q,j,l)}}
\end{matrix}
$$</div>

<div>$$
\mathbf{G}_\xi =\bigoplus_{\overset{q=1}{l=1}}^{Q,L}G_{\xi}^{q\,l}    ; \qquad \vec{\mathbf{a}} \textit{ arranged as }\, a_{qlk} \\
\mathbf{G}_\tau=\bigoplus_{\overset{q=1}{k=1}}^{Q,K}G_{\tau}^{qk}     ; \qquad \vec{\mathbf{a}} \textit{ arranged as }\, a_{qkl} 
$$</div>


### scheme 2:

<div>$$
\begin{aligned}
{\color{red}\because}  \quad & \mu \int_\Sigma \int_t ~ \dot{D}_q^0(t,\xi) ~dt~d\xi \thickapprox \mu \int_\Sigma \int_t ~ \sum_{k=1}^K \sum_{l=1}^L a_{qkl}X_k(\xi)T_l(t-t_k) ~dt~d\xi \\
          &=\sum_{k=1}^K \sum_{l=1}^L \mu  a_{qkl}  \Delta \xi_1 \Delta \xi_2  \iff a_{qkl} ~ \sim  \overline{D} \iff \sum_{k=1}^K \sum_{l=1}^L \mu  \overline{D}  \Delta \xi_1 \Delta \xi_2  \\
{\color{red}\therefore} \quad & \mathbf{S} \quad \textit{can be assigned as:}\quad  \textit{diag(1)},\quad \textit{diag(-1 2 -1)},\quad  \textit{diag(-1 -1 4 -1 -1)} \cdots\\
\textit{at}&\textit{least diag(1) can be reasonable, to minimize moment.}
\end{aligned}
$$</div>



### scheme 3:
<div>$$
\begin{aligned}
\int_\Sigma \mathbb{R}_\xi~ \left(\int_t \sum_{k=1}^K \sum_{l=1}^L a_{qkl}X_k\left(\xi\right)T_l\left(t-\tau_k\right)~dt\right) ~d\xi = r_\xi \iff \mathbf{G}_{\xi}: M \times M\\
\int_t \mathbb{R}_\tau~\left(\int_\Sigma\sum_{k=1}^K\sum_{l=1}^L a_{qkl}X_k\left(\xi\right)T_l\left(t-\tau_k\right)~d\xi\right) ~dt= r_\tau \iff \mathbf{G}_{\tau}: M \times M
\end{aligned}
$$</div>


### scheme 4:
<div>$$
\begin{aligned}
\int_\Sigma \int_t \mathbb{R}_\xi~ \left( \sum_{k=1}^K \sum_{l=1}^L  a_{jkl}X_k\left(\xi\right)T_l\left(t-\tau_k\right)\right)~dt ~d\xi = r_\xi \iff \mathbf{G}_{\xi}: M \times M\\
\int_t \int_\Sigma \mathbb{R}_\tau~\left( \sum_{k=1}^K \sum_{l=1}^L  a_{jkl}X_k\left(\xi\right)T_l\left(t-\tau_k\right)\right)~d\xi ~dt= r_\tau \iff \mathbf{G}_{\tau}: M \times M
\end{aligned}
$$</div>




<div>$$
\begin{aligned}
r_\xi&=
\sum_{j=1}^2\int_\Sigma\int_t 
\begin{pmatrix}
  \left( \sum_{k=1}^K\sum_{l=1}^L a_{jkl} \partial^2 \frac{X_k(\xi) }{\partial \xi_1^2}  T_l(t-\tau_k)             \right)^2 \\
2 \left( \sum_{k=1}^K\sum_{l=1}^L a_{jkl} \partial^2 \frac{X_k(\xi) }{\partial \xi_1 \partial \xi_2} T_l(t-\tau_k) \right)^2 \\
  \left( \sum_{k=1}^K\sum_{l=1}^L a_{jkl} \partial^2 \frac{X_k(\xi) }{\partial \xi_2^2}  T_l(t-\tau_k)             \right)^2 \\
\end{pmatrix}
~dt~d\xi \\
&=\sum_{j=1}^2\sum_{k=1}^K\sum_{l=1}^L\sum_{p=1}^K\sum_{q=1}^L a_{jkl} \int_\Sigma\int_t 
\begin{pmatrix}
 \frac{\partial^2 x_k}{\partial^2 \xi_1   }T_l(t-\tau_k)\frac{\partial^2 x_p}{\partial^2 \xi_1   }T_q(t-\tau_p) \\
2\frac{\partial^2 x_k}{\partial \xi_1\xi_2}T_l(t-\tau_k)\frac{\partial^2 x_p}{\partial \xi_1\xi_2}T_q(t-\tau_p) \\
 \frac{\partial^2 x_k}{\partial^2 \xi_2   }T_l(t-\tau_k)\frac{\partial^2 x_p}{\partial^2 \xi_2   }T_q(t-\tau_p) \\
\end{pmatrix}
~dt~d\xi~a_{jpq}  \\


&=\sum_{j=1}^2\sum_{k=1}^K\sum_{l=1}^L\sum_{p=1}^K\sum_{q=1}^L a_{jkl} \int_\Sigma 
\begin{pmatrix}
 \frac{\partial^2 x_k}{\partial^2 \xi_1   }\frac{\partial^2 x_p}{\partial^2 \xi_1   } \\
2\frac{\partial^2 x_k}{\partial \xi_1\xi_2}\frac{\partial^2 x_p}{\partial \xi_1\xi_2} \\
 \frac{\partial^2 x_k}{\partial^2 \xi_2   }\frac{\partial^2 x_p}{\partial^2 \xi_2   } \\
\end{pmatrix}~d\xi~\int_t~T_l(t-\tau_k)T_q(t-\tau_p)
~dt~a_{jpq}  \\



&=\sum_{j=1}^2\sum_{\overset{k_d=1}{k_s=1}}^{\overset{k_d=K_d}{k_s=K_s}}\sum_{l=1}^L\sum_{\overset{p_d=1}{p_s=1}}^{\overset{p_d=K_d}{p_s=K_s}}\sum_{q=1}^L a_{jkl} \\
&\qquad\qquad\times \int_{\xi_1} \int_{\xi_2} 
\begin{pmatrix}
 \frac{\partial^2 N_{k_s}(\xi_1)}{\partial^2 \xi_1   }\frac{\partial^2 N_{p_s}(\xi_1)}{\partial^2 \xi_1   }N_{k_d}(\xi_2)N_{p_d}(\xi_2) \\
2\frac{\partial N_{k_s}(\xi_1)}{\partial \xi_1}\frac{\partial N_{p_s}(\xi_1)}{\partial \xi_1}\frac{\partial N_{k_d}(\xi_1)}{\partial \xi_2}\frac{\partial N_{p_d}(\xi_2)}{\partial \xi_2} \\
 N_{k_s}(\xi_1)N_{p_s}(\xi_1)\frac{\partial^2 N_{k_d}(\xi_2)}{\partial^2 \xi_2   }\frac{\partial^2 N_{p_d}}{\partial^2 \xi_2   } \\
\end{pmatrix}~d\xi_1~d\xi_2~\\
&\qquad\qquad\times\int_t~T_l(t-\tau_k)T_q(t-\tau_p)
~dt~a_{jpq}  \\

&=\sum_{j=1}^2\sum_{k=1}^{K}\sum_{l=1}^L\sum_{p=1}^K\sum_{q=1}^L a_{jkl} R_{klpq} a_{jpq} \qquad, k=(k_d-1)\times K_s+k_s;p=(p_d-1)\times K_s+p_s \\

\end{aligned}
$$</div>




---

<div  style="width:100%; overflow-x:auto;overflow-y:hidden"><div style="width:459px; height:166px; margin:0 auto;">
  <div style="width:273px; height:160px; float:left; background-image:url(/images/figures/2014041606.jpg);-moz-background-size:100% 100%;background-size:100% 100%; position:relative">
    <div name="2014041606_eq1" style="position:absolute;bottom:  70px; left: 1px">$$\mathbf{G}_{ij}^{ql} $$</div>
    <div name="2014041606_eq1" style="position:absolute;bottom:   1px; left:15px">$$\mathbf{G}_{I,J}$$</div>
  </div>
  <div style="width:180px; height:166px; float:right; background-image:url(/images/figures/2014041607.jpg);-moz-background-size:100% 100%;background-size:100% 100%;position:relative;">
    <div name="2014041607_eq1" style="position:absolute;bottom: 102px; left:  65px;">$$\bbox[#F5A9F2]{\nabla^2 X_{kl}|_{\xi=\xi_{pq}}} $$</div>
    <div name="2014041607_eq1" style="position:absolute;bottom:  45px; left: 167px;">$$\bbox[white]{a_{kl}}$$</div>
    <div name="2014041607_eq3" style="position:absolute;bottom:  13px; left:   5px;">$$\bbox[#F5A9F2,2pt]{\sum_{k=1}^K\sum_{l=1}^L a_{kl} \nabla^2 X_{kl}(\xi)} $$</div>
  </div>
</div></div>


---

<div>$$
\dot{D}_q^0(t,\xi) \thickapprox \sum_{k=1}^K \sum_{l=1}^L a_{qkl}  X_k(\xi)T_l(t-\tau_k)=\sum_{k=1}^K \sum_{l=1}^L a_{qkl}\widetilde{D}_{kl}(\xi,t) \\

\nabla^2 \dot{D}(t,\xi)+e =0 \overset{1}{\iff}  \mathbf{Sa+e=0} \overset{2}{\iff} \mathbf{G=S^TS}  \\

\mathbf{S}\mathbf{a}=\mathbf{0} \quad;\quad 
\begin{pmatrix}  \mathbf{S}_{kl} & 0 \\ 0 & \mathbf{S}_{kl} \end{pmatrix} \begin{pmatrix}  \mathbf{a}_{1_{kl}} \\  \mathbf{a}_{2_{kl}} \end{pmatrix}  \quad;\quad 
S_{ij}a_j=S_{qkl,q'k'l'}a_{q'k'l'} \\
$$</div>
<div>$$
\begin{aligned}
\mathbb{P}=\mathbf{a}^T\mathbf{S}^T\mathbf{S}\mathbf{a} &= \sum_{q=1}^2\sum_{k'=1}^K\sum_{l'=1}^L \left[\sum_{k=1}^K\sum_{l=1}^L a_{qkl} \nabla^2 \widetilde{D}_{kl}(\xi_{k'},t_{l'}) \right]^2  \\
\mathbb{R}_{ij}=\mathbf{a}^T\mathbf{G}\mathbf{a}&=\sum_{q=1}^2 ~ \int_\xi ~ \int _t  \left[ \sum_{k=1}^K \sum_{l=1}^L a_{qkl}  \nabla_{ij}^2 \widetilde{D}_{kl}(\;\,\xi\;,\;t\;)\right]^2 ~ dt d\xi \\

\nabla_{ij}^2 &=
 \begin{bmatrix}
   \dfrac{\partial^2 }{\partial \xi_1^2} & \dfrac{\partial^2 }{\partial \xi_1\,\partial \xi_2}  \\
   \dfrac{\partial^2 }{\partial \xi_2\,\partial \xi_1} & \dfrac{\partial^2 }{\partial \xi_2^2}  \\
 \end{bmatrix} 

\nabla_{t}^2=\dfrac{\partial^2 }{\partial t^2} .or. \dfrac{d^2 }{d t^2}

\\

\therefore \quad & \\

 \mathbb{P}_{ij} & \overset{def}{\iff}  \sum_{q=1}^2\sum_{k=1'}^K\sum_{l=1'}^L \left[\sum_{k=1}^K\sum_{l=1}^L a_{qkl} \nabla_{ij}^2 \widetilde{D}_{kl}(\xi_{k'},t_{l'}) \right]^2  \\

\end{aligned}
$$</div>

---
<div>$$
\begin{aligned}
\mathbb{R}_{ij}&=\sum_{q=1}^2 ~ \int_\xi ~ \int _t  \left[ \sum_{k=1}^K \sum_{l=1}^L a_{qkl}  \nabla_{ij}^2 \widetilde{D}_{kl}(\;\,\xi\;,\;t\;)\right]^2 ~ dt d\xi \\
\mathbb{P}_{ij} &=  \sum_{q=1}^2\sum_{k=1'}^K\sum_{l=1'}^L \left[\sum_{k=1}^K\sum_{l=1}^L a_{qkl} \nabla_{ij}^2 \widetilde{D}_{kl}(\xi_{k'},t_{l'}) \right]^2  \\

\mathbb{R}_{ij}&=\sum_{q=1}^2 ~ \int_\xi ~ \int _t         \left[\sum_{k=1}^K\sum_{l=1}^L \sum_{\bar{k}=1}^K \sum_{\bar{l}=1}^L a_{qkl} \nabla_{ij}^2 \widetilde{D}_{kl}(\;\,\xi\;,\;t\;) \cdot a_{q\bar{k}\bar{l}} \nabla_{ij}^2 \widetilde{D}_{\bar{k}\bar{l}}(\;\,\xi\;,\;t\;) \right] ~ dt d\xi \\
\mathbb{P}_{ij} &=  \sum_{q=1}^2\sum_{k=1'}^K\sum_{l=1'}^L \left[\sum_{k=1}^K\sum_{l=1}^L \sum_{\bar{k}=1}^K \sum_{\bar{l}=1}^L a_{qkl} \nabla_{ij}^2 \widetilde{D}_{kl}(\xi_{k'},t_{l'}) \cdot a_{q\bar{k}\bar{l}} \nabla_{ij}^2 \widetilde{D}_{\bar{k}\bar{l}}(\xi_{k'},t_{l'}) \right]  \\

\mathbb{G}_{kl,\bar{k}\bar{l}}^{q,R_{ij}} &=~ \int_\xi ~ \int _t        \left[ \nabla_{ij}^2 \widetilde{D}_{kl}(\;\,\xi\;,\;t\;) \cdot  \nabla_{ij}^2 \widetilde{D}_{\bar{k}\bar{l}}(\;\,\xi\;,\;t\;) \right] ~ dt d\xi  \\
\mathbb{G}_{kl,\bar{k}\bar{l}}^{q,P_{ij}} &=\sum_{k=1'}^K\sum_{l=1'}^L  \left[ \nabla_{ij}^2 \widetilde{D}_{kl}(\xi_{k'},t_{l'}) \cdot  \nabla_{ij}^2 \widetilde{D}_{\bar{k}\bar{l}}(\xi_{k'},t_{l'}) \right]  \\        

\end{aligned}
$$</div>

===



<div>$$
\begin{aligned}

m_q(\xi)&=\int_t \sum_{k=1}^K \sum_{l=1}^L a_{qkl}X_k(\xi)T_l(t-\tau_k)~dt ~      = \sum_{l=1}^L \bbox[2pt,#F5A9F2]{\sum_{k=1}^K a_{qkl}X_k(\xi)} = \sum_{l=1}^L \bbox[2pt,#F5A9F2]{m_{ql}(\xi)}\\
m_q(t)  &=\int_\Sigma \sum_{k=1}^K \sum_{l=1}^L a_{qkl}X_k(\xi)T_l(t-\tau_k)~d\xi = \sum_{k=1}^K \bbox[2pt,#F5A9F2]{\sum_{l=1}^L a_{qkl} \Delta \xi_1 \Delta \xi_2 T_l(t-\tau_k)} = \sum_{k=1}^K \bbox[2pt,#F5A9F2] {m_{qk}(t)}\\

\mathbb{R}_{\xi,ij} &=\sum_{q=1}^2 \sum_{l=1}^L ~ \int_\xi ~  \left[ \nabla_{ij}^2 \sum_{k=1}^K a_{qkl}  X_k(\xi) \right]^2 d\xi     \\
                    &=\sum_{q=1}^2 \sum_{l=1}^L ~ \int_\xi ~  \left[ \sum_{k=1}^K \sum_{\bar{k}=1}^K a_{qkl} \nabla_{ij}^2 X_k(\xi) \cdot \nabla_{ij}^2 X_\bar{k}(\xi) a_{q\bar{k}l} \right] d\xi \\
{\color{#8A0808} \mathbb{G}_{_{k,\bar{k}}}^{\mathbb{R}^{^{q\,l}}_{\xi,ij}}}&{\color{#8A0808} = \int_\xi ~ \nabla_{ij}^2 X_k(\xi) \cdot \nabla_{ij}^2 X_\bar{k}(\xi) ~ d\xi}\\

\mathbb{P}_{\xi,ij} &=\sum_{q=1}^2 \sum_{l=1}^L ~ \sum_{k'=1}^K \left[ \sum_{k=1}^K a_{qkl}  \nabla_{ij}^2 X_k(\xi_{k'})  \right]^2 \\
                    &=\sum_{q=1}^2 \sum_{l=1}^L ~ \sum_{k'=1}^K \left[ \sum_{k=1}^K \sum_{\bar{k}=1}^K  a_{qkl}  \nabla_{ij}^2 X_k(\xi_{k'})  \cdot \nabla_{ij}^2 X_\bar{k}(\xi_{k'}) a_{q\bar{k}l} \right] \\
{\color{#0404B4} \mathbb{G}_{_{k,\bar{k}}}^{\mathbb{P}^{^{q\,l}}_{\xi,ij}}}& {\color{#0404B4} = \sum_{k'=1}^K \nabla_{ij}^2 X_k(\xi_{k'})  \cdot \nabla_{ij}^2 X_\bar{k}(\xi_{k'})} \\



\mathbb{R}_{\tau,t} &=\sum_{q=1}^2 \sum_{k=1}^K ~ \int_t   ~  \left[ \nabla_{t}^2 \sum_{l=1}^L a_{qkl} \Delta\xi_1 \Delta\xi_2 T_l(t-\tau_k)\right]^2 dt   \\
                    &=\sum_{q=1}^2 \sum_{k=1}^K ~ \int_t   ~  \left[ \sum_{l=1}^L  \sum_{\bar{l}=1}^L a_{qkl} \nabla_{t}^2 T_l(t-\tau_k) \cdot \nabla_{t}^2 T_\bar{l}(t-\tau_k) a_{qk\bar{l}} \right] dt \cdot \Delta \xi_1^2  \Delta \xi_2^2 \\ 
{\color{#8A0808}  \mathbb{G}_{l,\bar{l}}^{\mathbb{R}^{q\,k}_{\tau,t} } }&{\color{#8A0808} = \Delta \xi_1^2 \Delta \xi_2^2 \cdot \int_t \nabla_{t}^2 T_l(t-\tau_k) \cdot \nabla_{t}^2 T_\bar{l}(t-\tau_k)~dt} \\

\mathbb{P}_{\tau,t} &=\sum_{q=1}^2 \sum_{k=1}^K ~ \sum_{l'=1}^L \left[ \sum_{l=1}^L a_{qkl}  \Delta\xi_1 \Delta\xi_2 \nabla_{t}^2  T_l(t_{l'}-\tau_k) \right]^2 \\
                    &=\sum_{q=1}^2 \sum_{k=1}^K ~ \sum_{l'=1}^L \left[ \sum_{l=1}^L \sum_{\bar{l}=1}^L a_{qkl}    \nabla_{t}^2  T_l(t_{l'}-\tau_k) \cdot \nabla_{t}^2 T_\bar{l}(t_{l'}-\tau_k) a_{qk\bar{l}} \right] \cdot \Delta\xi_1^2 \Delta\xi_2^2 \\
{\color{#0404B4} \mathbb{G}_{l,\bar{l}}^{\mathbb{P}^{q\,k}_{\tau,t} }} &{\color{#0404B4} =\Delta\xi_1^2 \Delta\xi_2^2 \cdot \sum_{l'=1}^L \nabla_{t}^2  T_l(t_{l'}-\tau_k) \cdot \nabla_{t}^2 T_\bar{l}(t_{l'}-\tau_k)} \\


\end{aligned}
$$</div>


