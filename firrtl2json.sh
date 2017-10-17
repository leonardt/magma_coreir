#!/bin/bash

set -e

GREEN='\033[0;32m'
NC='\033[0m' # No Color

#./firrtl/utils/bin/firrtl -i counter/wrappingcounter.fir -o build/wrappingcounter.json -X coreir
#./coreir-test -i build/wrappingcounter.json -t counter/wrappingcounter.tstvec

./firrtl/utils/bin/firrtl -i lfsr/lfsr.fir -o build/lfsr.json -X coreir
./coreir-test -i build/lfsr.json -t lfsr/lfsr.tstvec

echo -e "${GREEN}PASSED${NC}"
