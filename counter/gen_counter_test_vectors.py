import os
os.environ["MANTLE"] = "coreir"
from magma.testing.coroutine import coroutine, testvectors

from counter import main


@coroutine
def counter4_sim():
    while True:
        for i in range(0, 1<<4):
            O = i
            COUT = int(i == (1 << 4) - 1)  # Counter sets COUT when the next value is 0
            yield O, COUT
from counter import main

# compile("build/Counter4", main, output="coreir")


testvectors = testvectors(main, counter4_sim(), (1 << 4) * 2)
with open("build/counter.vec", "w") as vec:
    lines = []
    for outputs in testvectors:
        for port_name, value in outputs.items():
            vec.write(",".join(("expect", port_name, str(value))))
            vec.write("\n")
        vec.write("step, 1\n")
