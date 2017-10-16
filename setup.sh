#!/bin/bash

git submodule init
git submodule update

cd coreir
make build
cd ..

cd firrtl-interpreter
sbt
cd ..
