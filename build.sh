#!/bin/bash
cd build
rm -rf *
cmake -DCMAKE_TOOLCHAIN_FILE=../toolchain.cmake ..
make
