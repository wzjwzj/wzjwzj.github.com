---
layout: post
title: cygwin下个人使用过程中所遇问题汇总
date: 2013-12-14 10:28
status: public
url:
tags: cygwin
description:
any_key:
categories: 杂类
---

[TOC]

##jekyll in cygwin :
*   *Generating...   Liquid Exception: No such file or directory - C:\Windows\s ystem32\cmd.exe in _posts/……*
     **export COMSPEC=/cygdrive/c/Windows/System32/cmd.exe**
   
*   *Generating... which: no python2 in (/usr/local/GMT/bin:/usr/local/bin:……*
     **cp python2.7.exe python2.exe**
