#! /bin/bash

if [ "x$1" = "xbuild" ]; then
    autoreconf --install --force -v
    ./configure
    make -j$(nproc)
elif [ "x$1" = "xclean" ]; then
    rm -rf .libs
    rm -rf autom4te.cache
    rm -rf config
    rm -rf examples/step-3/.deps
    rm -rf examples/step-3/.dirstamp
    rm -rf examples/step-3/step-3.o
    rm -rf m4
    rm -rf source/hello/.deps
    rm -rf source/hello/.libs
    rm -rf source/hello/.dirstamp
    rm -rf source/hello/hello.lo
    rm -rf source/hello/hello.o
    rm -rf source/helloint/.deps
    rm -rf source/helloint/.libs
    rm -rf source/helloint/.dirstamp
    rm -rf source/helloint/hello.lo
    rm -rf source/helloint/hello.o
    rm -rf aclocal.m4
    rm -rf config.log
    rm -rf config.status
    rm -rf configure
    rm -rf libhello.la
    rm -rf libhelloint.la
    rm -rf libtool
    rm -rf Makefile
    rm -rf Makefile.in
    rm -rf step-3
fi
