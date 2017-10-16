#!/bin/bash

set -e

TEST="shift_register"
GREEN='\033[0;32m'
NC='\033[0m' # No Color

export MANTLE="coreir"
echo -e "Running magma to generate coreir .json"
../magma/bin/magma -o coreir -m coreir $TEST.py

echo -e "Running coreir to convert .json circuit to .v (verilog)"
coreir -i build/$TEST.json -o build/$TEST.v

echo -e "Generating test vectors from silica"
../test-vectors -i $TEST.py -o build/$TEST.vec -n 32

echo -e "Running verilator test"
../coreir-test -i build/$TEST.json -t build/$TEST.vec

echo -e "${GREEN}PASSED (magma->coreir->verilog + verilator)${NC}"

echo -e "Running coreir to convert .json circuit to .fir (firrtl)"
coreir -i build/$TEST.json -o build/$TEST.fir

echo -e "Running firrtl-interpreter test"
../firrtl-interpreter/run-test-vec.sh -f build/$TEST.fir -tv build/$TEST.vec -so

echo -e "${GREEN}PASSED (magma->coreir->firrtl + firrtl-interpreter)${NC}"
