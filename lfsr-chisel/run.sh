#!/bin/bash

set -e

TEST="lfsr"
GREEN='\033[0;32m'
NC='\033[0m' # No Color

mkdir -p build

echo -e "Running firrtl-interpreter test on $TEST.fir with $TEST.vec"
cd ../firrtl-interpreter
./run-test-vec.sh -f ../lfsr-chisel/$TEST.fir -tv ../lfsr-chisel/$TEST.vec -so
cd ../$TEST-chisel

echo -e "${GREEN}PASSED (firrtl + firrtl-interpreter)${NC}"

echo -e "Running firrtl to generate coreir .json from $TEST.fir"
../firrtl/utils/bin/firrtl -i $TEST.fir -o build/$TEST.json -X coreir

echo -e "Running verilator test"
../coreir-test -i build/$TEST.json -t $TEST.vec

echo -e "${GREEN}PASSED (firrtl->coreir->verilog + verilator)${NC}"
