---
layout: post
title: "测试谷歌地图:德国国家公园"
category: "旅游"
tags: info
toc:
widget:
htmlhead: ' <style type="text/css">  
   .labels {
     color: red;
     background-color: white;
     font-family: "Lucida Grande", "Arial", sans-serif;
     font-size: 10px;
     font-weight: bold;
     text-align: center;
     border: 2px solid black;
     padding: 0px 2px;
     white-space: nowrap;
   }
</style>
'
---

{% include JB/setup %}

从阿尔卑斯山麓到北部沿海地区，德国国土上分布着十几个大小不一的国家公园。这里有原始森林、峻岭群山；有海岸沙滩、峡谷湖泊；有世界上飞得最高的金雕、还有肉眼难以发现的海蚯蚓,它们的共同点是：拥有大片未受人工雕琢的自然景观和各种罕见的珍稀动植物。 

<!--end_excerpt-->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3&key=AIzaSyBR0NgEYSTNc4qn2CQeHp8lYj49mbu2UGw&sensor=false"></script>
<script type="text/javascript" src="/assets/themes/twitter/js/markerwithlabel.js"></script>
<script type="text/javascript">
    function initmap() {
	var locations = [
     		['Berchtesgaden', 47.55,12.916635,'#wzj1','<a href="#Berchtesgaden">Berchtesgaden</a>'],
     		['test', 51.082822,10.933578, '#wzj2' ,'loc2'],
     		['测试', 49.082822,12.433578, '#wzj3' ,'loc3']
	];
	var mapOptions = {
          center: new google.maps.LatLng(51.002822,10.433578),
          zoom: 5,
	  mapTypeId: google.maps.MapTypeId.HYBRID
        };
        var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
	for (var i = 0; i < locations.length; i++) {
		 var marker = new MarkerWithLabel({
			position: new google.maps.LatLng(locations[i][1], locations[i][2]),
			draggable: false,
			raiseOnDrag: true,
			map: map,
			url: locations[i][3],
			labelContent: locations[i][0],
			labelAnchor: new google.maps.Point(22, 0),
			labelClass: "labels",
			labelStyle: {opacity: 0.65}
		 });
    		 attachInfo(marker, i);
	}
	function attachInfo(marker, i) {
  		 var infowindow = new google.maps.InfoWindow({ content: locations[i][4]});
  		 /*google.maps.event.addListener(marker, 'click',    function() {infowindow.open(map, marker);map.panTo(marker.getPosition());});*/
  		 google.maps.event.addListener(marker, 'click',    function() {infowindow.open(map, marker);});
  		 google.maps.event.addListener(marker, 'dblclick', function() {window.location.href = marker.url;});
	}
	google.maps.event.addDomListener( document.getElementById("icon-resize"),"click",function(){ google.maps.event.trigger(map, 'resize');});
	/*google.maps.event.addDomListener( $("#icon-resize"),"click",function(){ google.maps.event.trigger(map, 'resize');});*/
    }
    google.maps.event.addDomListener(window, "load", initmap);
</script>

<div id="map-canvas" style="height:600px"></div>

##贝希特斯加登国家公园 
  该国家公园位于德国东南部的巴伐利亚州，构成迷人高山景观的岩石主要是白垩沉积岩。游客可以徒步游览公园的整个地区，领略一个由山崖地区、碎石屑区、阿尔卑斯山草原、中欧山松和绿桤木地区构成的景观天堂。您可不要错过著名的国王湖。国王湖座落在瓦茨曼山、“石海”和哈根山之间，宛如一个峡湾。国王湖水质良好，适合饮用，说明该国家公园仍处于原生态地区。 

##巴伐利亚森林国家公园 
  始建于1970年，位于德国东南部巴伐利亚州与捷克交界处，面积逾200平方公里，与东面接壤的舒马瓦国家公园（捷克）共同组成中欧最大的成片森林保护区，让规模巨大的自然生态按照自然界永恒和固有的规律发展。登上山峰，您可以远眺巴伐利亚－波希米亚边界山脉那一望无垠的壮丽森林全景。此外，这里还有沼泽地、清澈的山涧以及一个冰川湖泊——拉赫尔湖。 

##艾弗尔国家公园 
  艾弗尔山北部的国家公园填补了德国国家公园网的西部空白。这里以前树木遭到砍伐，现在长出了大片的野生天然森林。230余种濒临灭绝的动植物在这里找到了它们赖以生存的庇护区。野猫在连绵不断的林区捕捉老鼠，海狸在清澈的溪水中挖筑自己的窝。种类众多的蝙蝠和翠鸟也偏爱这里的安宁，而黄色野生水仙，一到春天就鲜花烂漫，令大自然爱好者兴奋不已。 

##海尼希国家公园
  海尼希国家公园位于图林根州，是欧洲最大的成片阔叶混合林保护区，德国中部的原始森林。专业人士和大自然爱好者对这里“间伐林”的独特性，尤其对以保护自然为宗旨的经济林赞不绝口。著名景点有：米尔豪森城墙，有700年历史的米尔豪森市民住宅等。 

##哈尔茨国家公园 
  这个国家公园是北德最受欢迎的徒步游与滑雪漫游地区之一。面积西到阿尔特瑙，北至巴特哈尔茨堡与伊尔森堡，东到德赖阿能霍讷，南至哈尔茨山脉南部的黑尔茨贝格。著名景点有：蒸汽驱动的布罗肯山观光小火车，拥有百年历史的布罗肯山花园，世界文化遗产戈斯拉尔与奎德林堡，吕伯兰钟乳石洞和独角兽洞。 

##科勒瓦尔德－埃德湖国家公园 
  地处德国绿色心脏的中央，南临埃德湖，与卡塞尔市相距半小时的车程，面积约5700公顷。这个地处黑森州北部独一无二的自然天堂是数十年自然保护与林业史上的壮举，这里根本看不到公路、居民区抑或铁路线的踪影。这里有50多座高山以及众多森林草地相间的山谷，山上是成片的“山毛榉海”，谷中有清澈见底的溪流。作为上一次冰河纪见证物的“岩石与山崖海”、生长着欧洲白蜡树和高山榆树的潮湿峡谷以及兰花草地和岩石草地，构成了这座国家公园的主要特征。 

##萨克森小瑞士国家公园 
  位于德国东部，德累斯顿市东南面。它保护着易北河在1亿年间形成的易北河砂岩山脉大部分地区，面积达3.6万公顷。这里的地貌多姿多彩：奇特的白垩纪侵蚀景观，中欧独一无二的白垩砂岩岩石景观、幽深的山谷、平顶山和峡谷。种类繁多的动植物在此栖息。如果想看看“萨克森小瑞士之国”的全貌，可以在国家公园里顺着悬崖峭壁爬上山崖。您也可以沿着较为轻松舒适的游览路线，途中慢慢欣赏美丽的公园风光，其中就包括前往“棱堡”，从棱堡上可以远眺易北河。 

##下奥得河河谷国家公园 
  德国第一个河谷低地国家公园，地处奥得河河岸。这个国家公园是许多种动物的栖息地。除了受到保护的特种鸟类如白尾海雕、黑鹳和水栖苇莺外，游客在这里还能看到一些珍稀海狸在筑造堤坝。此外，这里还生活着40多种鱼类和50种哺乳动物，它们构成了一个庞大的动物王国。在河谷低地60公里的沿途，有令人难忘的奥得河斜坡和鲜花遍野的干草地。 

##前波莫瑞浅海湾风景区国家公园 
  波罗的海沿岸最大的自然保护区，它从达尔斯－青斯特半岛一直延伸到吕根岛的西海岸。这里有陡峭海岸、沙丘、沙嘴滩和沙滩湖，不仅是海滩度假者，而且也是森林爱好者理想的旅游地点。除了奥斯特森林和达尔斯森林外，还有许多美丽的景点，比如普拉姆角和高地沙丘。值得一提的是，这个公园是欧洲最大的鹤类栖息地，每年秋天有数万只鹤来此生活，在国际上有重要的地位。 
##莫里茨国家公园 
  位于梅克伦堡多湖平原上最大的湖——莫里茨湖东面。这里是一个梦幻般的湖泊风景区，分布着大大小小130多个湖泊。在这里可以看到一个冰河纪形成的自然保护区，它是一些日渐稀少、抑或是其他地区早已灭绝的大型鸟类的繁殖地，如濒临灭绝的白尾海雕(它又被誉为“鸟中之王”)以及鱼鹰和鹤等。这里还有自上世纪开始放养的瑞典菲耶尔牛、哥特兰羊等珍稀动物。 

##亚斯蒙德国家公园 
  亚斯蒙德国家公园位于德国东北部的亚斯蒙德半岛，在这里您会惊奇地发现，如此狭小的空间竟然有如此丰富多样的自然景观。这里有星罗棋布的沼泽地、湿草地和干草地。最著名的当属白垩岩崖，著名画家卡斯帕尔·大卫·弗里德里希在这里画出了著名油画《吕根岛上的白垩岩》。此外，该国家公园还拥有施图布尼茨高地山毛榉森林，这片森林自13世纪起逐渐形成。 

##石荷州北海浅滩国家公园 
  公园全称石勒苏益格－荷尔斯泰因州北海浅滩国家公园，是中欧地区面积最大的国家公园。这里有世界上最大的成片浅滩区，从荷兰的北海海滨向北一直延伸到丹麦，石勒苏益格－荷尔斯泰因州1/3的面积都属于该国家公园。这里是一个受到潮汐作用影响的地带，涨潮时被海水淹没，退潮时又会变得干燥，在全世界独一无二。这里有沙丘、海滩和盐碱草地，以及多达3200种的各式动植物。著名景点有鲸鱼宫、腓特烈斯科格海豹宫等。 

##下萨克森州北海浅滩国家公园 
  下萨克森北海浅滩国家公园位于德国北部的高纬度地带，下萨克森州北海海滨，它保护着埃姆斯河与易北河之间的近海浅滩，包括隔海相望的东弗里西亚群岛。这里有典型的盐碱草地、丹加斯特附近的沿海岸高燥地峭壁以及泽厄施泰特附近“漂浮的沼泽地”——德国目前惟一一处完好的堤外沼泽地。 

##汉堡北海浅滩国家公园 
  汉堡北海浅滩国家公园是3个北海浅滩国家公园中最小的一座。它主要由3个岛屿（遍地长满青草绿树的“诺伊韦尔克”岛、“沙尔赫恩”沙丘岛和用泥沙进行人工加固的“尼格赫恩”岛）组成，约有40人居住。这个地处德国北部的群岛紧靠易北河的入海口，面对着库克斯港，它保护着近1.2万公顷的浅滩景观。 

{% comment %}
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3&key=AIzaSyBR0NgEYSTNc4qn2CQeHp8lYj49mbu2UGw&sensor=false"></script>
<script type="text/javascript" src="/assets/themes/twitter/js/markerwithlabel.js"></script>
<script type="text/javascript">
    function initmap() {
	var locations = [
     		['Berchtesgaden', 47.55,12.916635,'#wzj1','<a href="#Berchtesgaden">Berchtesgaden</a>'],
     		['test', 51.082822,10.933578, '#wzj2' ,'loc2'],
     		['测试', 49.082822,12.433578, '#wzj3' ,'loc3']
	];
	var mapOptions = {
          center: new google.maps.LatLng(51.002822,10.433578),
          zoom: 6,
	  mapTypeId: google.maps.MapTypeId.HYBRID
        };
        var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
	for (var i = 0; i < locations.length; i++) {
		var marker = new MarkerWithLabel({
			position: new google.maps.LatLng(locations[i][1], locations[i][2]),
			draggable: false,
			raiseOnDrag: true,
			map: map,
			url: locations[i][3],
			labelContent: locations[i][0],
			labelAnchor: new google.maps.Point(22, 0),
			labelClass: "labels",
			labelStyle: {opacity: 0.65}
		});
    		attachSecretMessage(marker, i);
	}
	function attachSecretMessage(marker, i) {
  		var infowindow = new google.maps.InfoWindow({ content: locations[i][4]});
  		google.maps.event.addListener(marker, 'click',    function() {infowindow.open(map, marker);map.panTo(marker.getPosition());});
  		google.maps.event.addListener(marker, 'dblclick', function() {window.location.href = marker.url;});
	}
	google.maps.event.addDomListener( document.getElementById("icon-resize"),"click",function(){ google.maps.event.trigger(map, 'resize');});
    }
    google.maps.event.addDomListener(window, "load", initmap);
</script>

<div id="map-canvas" style="height:600px"></div>
{% endcomment %} 
