#! /bin/bash

if [ "x$1" = "xbuild" ]; then
    autoreconf --install --force -v
    ./configure
    make -j$(nproc)
elif [ "x$1" = "xclean" ]; then
    rm -rf autom4te.cache
    rm -rf aclocal.m4
    rm -rf config.log
    rm -rf config.status
    rm -rf configure
    rm -rf depcomp
    rm -rf INSTALL
    rm -rf install-sh
    rm -rf install-sh~
    rm -rf Makefile
    rm -rf Makefile.in
    rm -rf missing
    rm -rf step-1
    rm -rf source/.deps
    rm -rf source/.dirstamp
    rm -rf source/step-1.o
fi
