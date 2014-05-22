---
layout: post
title: "installation-info"
category: "uncategorized"
tags: info
 
toc:
widget:
mathjax:
prettify:
htmlhead:
---
{% include JB/setup %}
 
<!--end_excerpt-->


## SAC
@ `2014/05/22`, `cygwin`:     
>install `sac-101.5` on `cygwin`,  source-code copy from ubuntu. 

```bash
# check README for instruction
cd /usr/local/local_software/sac-101.5
make
make install     # default install on /usr/local/sac
vim ~/.bashrc    
```

For bash, edit ~/.bashrc adding the lines

>export SACHOME=/usr/local/sac     
>source ${SACHOME}/bin/sacinit.sh     


## HDF5

@ `2014/05/22`, `cygwin`:        

> view `http://www.hdfgroup.org/ftp/HDF5/current/src/unpacked/release_docs/INSTALL_Cygwin.txt` for instruction    
> `h5cc -showconfig` to check configuration or view `your_hdf5_install_path/lib/libhdf5.settings`, `README.txt`   

Dependencies 
+ zlib : exist 
+ Szip : download from `http://www.hdfgroup.org/doc_resource/SZIP/`,  `./configure --prefix=/usr/local`, `make`,`make install`

Install HDF5 on Cygwin

** pre-build binary: **

+  download `pre-build binary` distribution `hdf5-1.8.13-cygwin32-static.tar.gz` from `http://www.hdfgroup.org/HDF5/release/obtain5.html`        
+  extract to /usr/local/local_software/hdf5-1.8.13-pre-build-binary-cygwin32-static-CYGWIN_NT-6.11.7.28      
+  uninstall old version and update to pre-build cygwin version.
+  `hdf5-1.8.13-cygwin32-static.tar.gz` include fortran interface , however `Fatal Error: Wrong module version '10' (expected '4') for file 'hdf5.mod' opened at (1)`    

```sh
 cd hdf5-1.8.10-patch1
 make uninstall ; make uninstall-all 
 cp /usr/local/local_software/hdf5-1.8.13-pre-build-binary-cygwin32-static-CYGWIN_NT-6.11.7.28 /usr/local/hdf5
```
** source code for all platform: **

+ download src files via `http://www.hdfgroup.org/HDF5/release/obtainsrc.html`
 

```sh
  ./configure 
      --with-szlib=/usr/local/ 
      --with-zlib=/usr/include,/usr/lib 
      --prefix=/usr/local/hdf5 
      --enable-cxx 
      --enable-fortran
  make                   # make > "make_out_info"  
  make check             # make check > "make_check_out_info"
  make install           # make install > "make_instal_out_info"
```


## libmseed
@ `2014/05/22`, `cygwin`:          
>download `libmseed-2.12.tar.gz` from `https://seiscode.iris.washington.edu/projects/libmseed/files`      
>extract to `/usr/local/local_software/libmseed-2.12`      

```bash
  # check `INSTALL` and `Makefile` for instruction
  make gcc                               # `make` default with `cc`
  cp libmseed.a /usr/local/lib/
  cp *.h /usr/local/include/
```

## kiwi
@ `2014/05/22`, `cygwin`:          
>view `https://github.com/emolch/kiwi/wiki/Installation` for instruction   

Dependencies   

+ FFTW3
+ libmseed
+ sac

+ `cd /usr/local/local_software`    
+ `git clone git://github.com/emolch/kiwi.git kiwi`    
+ `cp Makefile.local.example Makefile.local`    
+ Edit Makefile.local 
+ Edit hostinfo.pl  add `$os = 'linux' if $uname_a =~ /Cygwin/i;`  treat Cygwin as linux.

  
Administrator@WIN-N3R5KVBJ1GG /usr/local/local_software/kiwi
$ cat Makefile.local
FORTRANC = gfortran

