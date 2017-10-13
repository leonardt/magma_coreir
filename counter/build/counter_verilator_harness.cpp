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
    check("COUT", top->COUT, 0
, 0);
    check("O", top->O, 0
, 0);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 1);
    check("O", top->O, 1
, 1);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 2);
    check("O", top->O, 2
, 2);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 3);
    check("O", top->O, 3
, 3);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 4);
    check("O", top->O, 4
, 4);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 5);
    check("O", top->O, 5
, 5);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 6);
    check("O", top->O, 6
, 6);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 7);
    check("O", top->O, 7
, 7);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 8);
    check("O", top->O, 8
, 8);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 9);
    check("O", top->O, 9
, 9);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 10);
    check("O", top->O, 10
, 10);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 11);
    check("O", top->O, 11
, 11);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 12);
    check("O", top->O, 12
, 12);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 13);
    check("O", top->O, 13
, 13);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 14);
    check("O", top->O, 14
, 14);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 1
, 15);
    check("O", top->O, 15
, 15);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 16);
    check("O", top->O, 0
, 16);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 17);
    check("O", top->O, 1
, 17);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 18);
    check("O", top->O, 2
, 18);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 19);
    check("O", top->O, 3
, 19);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 20);
    check("O", top->O, 4
, 20);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 21);
    check("O", top->O, 5
, 21);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 22);
    check("O", top->O, 6
, 22);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 23);
    check("O", top->O, 7
, 23);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 24);
    check("O", top->O, 8
, 24);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 25);
    check("O", top->O, 9
, 25);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 26);
    check("O", top->O, 10
, 26);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 27);
    check("O", top->O, 11
, 27);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 28);
    check("O", top->O, 12
, 28);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 29);
    check("O", top->O, 13
, 29);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 0
, 30);
    check("O", top->O, 14
, 30);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
    check("COUT", top->COUT, 1
, 31);
    check("O", top->O, 15
, 31);
    top->CLK = 0;
    top->eval();
    top->CLK = 1;
    top->eval();
}
