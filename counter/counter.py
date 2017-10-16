from mantle.common import DefineCounter
from magma.transforms import flatten
from magma.testing.coroutine import coroutine, testvectors

main = DefineCounter(4)
# print(repr(main))


def counter_sim_factory(N):
    @coroutine
    def counter_sim():
        while True:
            for i in range(0, 1 << N):
                O = i
                COUT = int(i == (1 << N) - 1)  # Counter sets COUT when the next value is 0
                yield O, COUT
    return counter_sim

main_sim = counter_sim_factory(4)
