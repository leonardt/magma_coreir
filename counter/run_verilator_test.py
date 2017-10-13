import os
os.environ["MANTLE"] = "coreir"
from counter import main
from collections import namedtuple
from magma.testing.verilator import run_verilator_test

testvectors = []
with open("build/counter.vec", "r") as vec:
    for line in vec.readlines():
        testvectors.append(line.split(','))


with open("build/counter4_verilator_harness.cpp", "w") as verilator_harness:
    verilator_harness.write('''\
#include "V{name}.h"
#include "verilated.h"
#include <cassert>
#include <iostream>

void check(const char* port, int a, int b, int cycle) {{
    if (!(a == b)) {{
        std::cerr << \"Got      : \" << a << std::endl;
        std::cerr << \"Expected : \" << b << std::endl;
        std::cerr << \"Cycle    : \" << cycle << std::endl;
        std::cerr << \"Port     : \" << port << std::endl;
        exit(1);
    }}
}}

int main(int argc, char **argv, char **env) {{
    Verilated::commandArgs(argc, argv);
    V{name}* top = new V{name};
'''.format(name=main.__name__))

    cycle = 0
    for test_vector in testvectors:
        command = test_vector[0]
        if command == "step":
            verilator_harness.write("    top->CLK = 0;\n")
            verilator_harness.write("    top->eval();\n")
            verilator_harness.write("    top->CLK = 1;\n")
            verilator_harness.write("    top->eval();\n")
            cycle += 1
        else:
            port_name = test_vector[1]
            value = test_vector[2]
            verilator_harness.write("    check(\"{port_name}\", top->{port_name}, {expected}, {cycle});\n".format(port_name=port_name, expected=value, cycle=cycle))
    verilator_harness.write("}\n")

run_verilator_test("counter4", "counter4_verilator_harness", "Counter4")
