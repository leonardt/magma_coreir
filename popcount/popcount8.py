from mantle.util.compressor import DefinePopCount
from magma.transforms import flatten

PopCount8 = DefinePopCount(8)
print(repr(PopCount8))
main = flatten(PopCount8).circuit
