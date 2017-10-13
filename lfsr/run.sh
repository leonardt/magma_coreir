#!/bin/bash

export MANTLE="coreir"
magma -o coreir -m coreir lfsr.py
../test-vectors -i lfsr.py -o build/lfsr.vec -n 16
../coreir-test -i build/lfsr.json -t build/lfsr.vec
