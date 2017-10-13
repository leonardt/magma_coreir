#!/bin/bash

export MANTLE="coreir"
magma -o coreir -m coreir shift_register.py
../test-vectors -i shift_register.py -o build/shift_register.vec -n 16
../coreir-test -i build/shift_register.json -t build/shift_register.vec
