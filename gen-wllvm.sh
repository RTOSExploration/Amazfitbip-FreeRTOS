#!/usr/bin/env bash

export PATH=`realpath ../gcc-arm-none-eabi-8-2018-q4-major/bin`:$PATH
make clean && make -C libopencm3 clean
genbc ../bitcode-db/Amazfitbip -c "make -j$(nproc)"
