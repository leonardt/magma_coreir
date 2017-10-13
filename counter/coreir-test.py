import argparse
import subprocess

parser = argparse.ArgumentParser(description='Test a <coreir_design>.json with <testvectors>.vec')

parser.add_argument('-i', '--input', help=".json file from core:r", required=True)
parser.add_argument('-t', '--test_vectors', help=".vec file with test vectors", required=True)
args = parser.parse_args()

subprocess.call(['coreir', '-i', args.input, '-o', args.input.replace('.json', '.v')])

import coreir
from magma.testing.verilator import run_verilator_test

testvectors = []
with open(args.test_vectors, "r") as vec:
    for line in vec.readlines():
        testvectors.append(line.split(','))

context = coreir.Context()
module = context.load_from_file(args.input)

harness_file = args.input.replace(".json", "_verilator_harness.cpp")

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

run_verilator_test(args.input.replace(".json", "").replace("build/", ""), harness_file.replace("build/", "").replace(".cpp", ""), module.name)
