import os, sys, getopt
import coreir

def usage():
    print('usage: magma [-b board] [-o outputformat] file\n', file=sys.stderr)
    print('Options', file=sys.stderr)
    print('-h          help', file=sys.stderr)
    print('-i design.json', file=sys.stderr)
    print('-t design_test_vectors.vec', file=sys.stderr)
    print('-o harness.cpp', file=sys.stderr)
    sys.exit(1)

try:
    opts, args = getopt.getopt(sys.argv[1:], 'i:t:o:')
except Exception as e:
    print(e, file=sys.stderr)
    usage()

coreir_file = None
test_vector_file = None
for o, a in opts:
    if o == '-h':
        usage()
        exit(0)
    elif o == '-i':
        coreir_file = a
    elif o == '-t':
        test_vector_file = a
    elif o == '-o':
        harness_file = a

if coreir_file is None:
    raise Exception("-i <coreir_file> required")

if test_vector_file is None:
    raise Exception("-t <test_vector_file> required")

if harness_file is None:
    raise Exception("-o <harness_file> required")

from collections import namedtuple
from magma.testing.verilator import run_verilator_test

testvectors = []
with open(test_vector_file, "r") as vec:
    for line in vec.readlines():
        testvectors.append(line.split(','))

context = coreir.Context()
module = context.load_from_file(coreir_file)

with open(harness_file, "w") as verilator_harness:
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
'''.format(name=module.name))

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

# run_verilator_test(base_name, "{}_verilator_harness".format(base_name), module.name)
