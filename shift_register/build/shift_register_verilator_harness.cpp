#include "VSISO4.h"
#include "verilated.h"
#include <cassert>
#include <iostream>

void check(const char* port, int a, int b, int cycle) {
    if (!(a == b)) {
        std::cerr << "Got      : " << a << std::endl;
        std::cerr << "Expected : " << b << std::endl;
        std::cerr << "Cycle    : " << cycle << std::endl;
        std::cerr << "Port     : " << port << std::endl;
        exit(1);
    }
}

int main(int argc, char **argv, char **env) {
    Verilated::commandArgs(argc, argv);
    VSISO4* top = new VSISO4;
    top->I = 1;
    top->eval();
    check("O", top->O, 0, 0);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 1);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 2);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 3);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 1;
    top->eval();
    check("O", top->O, 1, 4);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 1;
    top->eval();
    check("O", top->O, 0, 5);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 1;
    top->eval();
    check("O", top->O, 0, 6);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 1;
    top->eval();
    check("O", top->O, 0, 7);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
}
