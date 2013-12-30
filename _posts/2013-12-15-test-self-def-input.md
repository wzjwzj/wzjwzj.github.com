---
layout: post
title: 测试自定义输入
date: 2013-12-15 1:31
status: public
url:
tags: Tag1 Tag2
description: 测试
any_key:
categories: 杂类
mathjx: on
---
<script type="text/javascript">document.write("<div id='toc'>")</script>
[TOC]
<script type="text/javascript">document.write("</div>") </script>

## test math

[mathjax tex example 在公式右键查看tex代码](http://www.mathjax.org/demos/tex-samples/)

<script type="math/tex; mode=display">
\left( \sum_{k=1}^n a_k b_k \right)^2  \\ \sqrt{3x-1}+(1+x)^2     
</script>


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
### test highlight 1
    #!python
    import this
    print 'something'
    print 'something'

### test highlight 2
```python
import this
print 'something'
```

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

[^1]: emphatically: 坚决地，着重地，强调地（~ deny 坚决否定）
[^key2]: key2的注释
