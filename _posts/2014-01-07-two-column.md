---
layout: post
title: "简单两栏布局-左边固定，右边自适应"
category: programming
tags: html code
---

[http://hi.baidu.com/tabooc/item/526b7c4fcf53eeec1e19bcb6](http://hi.baidu.com/tabooc/item/526b7c4fcf53eeec1e19bcb6)

<!--end_excerpt-->

```html
<html>
    <head>
      <title>两列布局</title>
      <style type="text/css">
        .layout {  padding-left: 200px;}
        .left   {  background-color:orange;float:right;
                   width:200px;height:300px;margin-left:-200px;}
        .right  {  background-color:green;float:right; height:300px;width:100%;}
      </style>
    </head>
    
    <body>
       <div class="layout">
           <div class="right">  右边  </div>
           <div class="left">   左边  </div>
       </div>
    </body>
</html>
```
