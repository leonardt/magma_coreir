#!/bin/bash

export MANTLE="coreir"
export DYLD_LIBRARY_PATH=$PWD/../coreir/lib:$DYLD_LIBRARY_PATH
export PYTHONPATH=$PWD/../magma:$PWD/../mantle:$PWD/../coreir:$PYTHONPATH
../magma/bin/magma -o coreir -m coreir counter.py
../test-vectors -i counter.py -o build/counter.vec -n 32
../coreir-test -i build/counter.json -t build/counter.vec
../coreir/bin/coreir -i build/counter.json -o build/counter.fir
../firrtl-interpreter/run-test-vec.sh -f build/counter.fir -tv build/counter.vec -so
