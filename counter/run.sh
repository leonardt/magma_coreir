#!/bin/bash

magma -o coreir -m coreir counter.py
python gen_counter_test_vectors.py
python coreir-test.py -i build/counter.json -t build/counter.vec
