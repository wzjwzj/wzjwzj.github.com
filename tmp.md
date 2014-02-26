---
layout: page
title: "链接"
description: "some usefull links"
group: navigation
comments: false
---

<section>
\`\`\`bash   
\`\`\`

```bash
$cat test_sa1.sh
../minimizer <<EOF                             #   !  dip   .and.  strike  
  make clean                                   #
  set_effective_dt  1.0                        #  params ctrl discretize size  arams ctrl discr  arams ctrl discr  arams ctrl discr
EOF
  
#h5dump -d /t_static_single_dataset/disp  unfilter*.h5 > tmp.info
#h5dump -d /t_static_single_dataset/disp  filter*.h5   >> tmp.info
```
</section>

<br/><br/><section>
&#123;% highlight bash linenos=table %&#125;   
&#123;% endhighlight %&#125;

{% highlight bash linenos=table %}
$cat test_sa1.sh
../minimizer <<EOF                             #   !  dip   .and.  strike  
  make clean                                   #
  set_source_location -F1 -L30.52/83.75        #  src coordinate
  set_effective_dt  1.0                        #  params ctrl discretize size  arams ctrl discr  arams ctrl discr  arams ctrl discr
EOF
  
#h5dump -d /t_static_single_dataset/disp  unfilter*.h5 > tmp.info
#h5dump -d /t_static_single_dataset/disp  filter*.h5   >> tmp.info
{% endhighlight %}
</section>

<br/><br/><section>
&#123;% highlight bash %&#125;   
&#123;% endhighlight %&#125;
{% highlight bash   %}
$cat test_sa1.sh
../minimizer <<EOF                             #   !  dip   .and.  strike  
  make clean                                   #
  set_effective_dt  1.0                        #  params ctrl discretize size  arams ctrl discr  arams ctrl discr  arams ctrl discr
EOF
  
#h5dump -d /t_static_single_dataset/disp  unfilter*.h5 > tmp.info
#h5dump -d /t_static_single_dataset/disp  filter*.h5   >> tmp.info
{% endhighlight %}

<br/><br/><section>
&#123;% highlight bash linenos %&#125;   
&#123;% endhighlight %&#125;
{% highlight bash  linenos %}
$cat test_sa1.sh
../minimizer <<EOF                             #   !  dip   .and.  strike  
  make clean                                   #
  set_effective_dt  1.0                        #  params ctrl discretize size  arams ctrl discr  arams ctrl discr  arams ctrl discr
EOF
  
#h5dump -d /t_static_single_dataset/disp  unfilter*.h5 > tmp.info
#h5dump -d /t_static_single_dataset/disp  filter*.h5   >> tmp.info
{% endhighlight %}
</section>

