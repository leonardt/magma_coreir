Magma, coreir, firrtl interop tests.

**NOTE:** Currently depends on the `firrtl` branches of coreir, pycoreir, mantle, and magma

# Setup
```
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
```
