---
layout: post
title: 用dropbox虚拟github建立私有仓库
date: 2013-12-18 22:48
status: public
url:
tags: dropbox github
description: 
any_key:
categories: 杂类
---

[TOC]

##用dropbox虚拟github建立私有仓库[^1]
考察一般github仓库托管地址  `https://github.com/[usrname]/[repository].git`
不失一般性为此在dropbox某文件夹下建立仓库，作为remote端    
 `[~/dropbox/aplication/github.com]/[usrname]/[repository].git`  
本地建立仓库目录:    
`${client}/[github.com]/[repository]`

##代码示例
    #!/usr/bin/sh

    # _configure  usr and project name
    usrname=guyueshuiming     
    repository=kiwi 

    # server
    server_basepath=~/dropbox/application/github.com
    # client
    client_basepath=~/github.com/
    
    if [ ! -d $server_basepath ]; then
        mkdir -p $server_basepath
    fi
    
    if [ ! -d $client_basepath ]; then
        mkdir -p $client_basepath
    fi
    
    # _implement
    git init --bare ${server_basepath}/${usrname}/${repository}
    git init ${client_basepath}/${repository}
    
    cd ${client_basepath}/${repository}
    touch README
    git add .
    git commit -m "add readme"
    git remote add origin ${server_basepath}/${usrname}/${repository}
    git push origin master
    
参考
[^1]: [http://weizhifeng.net/git-with-dropbox.html](http://weizhifeng.net/git-with-dropbox.html)