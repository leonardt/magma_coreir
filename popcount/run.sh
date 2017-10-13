#!/bin/bash

export MANTLE="coreir"
magma -o coreir -m coreir popcount8.py
../test-vectors -i popcount8.py -o build/popcount8.vec -n 32
../coreir-test -i build/popcount8.json -t build/popcount8.vec
