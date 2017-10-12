import os
os.environ["MANTLE"] = "coreir"
from magma import compile
from magma.testing.coroutine import coroutine, testvectors
from magma.testing.verilator import run_verilator_test

from counter import main


@coroutine
def counter4_sim():
    COUT = 0
    while True:
        for i in range(0, 1<<4):
            O = i
            yield O
            COUT = 0
        COUT = 1
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


with open("build/Counter4_verilator_harness.cpp", "w") as verilator_harness:
    verilator_harness.write('''\
#include "V{name}.h"
#include "verilated.h"
#include <cassert>
#include <iostream>

int main(int argc, char **argv, char **env) {{
    Verilated::commandArgs(argc, argv);
    V{name}* top = new V{name};
'''.format(name=main.__name__))

    for test_vector in testvectors:
        for port_name, value in test_vector.items():
            verilator_harness.write("    assert(top->{} == {});\n".format(port_name, value))
        verilator_harness.write("    top->clock ^= 1;\n")
        verilator_harness.write("    top->eval();\n")
        verilator_harness.write("    top->clock ^= 1;\n")
        verilator_harness.write("    top->eval();\n")

run_verilator_test("counter4", "Counter4_verilator_harness", "Counter4")
