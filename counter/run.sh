#!/bin/bash

export MANTLE="coreir"
magma -o coreir -m coreir counter.py
../test-vectors -i counter.py -o build/counter.vec -n 32
../coreir-test -i build/counter.json -t build/counter.vec
