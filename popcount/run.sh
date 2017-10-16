#!/bin/bash

set -e

TEST="popcount8"
GREEN='\033[0;32m'
NC='\033[0m' # No Color

export MANTLE="coreir"
echo -e "Running magma to generate coreir .json"
magma -o coreir -m coreir popcount8.py

echo -e "Running coreir to convert .json circuit to .v (verilog)"
coreir -i build/popcount8.json -o build/popcount8.v

echo -e "Generating test vectors from silica"
../test-vectors -i popcount8.py -o build/popcount8.vec -n 32

echo -e "Running verilator test"
../coreir-test -i build/popcount8.json -t build/popcount8.vec

echo -e "${GREEN}PASSED (magma->coreir->verilog + verilator)${NC}"

echo -e "Running coreir to convert .json circuit to .fir (firrtl)"
coreir -i build/popcount8.json -o build/popcount8.fir

echo -e "Running firrtl-interpreter test"
../firrtl-interpreter/run-test-vec.sh -f build/popcount8.fir -tv build/popcount8.vec -so

echo -e "${GREEN}PASSED (magma->coreir->firrtl + firrtl-interpreter)${NC}"
