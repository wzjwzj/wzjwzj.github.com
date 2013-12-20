#!/usr/bin/sh
find /cygdrive/c/Users/Administrator/Dropbox/应用/FarBox/wzjwzj.farbox.com/ | egrep ".md$" | gawk '{print "cp",$1,"./"} END {print "rm  comment_js.md isaid.md"}'
