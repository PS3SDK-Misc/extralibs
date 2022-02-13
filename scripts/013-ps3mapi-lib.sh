#!/bin/sh -e
#
# ps3mapi-lib by Bucanero

## Download the source code.
wget --no-check-certificate https://github.com/bucanero/ps3mapi-lib/tarball/master -O ps3mapi-lib.tar.gz 

## Unpack the source code.
rm -Rf ps3mapi-lib && mkdir ps3mapi-lib && tar --strip-components=1 --directory=ps3mapi-lib -xvzf ps3mapi-lib.tar.gz && cd ps3mapi-lib

## Compile and install.
${MAKE:-make} install
