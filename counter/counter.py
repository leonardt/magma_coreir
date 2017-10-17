from mantle.common import DefineCounter
from magma.transforms import flatten
from magma.testing.coroutine import coroutine, testvectors

main = DefineCounter(4, cout=False, has_reset=True)
print(repr(main))


def counter_sim_factory(N):
    @coroutine
    def counter_sim():
        while True:
            O = 0
            for i in range(1, 1 << N):
                inputs = yield O
                if not inputs["RESET"]:
                    break
                O = i
            else:
                yield O
    return counter_sim

main_sim = counter_sim_factory(4)

@coroutine
def main_inputs():
    RESET = 0
    yield RESET
    RESET = 1
    while True:
        yield RESET
