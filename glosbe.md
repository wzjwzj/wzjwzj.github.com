---
layout: default
title: dict 
header: Pages
group: navigation
comments: false
htmlhead: '<style>
#dict_wrap {
	padding-top:50px;
	font: 12px/18px Verdana,Geneva,Arial,Helvetica,sans-serif;
}

#dict_wrap .word{
	color: #0A840A;
	font-weight: bold;
	font-size: 28px;
}

#dict_wrap .defs li {
	font-size: 18px;
	list-style:none;
}
strong.keyword {
	color:red;
}
ul>h2{
font-weight: bold;
font-size: 16px;
margin-left: -15px;
padding: 5px;
}
</style>'
---


<div id="dict_wrap" >
  <div class="word"></div>
  <div style="padding-top:20px"><ul class="defs"><h2>释义</h2></ul></div>
  <div><ul class="more"><h2>更多相近释义</h2></ul></div>
  <div><ul class="exps"><h2>例句</h2></ul></div>
</div>


<script type="text/javascript">
$(document).ready(function() {

   var matchstr = location.search.match(/phrase=([^&]*)(&|$)/);
   if(matchstr && matchstr[1]){
 
      var phrase =  decodeURIComponent(matchstr[1].replace(/\+/g, " ")).replace(/\+/g, " ").replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
      var html   = 'http://glosbe.com/gapi/translate'+window.location.search+'&format=json&pretty=true&tm=true&callback=?';
      
      $('#dict_wrap div.word').text(phrase);
      $.getJSON( html , function(data) {
	  if (data.tuc[0] !== null && data.tuc[0] !== undefined ) {
	      for( var i=0; i<data.tuc.length; i++) {
			if(data.tuc[i].phrase != null && data.tuc[i].phrase !== undefined ) 
				if(data.tuc[i].phrase.text != null && data.tuc[i].phrase.text !== undefined ) 
		      			$('ul.defs').append('<li>'+data.tuc[i].phrase.text+'</li>');
			if(data.tuc[i].meanings !== null && data.tuc[i].meanings !== undefined  ) 
				if( data.tuc[i].meanings[0] !== null && data.tuc[i].meanings[0] !== undefined)
					for( var j=0; j< data.tuc[i].meanings.length ; j++) 
						if( data.tuc[i].meanings[j].text!=null && data.tuc[i].meanings[j].text!= undefined )
		      					$('ul.more').append('<li>'+data.tuc[i].meanings[j].text+'</li>');
	      }
      	   };
	   if (data.examples[0] !== null && data.examples[0] !== undefined ) {
		for( var i=0; i<data.examples.length; i++) {
			if(data.examples[i].first != null && data.examples[i].first !== undefined ) 
		      		$('ul.exps').append('<li>'+data.examples[i].first+'</li>');
			if(data.examples[i].second != null && data.examples[i].second !== undefined ) 
		      		$('ul.exps').append('<li>'+data.examples[i].second+'</li>');
		}
	   }

      });
   }
});

</script>

