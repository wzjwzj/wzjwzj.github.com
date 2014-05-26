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

most problems caused by manual install on cygwin platform.
package installation on cygwin is realy a great challenge. 

<!--end_excerpt-->

first of all we come to one of the most common problem always get after updating or installing packages.

Sometimes, after updating or installing packages, you&prime;ll start to get strange errors related to "fork()" or .dll loading. These errors are usually solved by rebasing your packages.

Now that `no Cygwin services are running`, you can rebase your packages. Open a Windows command prompt (by going to the `Run` menu and entering `cmd`). Once there, type or right-click and paste the following commands. Be patient, this&prime;ll take a minute:

```
\cygwin\bin\dash -c '/usr/bin/rebaseall'
exit
```

Under Windows 7 (and possibly Vista), the above may not be able to rebase everything due to permissions. So instead, go to C:\cygwin\bin, and via right-click run the file dash.exe as Administrator, and then at the dash command prompt, type the following commands:

```
/usr/bin/rebaseall -v
exit
```

Rebasing all your packages will take a few minutes but should resolve the forking errors. Unfortunately, this seems to be machine-specific and can&prime;t be done by Cygwin&prime;s upstream.

If you want to execute this in an BATCH installation script, you can use:

```
D:\cygwin\bin\dash.exe -c '/usr/bin/rebaseall -v'
```

---


## SAC	[ok]
@ `2014/05/22`, `cygwin`:     
>install `sac-101.5` on `cygwin`,  source-code copy from ubuntu. 

```sh
# check README for instruction
cd /usr/local/local_software/sac-101.5
make
make install     # default install on /usr/local/sac
vim ~/.bashrc    
```

For bash, edit ~/.bashrc adding the lines

>export SACHOME=/usr/local/sac     
>source ${SACHOME}/bin/sacinit.sh     


## HDF5 [ok]

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

`hdf5-1.8.13-cygwin32-static.tar.gz` include fortran interface ,however have conflict with the version problem.  `Fatal Error: Wrong module version '10' (expected '4') for file 'hdf5.mod' opened at (1)` , resort to self compile.

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

## libmseed [ok]
@ `2014/05/22`, `cygwin`:          
>download `libmseed-2.12.tar.gz` from `https://seiscode.iris.washington.edu/projects/libmseed/files`      
>extract to `/usr/local/local_software/libmseed-2.12`      

```sh
  # check `INSTALL` and `Makefile` for instruction
  make gcc                               #  default with "cc"
  cp libmseed.a /usr/local/lib/
  cp *.h /usr/local/include/
```

## kiwi [ binary ok ]
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
+ make
+ make check

```sh
$ cat Makefile.local
## Fortran 95 compiler:
FORTRANC = gfortran

## Adjust if HDF5 is installed at a custom location
INCHDF = -I/usr/local/hdf5/include
LIBHDF = -L/usr/local/hdf5/lib -lhdf5_fortran -lhdf5 -lz -lsz

## Adjust if FFTW is installed at a custom location
INCFFTW = -I/usr/include
LIBFFTW = -L/usr -lfftw3f

## Uncomment to disable SAC IO support to not depend on libsacio
LIBSAC = `sac-config -c -l sacio sac`
```

edit ~/.bashrc, add following environment variables:
> `export PATH=$PATH:/usr/local/kiwi/bin`   
> `export KIWI_HOME=/usr/local/kiwi/share/kiwi`   


Install kiwi python modules
```sh
# in the kiwi source directory:
cd python
sudo python setup.py install
```
### Pyrocko
pyrocko < scipy < numpy,atlas,lapack < ... 

#### nose [ok]
@ `2014/05/22`, `cygwin`:     
only for test numpy, not for use it. see `INSTALL.txt` in numpy-1.8.1

```sh
 tar xzf nose-1.3.3.tar.gz
 cd nose-1.3.3/
 python setup.py build
 python setup.py install
```

#### lapack [ _ok_ ]
@ `2014/05/22`, `cygwin`:     
[ build lib: ok, testing: failed, `cp *.a /usr/local/lib`;  **cygwin already exist in**  `/usr/lib` ]

```sh
tar zxf lapack-3.5.0.tgz
cd lapack-3.5.0/
cp make.inc.example make.inc
vim Makefile   # edit line: set variable, "lib: blaslib variants lapacklib tmglib"
make lib       # make : default make all, would test, however fail when test TESTING/xeights  " (core dumped) ./xeigtsts < sed.in" 
cp librefblas.a libblas.a   && cp *.a /usr/local/lib
cd .. && rm lapack-3.5.0/
```

#### atlas
@ `2014/05/24`, `cygwin`:     
atlas3.10.1.tar.bz2 [install got some problems]


+ configure need without `-Fa alg`
+ need modify  `CONFIG/src/atlconf_misc.c` add following code in function  `char *GetPathEnvVar(void)`

```c
      else if (path[i] == '(')
      {
         *p = '\\';
	 p[1] = '(';
	 p += 2;
      }
      else if (path[i] == ')')
      {
         *p = '\\';
	 p[1] = ')';
	 p += 2;
      }
```

<br/>

```sh
 tar jxvf atlas3.10.1.tar.bz2
 cd ATLAS/
 # view  INSTALL.txt for instructions
 mkdir atlas_build_cygwin ; cd atlas_build_cygwin
 ../configure -b 32 -D c -DPentiumCPS=2494  --with-netlib-lapack-tarfile=/usr/local/local_software/lapack-3.5.0.tgz   --shared   --prefix=/usr/local/ATLAS
 make              # tune and compile library
 make check        # perform sanity tests,
 make ptcheck      # checks of threaded code for multiprocessor systems
 make time         # provide performance summary as % of clock rate
 make install      # Copy library and include files to other directories :: 
                   #   make install:  configure with shared, lib***.a :ok lib***.so failed. 
```

#### NumPy
@ `2014/05/24`, `cygwin`:

view `site.cfg.example`, `INSTALL.txt`
Prerequisites:  []: means optional, 
 ATLAS (or OpenBLAS, or MKL), [ FFTW ( or djbfft) ], [ UMFPACK ] ...

```sh
 tar zxf numpy-1.8.1.tar.gz
 cd  numpy-1.8.1
 # view INSTALL.txt for instructions
 # view site.cfg    for instructions
 cp site.cfg.example site.cfg
 vim site.cfg   # Edit site.cfg for cumstom setting
 python setup.py build --fcompiler=gnu95    
 python setup.py install
```


$cat site.cfg

```python
[atlas]
libraries = lapack,f77blas,cblas,atlas
library_dirs = /usr/local/ATLAS/lib
include_dirs = /usr/local/ATLAS/include
[amd]
amd_libs = amd
[umfpack]
umfpack_libs = umfpack
[fftw]
libraries = fftw3
```

#### scipy

```sh
 python setup.py build --fcompiler=gnu95    
 python setup.py install  # address space needed by 'lapack_lite.dll' (0x610000) is already occupied
```
cygwin ash rebase

### rdseed [pre-build ok]

```sh
#download src code from `http://www.iris.edu/forms/rdseed_request.htm`
tar xzf rdseedv5.3.1.tar.gz
cd rdseedv5.3.1
cp rdseed.windows.cygwin_32.exe /usr/local/bin
```

view `README`

Already five excutables, if you do not want use pre-build version, then recompile it.
for 32-bit comilation

uncomment the cflags line `#CFLAGS = -O -m32 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE` to force 32-bit compilation.

```sh
cp   Makefile makefile_cygwin
vim  makefile_cygwin         # edit cflags  
make clean                 
make -f makefile_cygwin      # faild can not find -lnsl
```

### GMT

### gmtpy
view `http://emolch.github.io/gmtpy/install.html`

##### pycdf 
view `http://pysclint.sourceforge.net/pycdf/INSTALL
To install, follow these steps.

1-Install the Python `devel` package, holding the python libraries and header files.     

2-Install the netcdf library. Source code is available at:    
  `http://www.unidata.ucar.edu/software/netcdf` . Binary packages    
  are available for most popular environments.    

3-Install one of the python Numeric or numarray packages.     
  Numeric source code is available at: numpy.sourceforge.net,     
  and numarray source code at `http://sourceforge.net/projects/numpy` .    
  Binary packages are available for most popular environments.   

4-Uncompress and untar the pycdf tar ball, then cd to the    
  pycdf-xxx directory just created.   

5-Edit the `setup.py` file, and locate the line reading `USE = ...`.   
  Set `USE = NUMERIC` to create a Numeric-based version of pycdf.    
  Set `USE = NUMARRAY` to create a numarray-based version.   

5-If your netcdf library lives in a non-standard directory   
  (eg not on the standard library search path),   
  edit the `setup.py` file and locate the line reading:   

    #library_dirs=["non standard path where libs live"],   

  Remove the pound sign to uncomment the line, and enter the non-
  standard path in quotes between the square brackets. For ex.:

    library_dirs = ["/usr/local/netcdf-3.5.0/lib"],

6-As root, execute the command:
    python setup.py install


### python-progressbar [ok]

```sh
tar xzf progressbar-2.2.tar.gz
cd progressbar-2.2/
python setup.py build
python setup.py install
```

example: 

```python
$ python
>>> from progressbar import ProgressBar
>>> pbar = ProgressBar(10)
>>> for i in range(10):
...     pbar.update(i+1)
... 
100% |######################################################################|
```

### Cheetah  [ok]

模板引擎

```sh
tar xzf Cheetah-2.4.4.tar.gz
cd Cheetah-2.4.4/
python setup.py build
python setup.py install
```

### convert [ok]

```sh
 #download `ImageMagick-i686-pc-cygwin.tar.gz` via `http://www.imagemagick.org/script/binary-releases.php#unix`
 tar xzf ImageMagick-i686-pc-cygwin.tar.gz
 cd ImageMagick-6.8.8/
 # pre-build
 vim ~/.bashrc  # export MAGICK_HOME="$HOME/ImageMagick-6.8.8" ; export PATH="$MAGICK_HOME/bin:$PATH"
```


### matplotlib [ok]

@ `2014/05/24`, `cygwin`:     

lib/matplotlib/tri/_tri.cpp:2180:28: 4mNs#:expected unqualified-id before numeric constant    
>There is a variable called "_C" defined in lib/matplotlib/tri/_tri.h on line 821 and invoked in tri.cpp on lines 2180 and 2186. For some reason gcc doesn&prime;t like this (is it a reserved word in some architecture?). I just renamed the variable to "_Co" in both tri.h and tri.cpp, and the compilation finished successfully.

/usr/share/python2.7/CXX/cxxsupport.cxx:40:38: error: Src/Python2/cxxsupport.cxx: No such file or directory
> cp CXX/Python2 src/Python2 -r

```sh
python setup.py build
python setup.py install 
```

## ruby-2.1.2
ruby-2.1.2: troubleshooting
vim ruby-2.1.2/ext/digest/md5/Makefile /ruby-2.1.2/ext/digest/sha1/Makefile /ruby-2.1.2/ext/digest/sha1/Makefile
add cflag `-DHAVE_OPENSSL_MD5_H -DSHA2_USE_OPENSSL`
