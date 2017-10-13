#!/bin/bash

magma -o coreir -m coreir counter.py
python gen_counter_test_vectors.py
../coreir-test -i build/counter.json -t build/counter.vec
