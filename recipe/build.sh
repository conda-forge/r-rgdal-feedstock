#!/bin/bash

export DISABLE_AUTOBREW=1
export LD_LIBRARY_PATH=$PREFIX/lib/:${LD_LIBRARY_PATH}

$R CMD INSTALL --build .
