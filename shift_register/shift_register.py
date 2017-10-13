import os
os.environ["MANTLE"] = "coreir"
from mantle.common import DefineSISO
from magma.testing.coroutine import coroutine, testvectors
import random

SISO8 = DefineSISO(4)
main = SISO8

def shift_register_sim_factory(N, init=None):
    if init is None:
        init = [0 for _ in range(N)]
    @coroutine
    def shift_register_sim():
        regs = init[:]
        while True:
            O = regs.pop()
            inputs = yield O
            regs.insert(0, inputs["I"])
    return shift_register_sim

main_sim = shift_register_sim_factory(4)

@coroutine
def input_generator():
    while True:
        I = int(random.getrandbits(1))
        yield I

main_inputs = input_generator
