from mantle.common import DefineCounter
from magma.transforms import flatten

Counter4 = DefineCounter(4)
print(repr(Counter4))
main = flatten(Counter4).circuit
