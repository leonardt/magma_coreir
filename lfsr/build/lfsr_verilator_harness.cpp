#include "Vlfsr81False.h"
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
    Vlfsr81False* top = new Vlfsr81False;
    top->eval();
    check("O", top->O, 1, 0);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->eval();
    check("O", top->O, 2, 1);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->eval();
    check("O", top->O, 4, 2);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->eval();
    check("O", top->O, 8, 3);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->eval();
    check("O", top->O, 17, 4);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->eval();
    check("O", top->O, 35, 5);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->eval();
    check("O", top->O, 71, 6);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->eval();
    check("O", top->O, 142, 7);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->eval();
    check("O", top->O, 29, 8);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->eval();
    check("O", top->O, 58, 9);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->eval();
    check("O", top->O, 117, 10);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->eval();
    check("O", top->O, 234, 11);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->eval();
    check("O", top->O, 212, 12);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->eval();
    check("O", top->O, 169, 13);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->eval();
    check("O", top->O, 82, 14);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->eval();
    check("O", top->O, 165, 15);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
}
