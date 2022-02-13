#!/bin/sh -e
#
# libtre-ps3 ported by Bucanero

## Download the source code.
wget --no-check-certificate https://github.com/bucanero/libtre-ps3/tarball/master -O libtre-ps3.tar.gz 

## Unpack the source code.
rm -Rf libtre-ps3 && mkdir libtre-ps3 && tar --strip-components=1 --directory=libtre-ps3 -xvzf libtre-ps3.tar.gz && cd libtre-ps3

## Compile and install.
${MAKE:-make} --file=ps3/Makefile install
