---
layout: page
title: "链接"
description: "some usefull links"
group: navigation
comments: false
---

```bash
$cat test_sa1.sh
../minimizer <<EOF                             #   !  dip   .and.  strike  
  make clean                                   #
  set_effective_dt  1.0                        #  params ctrl discretize size
  set_source_location -F1 -L30.52/83.75        #  src coordinate
  set_source_params_vs eikonal_modify -F1 -M3.35E+18/180/45/-5 -L8000.0/5000.0r
  set_inversion_method slipgen -K0.8  #-G # -P0.5  # -G -S0.8  #  random generate slip-distribution 
  generate_static_data -Vn -F5.0/5.0/5.0       #  random generate obs coordinate
  output_static_data unfilter syn              #  calculate syn data
  plot source                                  #  
  sh plot_gmt.sh                               #  plot the figure
  cp plot_gmt.sh plot_gmt1.sh                  #
  cp a.ps a1.ps                                #   
  #---------------------------- 
  # quit 				       #
  #-------inverse modelling----                #
  set_source_params_vs eikonal_modify -F1 -M3.35E+18/180/40/0 -L8000.0/5000.0r
  set_inversion_method sa1  -C1/1/0/1  -N100/1000/0 -R0.5/0 -S0.1 -T100/100
                         #  -Cv1/v2/v3/[/v4[v5]]   ! v1:iselect v2:ioptimize. v3: imisfit v4:ireduction: v5:istartmodel
  #quit
  r_st1 unfilter*.h5  # as filtered data      #  read data
  get_misfits_static                          #  get_result.
  output_static_data filter syn               #  output_result
  plot source                                 #  
  sh plot_gmt.sh                                  #  plot the figure
  mv plot_gmt.sh plot_gmt2.sh                         #  
  mv a.ps a2.ps                               #  
  quit                                        #  release memory
EOF
  
#h5dump -d /t_static_single_dataset/disp  unfilter*.h5 > tmp.info
#h5dump -d /t_static_single_dataset/disp  filter*.h5   >> tmp.info

```
<br/><br/>

{% highlight bash linenos=table %}
$cat test_sa1.sh
../minimizer <<EOF                             #   !  dip   .and.  strike  
  make clean                                   #
  set_effective_dt  1.0                        #  params ctrl discretize size
  set_source_location -F1 -L30.52/83.75        #  src coordinate
  set_source_params_vs eikonal_modify -F1 -M3.35E+18/180/45/-5 -L8000.0/5000.0r
  set_inversion_method slipgen -K0.8  #-G # -P0.5  # -G -S0.8  #  random generate slip-distribution 
  generate_static_data -Vn -F5.0/5.0/5.0       #  random generate obs coordinate
  output_static_data unfilter syn              #  calculate syn data
  plot source                                  #  
  sh plot_gmt.sh                               #  plot the figure
  cp plot_gmt.sh plot_gmt1.sh                  #
  cp a.ps a1.ps                                #   
  #---------------------------- 
  # quit 				       #
  #-------inverse modelling----                #
  set_source_params_vs eikonal_modify -F1 -M3.35E+18/180/40/0 -L8000.0/5000.0r
  set_inversion_method sa1  -C1/1/0/1  -N100/1000/0 -R0.5/0 -S0.1 -T100/100
                         #  -Cv1/v2/v3/[/v4[v5]]   ! v1:iselect v2:ioptimize. v3: imisfit v4:ireduction: v5:istartmodel
  #quit
  r_st1 unfilter*.h5  # as filtered data      #  read data
  get_misfits_static                          #  get_result.
  output_static_data filter syn               #  output_result
  plot source                                 #  
  sh plot_gmt.sh                                  #  plot the figure
  mv plot_gmt.sh plot_gmt2.sh                         #  
  mv a.ps a2.ps                               #  
  quit                                        #  release memory
EOF
  
#h5dump -d /t_static_single_dataset/disp  unfilter*.h5 > tmp.info
#h5dump -d /t_static_single_dataset/disp  filter*.h5   >> tmp.info
{% endhighlight %}

<br/><br/>
{% highlight bash %}
$cat test_sa1.sh
../minimizer <<EOF                             #   !  dip   .and.  strike  
  make clean                                   #
  set_effective_dt  1.0                        #  params ctrl discretize size
  set_source_location -F1 -L30.52/83.75        #  src coordinate
  set_source_params_vs eikonal_modify -F1 -M3.35E+18/180/45/-5 -L8000.0/5000.0r
  set_inversion_method slipgen -K0.8  #-G # -P0.5  # -G -S0.8  #  random generate slip-distribution 
  generate_static_data -Vn -F5.0/5.0/5.0       #  random generate obs coordinate
  output_static_data unfilter syn              #  calculate syn data
  plot source                                  #  
  sh plot_gmt.sh                               #  plot the figure
  cp plot_gmt.sh plot_gmt1.sh                  #
  cp a.ps a1.ps                                #   
  #---------------------------- 
  # quit 				       #
  #-------inverse modelling----                #
  set_source_params_vs eikonal_modify -F1 -M3.35E+18/180/40/0 -L8000.0/5000.0r
  set_inversion_method sa1  -C1/1/0/1  -N100/1000/0 -R0.5/0 -S0.1 -T100/100
                         #  -Cv1/v2/v3/[/v4[v5]]   ! v1:iselect v2:ioptimize. v3: imisfit v4:ireduction: v5:istartmodel
  #quit
  r_st1 unfilter*.h5  # as filtered data      #  read data
  get_misfits_static                          #  get_result.
  output_static_data filter syn               #  output_result
  plot source                                 #  
  sh plot_gmt.sh                                  #  plot the figure
  mv plot_gmt.sh plot_gmt2.sh                         #  
  mv a.ps a2.ps                               #  
  quit                                        #  release memory
EOF
  
#h5dump -d /t_static_single_dataset/disp  unfilter*.h5 > tmp.info
#h5dump -d /t_static_single_dataset/disp  filter*.h5   >> tmp.info
{% endhighlight %}


