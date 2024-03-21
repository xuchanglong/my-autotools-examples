#! /bin/bash

if [ "x$1" = "xbuild" ]; then
    autoreconf --install --force -v
    ./configure
    make -j$(nproc)
elif [ "x$1" = "xclean" ]; then
    rm -rf .libs
    rm -rf autom4te.cache
    rm -rf config
    rm -rf examples/step-2/.deps
    rm -rf examples/step-2/.dirstamp
    rm -rf examples/step-2/step-2.o
    rm -rf m4
    rm -rf source/.deps
    rm -rf source/.libs
    rm -rf source/hello.lo
    rm -rf source/hello.o
    rm -rf source/.dirstamp
    rm -rf aclocal.m4
    rm -rf config.log
    rm -rf config.status
    rm -rf configure
    rm -rf libstep2.la
    rm -rf libtool
    rm -rf Makefile
    rm -rf Makefile.in
    rm -rf step-2
fi
