import os
os.environ["MANTLE"] = "coreir"
from mantle.util.lfsr.lfsr import DefineLFSR, _lfsrtaps
from magma.testing.coroutine import coroutine, testvectors
from magma.bitutils import seq2int, int2seq
import random

main = DefineLFSR(8)

def lfsr_sim_factory(N, init=1):
    taps = _lfsrtaps[N]
    @coroutine
    def lfsr_sim():
        regs = int2seq(init, N)
        while True:
            O = seq2int(regs)
            yield O
            I = 0
            for tap in taps:
                I ^= regs[tap - 1]
            regs = [I] + regs[:-1]
    return lfsr_sim

main_sim = lfsr_sim_factory(8)
