#!/bin/sh -e
#
# apollo-lib by Bucanero

## Download the source code.
wget --no-check-certificate https://github.com/bucanero/apollo-lib/tarball/master -O apollo-lib.tar.gz 

## Unpack the source code.
rm -Rf apollo-lib && mkdir apollo-lib && tar --strip-components=1 --directory=apollo-lib -xvzf apollo-lib.tar.gz && cd apollo-lib

## Compile and install.
${MAKE:-make} install
