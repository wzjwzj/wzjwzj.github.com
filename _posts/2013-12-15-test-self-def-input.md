---
layout: post
title: 测试自定义输入
category: uncategorized
tags: test
toc: true
widget: false
mathjax: true
prettify: true
---

## test math

[mathjax tex example 在公式右键查看tex代码](http://www.mathjax.org/demos/tex-samples/)

<script type="math/tex; mode=display">
\left( \sum_{k=1}^n a_k b_k \right)^2  \\ \sqrt{3x-1}+(1+x)^2     
</script>

<!--end_excerpt-->

[MathJax TeX and LaTeX Support](http://docs.mathjax.org/en/latest/tex.html)

<script type="math/tex; mode=display">
     \begin{aligned}
     \nabla \times \vec{\mathbf{B}} -\, \frac1c\, \frac{\partial\vec{\mathbf{E}}}{\partial t} & = \frac{4\pi}{c}\vec{\mathbf{j}}   \\\
      \nabla \cdot \vec{\mathbf{E}} & = 4 \pi \rho   \\\
     \nabla \times \vec{\mathbf{E}}\, +\, \frac1c\, \frac{\partial\vec{\mathbf{B}}}{\partial t} & = \vec{\mathbf{0}}  \\\
     \nabla \cdot \vec{\mathbf{B}} & = 0 \end{aligned}
\space \space \space \space \space \space \sqrt{3x-1}+(1+x)^2
</script>

<script type="math/tex; mode=display">
\left( \sum_{k=1}^n a_k b_k \right)^2  \\ \sqrt{3x-1}+(1+x)^2     
</script>

<script type="math/tex; mode=display">
     \begin{aligned}
     \nabla \times \vec{\mathbf{B}} -\, \frac1c\, \frac{\partial\vec{\mathbf{E}}}{\partial t} & = \frac{4\pi}{c}\vec{\mathbf{j}}   \\\
      \nabla \cdot \vec{\mathbf{E}} & = 4 \pi \rho   \\\
     \nabla \times \vec{\mathbf{E}}\, +\, \frac1c\, \frac{\partial\vec{\mathbf{B}}}{\partial t} & = \vec{\mathbf{0}}  \\\
     \nabla \cdot \vec{\mathbf{B}} & = 0 \end{aligned}
\space \space \space \space \space \space \sqrt{3x-1}+(1+x)^2
</script>



*文本*   **文本**
_文本_   __文本__

## test links

An [google](http://www.google.de)
<http://www.google.de>
<wzjwzj@mail.ustc.edu.cn>

## test figure

![bear](/images/figures/bearlogo.jpg)


### test figure half
<figure class="one">
	<img src="/images/figures/bearlogo.jpg">
	<figcaption>Caption describing this image.</figcaption>
</figure>

<figure class="half">
	<img src="/images/figures/bearlogo.jpg">
	<figcaption>Caption describing this image.</figcaption>
</figure>
<figure class="third">
	<img src="/images/figures/bearlogo.jpg">
	<figcaption>Caption describing this image.</figcaption>
</figure>

<figure class="half">
	<img src="/images/figures/bearlogo.jpg">
	<img src="/images/figures/bearlogo.jpg">
	<figcaption>Caption describing these two images.</figcaption>
</figure>
### test figure three
<figure class="third">
	<a href="/images/figures/bearlogo.jpg"><img src="/images/figures/bearlogo.jpg"></a>
	<a href="/images/figures/bearlogo.jpg"><img src="/images/figures/bearlogo.jpg"></a>
	<a href="/images/figures/bearlogo.jpg"><img src="/images/figures/bearlogo.jpg"></a>
	<figcaption>Caption describing these three images.</figcaption>
</figure>

## test list
### test list 1
1.  Foo
2.  Bar

### test list 2
*   A list item.
    With multiple paragraphs.
*   Bar

-----------
## test highlight

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


## test video
<div style="text-align:center">
<iframe width="420" height="315" src="//www.youtube.com/embed/y0ZjGvez83g" frameborder="0" allowfullscreen></iframe>
</div>

## test table

First Header | Second Header | Third Header
------------ | ------------- | ------------
Content Cell | Content Cell  | Content Cell
Content Cell | Content Cell  | Content Cell

This is emphatically [^1]
Something else [^key2].
EOF

## 二级标题
### 三级标题
#### 四级标题
##### 五级标题
###### 六级标题

## 测试缩进
>一级缩进
>>二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进二级缩进
>>>三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进三级缩进

[^1]: emphatically: 坚决地，着重地，强调地（~ deny 坚决否定）
[^key2]: key2的注释
