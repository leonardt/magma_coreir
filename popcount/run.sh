#!/bin/bash

magma -o coreir -m coreir popcount8.py
coreir -i build/popcount8.json -o build/popcount8.v
coreir -i build/popcount8.json -o build/popcount8_after_generators.json -p 'rungenerators'
