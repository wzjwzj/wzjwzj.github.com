---
layout: default
title: "孤月谁明相册"
description: "gallery"
group: navigation
comments : false
galleries :
  - name : 瑞士
    dir  : switzerland/
    discription :  和小伙伴们去瑞士旅游照片
  - name : 瑞士
    dir  : 瑞士
    discription :  和小伙伴们去瑞士旅游照片
---

<ul>
  {% for gallery in page.galleries %}
    <li><a href="/gallery?q={{ gallery.dir }}&nm={{ gallery.name }}">{{gallery.name}}</a></li>
  {% endfor %}
</ul>
