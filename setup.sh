#!/bin/bash

git submodule init
git submodule update

cd coreir
make build
make coreir
cd ..

cd firrtl
sbt compile
sbt assembly
sbt publish-local
cd ..

cd firrtl-interpreter
sbt
cd ..
