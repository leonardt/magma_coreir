#!/bin/bash

git submodule init
git submodule update

pip install -e magma
pip install -e mantle
pip install -e pycoreir

cd coreir
make install
cd ..

cd firrtl
sbt compile
sbt assembly
sbt publish-local
cd ..

cd firrtl-interpreter
sbt
cd ..
