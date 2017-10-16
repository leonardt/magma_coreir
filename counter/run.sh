#!/bin/bash

set -e

export MANTLE="coreir"
echo "Running magma to generate coreir .json"
magma -o coreir -m coreir counter.py

echo "Running coreir to convert .json circuit to .v (verilog)"
coreir -i build/counter.json -o build/counter.v

echo "Generating test vectors from silica"
../test-vectors -i counter.py -o build/counter.vec -n 32

echo "Running verilator test"
../coreir-test -i build/counter.json -t build/counter.vec

echo "PASSED (magma->coreir->verilog + verilator)"

echo "Running coreir to convert .json circuit to .fir (firrtl)"
coreir -i build/counter.json -o build/counter.fir

echo "Running firrtl-interpreter test"
../firrtl-interpreter/run-test-vec.sh -f build/counter.fir -tv build/counter.vec -so

echo "PASSED (magma->coreir->firrtl + firrtl-interpreter)"
