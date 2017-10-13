#!/bin/bash

magma -o coreir -m coreir counter.py
coreir -i build/counter.json -o build/counter4.v
python gen_counter_test_vectors.py
python run_verilator_test.py
