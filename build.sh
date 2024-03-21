#! /bin/bash

if [ "x$1" = "xbuild" ]; then
    cd step-1
    ./build.sh build
    cd -

    cd step-2
    ./build.sh build
    cd -

    cd step-3
    ./build.sh build
    cd -

    cd step-4
    ./build.sh build
    cd -

    cd step-5
    ./build.sh build
    cd -
elif [ "x$1" = "xclean" ]; then
    cd step-1
    ./build.sh clean
    cd -

    cd step-2
    ./build.sh clean
    cd -

    cd step-3
    ./build.sh clean
    cd -

    cd step-4
    ./build.sh clean
    cd -

    cd step-5
    ./build.sh clean
    cd -
fi

