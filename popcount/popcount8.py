from mantle.util.compressor import DefinePopCount
from magma.transforms import flatten
from magma.testing.newfunction import testvectors

PopCount8 = DefinePopCount(8)
print(repr(PopCount8))
main = flatten(PopCount8).circuit

testvectors = testvectors(main, lambda x: bin(x).count('1'))

with open("build/popcount8.vec", "w") as vec:
    lines = []
    for test in testvectors:
        for i, (name, port) in enumerate(main.interface.ports.items()):
            if port.isoutput():
                vec.write("poke, {}, {}\n".format(name, test[i]))
        for i, (name, port) in enumerate(main.interface.ports.items()):
            if port.isinput():
                vec.write("expect, {}, {}\n".format(name, test[i]))
