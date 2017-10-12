#!/bin/bash

magma -o coreir -m coreir counter.py
coreir -i build/counter.json -o build/counter4.v
