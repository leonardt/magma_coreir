import os
os.environ["MANTLE"] = "coreir"
from mantle.util.lfsr.lfsr import DefineLFSR, _lfsrtaps
from magma.testing.coroutine import coroutine, testvectors
from magma.bitutils import seq2int, int2seq
import random

main = DefineLFSR(8)
# print(repr(main))

def lfsr_sim_factory(N, init=1):
    taps = _lfsrtaps[N]
    @coroutine
    def lfsr_sim():
        regs = int2seq(init, N)
        while True:
            O = seq2int(regs)
            inputs = yield O
            if inputs["RESET"] == 1:
                regs = int2seq(init, N)
                continue
            I = 0
            for tap in taps:
                I ^= regs[tap - 1]
            regs = [I] + regs[:-1]
    return lfsr_sim

main_sim = lfsr_sim_factory(8)

@coroutine
def main_inputs():
    RESET = 0
    while True:
        yield RESET
