from mantle.common import DefineCounter
from magma.transforms import flatten
from magma.testing.coroutine import coroutine, testvectors

main = DefineCounter(4, cout=False, has_reset=True)
print(repr(main))


def counter_sim_factory(N):
    @coroutine
    def counter_sim():
        while True:
            for i in range(0, 1 << N):
                O = i
                yield O
    return counter_sim

main_sim = counter_sim_factory(4)

@coroutine
def main_inputs():
    RESET = 0
    while True:
        yield RESET
