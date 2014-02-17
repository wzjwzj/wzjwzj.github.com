---
layout: default
title: dict 
header: Pages
group: navigation
comments: false
---

<header> <img src="assets/themes/twitter/img/dict.png"  alt="dict" style="padding:50px 0px 10px"/></header>

<iframe id="dict" name="dict" frameborder="0"  style="height:100%;width:100%"></iframe>

<div id="mask" style="background-color:white;width:16px;position:absolute;bottom:3px;right:0px"></div>

<script type="text/javascript">
$(document).ready(function() {
  var matchstr = location.search.match(/q=([^&]*)(&|$)/);
  if(matchstr && matchstr[1]){
	$("#main-content").css( "position","relative");
	$("#mask").css("height",$( "#sidebar" ).css( "height" ));
        $("#dict").css("height",$( "#sidebar" ).css( "height" ));
	window.frames['dict'].location.href = "http://dict.cn/hc2/dict.php?skin=default&"+matchstr[0] ;
  }
});

</script>


