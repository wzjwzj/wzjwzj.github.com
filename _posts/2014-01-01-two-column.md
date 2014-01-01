---
layout: post
title: "two column"
keywords: [""]
description: ""
category: ""
tags: [""]
---
{% include JB/setup %}

```html
<html>
    <head>
      <title>试验场</title>
      <style type="text/css">
        .layout {  padding-left: 200px;}
        .left   {  background-color:orange;float:right;
                   width:200px;height:300px;margin-left:-200px;}
        .right  {  background-color:green;float:right; height:300px;width:100%;}
      </style>
    </head>
    
    <body>
       <div class="layout">
           <div class="right">  
                右边右边右边右边右边右边右边右边右边右边右边右边右边右边右边右边右边
                右边右边右边右边右边右边右边右边右边右边右边右边右边右边右边右边右边
                右边右边右边右边右边右边右边右边右边右边右边右边右边右边右边右边右边
                右边右边右边右边右边右边右边右边右边
           </div>
           <div class="left">
                左边左边左边左边左边左边左边左边左边左边左边左边左边左边左边左边左边
                左边左边左边左边左边左边左边左边左边左边左边左边左边左边左边左边左边
                左边左边左边左边左边左边左边左边左边左边左边左边左边左边左边左边左边
                左边左边
           </div>
       </div>
    </body>
</html>
```
