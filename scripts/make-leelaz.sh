#!/bin/bash
git clone --recursive --branch next http://github.com/gcp/leela-zero.git
cd leela-zero

# Use stand alone directory to keep source dir clean
mkdir build && cd build
cmake -DUSE_CPU_ONLY=1 ..
cmake --build .
./tests
mv leelaz ../..
cd ../..