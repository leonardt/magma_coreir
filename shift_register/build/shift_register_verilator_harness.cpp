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
    top->I = 1;
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
    top->I = 0;
    top->eval();
    check("O", top->O, 1, 4);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 1;
    top->eval();
    check("O", top->O, 1, 5);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 6);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 7);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 8);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 1, 9);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 10);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 11);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 12);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 13);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 14);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 1;
    top->eval();
    check("O", top->O, 0, 15);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 1;
    top->eval();
    check("O", top->O, 0, 16);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 1;
    top->eval();
    check("O", top->O, 0, 17);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 1;
    top->eval();
    check("O", top->O, 0, 18);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 1, 19);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 1, 20);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 1, 21);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 1, 22);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 23);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 24);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 25);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 1;
    top->eval();
    check("O", top->O, 0, 26);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 27);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 1;
    top->eval();
    check("O", top->O, 0, 28);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 0;
    top->eval();
    check("O", top->O, 0, 29);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 1;
    top->eval();
    check("O", top->O, 1, 30);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    top->I = 1;
    top->eval();
    check("O", top->O, 0, 31);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
}
