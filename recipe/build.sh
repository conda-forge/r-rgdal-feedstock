#!/bin/bash

export LD_LIBRARY_PATH=${PREFIX}/lib/:${LD_LIBRARY_PATH}

# The `ACCEPT_USE_OF_DEPRECATED_PROJ_API_H` is a temporary solution and won't work with proj4 7.
export PKG_CPPFLAGS="-I${PREFIX}/include -DACCEPT_USE_OF_DEPRECATED_PROJ_API_H=1"
export CFLAGS="-I${PREFIX}/include -DACCEPT_USE_OF_DEPRECATED_PROJ_API_H=1  ${CFLAGS}"

$R CMD INSTALL --build .
