---
layout: page
title: "链接"
description: "some usefull links"
group: navigation
comments: false
htmlhead: 
widget: false
toc: false
osmplayer: true
---

<script type="text/javascript">
  $(function() {
    $("#youtube").osmplayer({
      width: '100%',
      height: '439px',
      playlist: 'https://gdata.youtube.com/feeds/api/playlists/3936178A38BB5F87?v=2&prettyprint=true'
    });
  });
</script>
<video id="youtube"></video>

<br/>

<script type="text/javascript">
  $(function() {
    $("#jojo-sucht-das-gluck").osmplayer({
      playlist: '/video/deutsch-lernen/jojo-sucht-das-gluck/playlist.xml',
      height: '439px'
    });
  });
</script>
<div id="jojo-sucht-das-gluck"></div>

