#include "VCounter4.h"
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
    VCounter4* top = new VCounter4;
    check("O", top->O, 0
, 0);
    check("COUT", top->COUT, 0
, 0);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 1
, 1);
    check("COUT", top->COUT, 0
, 1);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 2
, 2);
    check("COUT", top->COUT, 0
, 2);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 3
, 3);
    check("COUT", top->COUT, 0
, 3);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 4
, 4);
    check("COUT", top->COUT, 0
, 4);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 5
, 5);
    check("COUT", top->COUT, 0
, 5);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 6
, 6);
    check("COUT", top->COUT, 0
, 6);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 7
, 7);
    check("COUT", top->COUT, 0
, 7);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 8
, 8);
    check("COUT", top->COUT, 0
, 8);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 9
, 9);
    check("COUT", top->COUT, 0
, 9);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 10
, 10);
    check("COUT", top->COUT, 0
, 10);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 11
, 11);
    check("COUT", top->COUT, 0
, 11);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 12
, 12);
    check("COUT", top->COUT, 0
, 12);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 13
, 13);
    check("COUT", top->COUT, 0
, 13);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 14
, 14);
    check("COUT", top->COUT, 0
, 14);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 15
, 15);
    check("COUT", top->COUT, 1
, 15);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 0
, 16);
    check("COUT", top->COUT, 0
, 16);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 1
, 17);
    check("COUT", top->COUT, 0
, 17);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 2
, 18);
    check("COUT", top->COUT, 0
, 18);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 3
, 19);
    check("COUT", top->COUT, 0
, 19);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 4
, 20);
    check("COUT", top->COUT, 0
, 20);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 5
, 21);
    check("COUT", top->COUT, 0
, 21);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 6
, 22);
    check("COUT", top->COUT, 0
, 22);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 7
, 23);
    check("COUT", top->COUT, 0
, 23);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 8
, 24);
    check("COUT", top->COUT, 0
, 24);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 9
, 25);
    check("COUT", top->COUT, 0
, 25);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 10
, 26);
    check("COUT", top->COUT, 0
, 26);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 11
, 27);
    check("COUT", top->COUT, 0
, 27);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 12
, 28);
    check("COUT", top->COUT, 0
, 28);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 13
, 29);
    check("COUT", top->COUT, 0
, 29);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 14
, 30);
    check("COUT", top->COUT, 0
, 30);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("O", top->O, 15
, 31);
    check("COUT", top->COUT, 1
, 31);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
}
