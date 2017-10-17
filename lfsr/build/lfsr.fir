circuit lfsr81False : 
  module corebit_concat :
    input in0 : UInt<1>
    output out : UInt<2>
    input in1 : UInt<1>
    out <= cat(in0,in1)
  module corebit_dff :
    input init : UInt<1>
    input clk : Clock
    input rst : UInt<1>
    input in : UInt<1>
    output out : UInt<1>
    reg myreg: UInt<1>, clk with:
      (reset =>(rst, init))
    myreg <= in
    out <= myreg
  module DFF_init0_has_ceFalse_has_resetTrue_has_setFalse :
    input CLK : Clock
    input I : UInt<1>
    input RESET : UInt<1>
    output O : UInt<1>
    inst inst0 of corebit_dff
    inst0.init <= UInt(0)
    inst0.clk <= CLK
    inst0.in <= I
    O <= inst0.out
    inst0.rst <= RESET
  module corebit_xor :
    input in0 : UInt<1>
    output out : UInt<1>
    input in1 : UInt<1>
    out <= xor(in0,in1)
  module coreir_concat_U1 :
    input in0 : UInt<4>
    output out : UInt<8>
    input in1 : UInt<4>
    out <= cat(in0,in1)
  module coreir_concat_U0 :
    input in0 : UInt<2>
    output out : UInt<4>
    input in1 : UInt<2>
    out <= cat(in0,in1)
  module DFF_init1_has_ceFalse_has_resetTrue_has_setFalse :
    input CLK : Clock
    input I : UInt<1>
    input RESET : UInt<1>
    output O : UInt<1>
    inst inst0 of corebit_dff
    inst0.init <= UInt(1)
    inst0.clk <= CLK
    inst0.in <= I
    O <= inst0.out
    inst0.rst <= RESET
  module SIPO8R_0001 :
    input CLK : Clock
    input I : UInt<1>
    input RESET : UInt<1>
    output O : UInt<8>
    inst __magma_backend_concat0 of corebit_concat
    inst __magma_backend_concat1 of corebit_concat
    inst __magma_backend_concat2 of corebit_concat
    inst __magma_backend_concat3 of corebit_concat
    inst __magma_backend_concat4 of coreir_concat_U0
    inst __magma_backend_concat5 of coreir_concat_U0
    inst __magma_backend_concat6 of coreir_concat_U1
    inst inst0 of DFF_init1_has_ceFalse_has_resetTrue_has_setFalse
    inst inst1 of DFF_init0_has_ceFalse_has_resetTrue_has_setFalse
    inst inst2 of DFF_init0_has_ceFalse_has_resetTrue_has_setFalse
    inst inst3 of DFF_init0_has_ceFalse_has_resetTrue_has_setFalse
    inst inst4 of DFF_init0_has_ceFalse_has_resetTrue_has_setFalse
    inst inst5 of DFF_init0_has_ceFalse_has_resetTrue_has_setFalse
    inst inst6 of DFF_init0_has_ceFalse_has_resetTrue_has_setFalse
    inst inst7 of DFF_init0_has_ceFalse_has_resetTrue_has_setFalse
    __magma_backend_concat0.in0 <= inst7.O
    __magma_backend_concat0.in1 <= inst6.O
    __magma_backend_concat4.in0 <= __magma_backend_concat0.out
    __magma_backend_concat1.in0 <= inst5.O
    __magma_backend_concat1.in1 <= inst4.O
    __magma_backend_concat4.in1 <= __magma_backend_concat1.out
    __magma_backend_concat2.in0 <= inst3.O
    __magma_backend_concat2.in1 <= inst2.O
    __magma_backend_concat5.in0 <= __magma_backend_concat2.out
    __magma_backend_concat3.in0 <= inst1.O
    __magma_backend_concat3.in1 <= inst0.O
    __magma_backend_concat5.in1 <= __magma_backend_concat3.out
    __magma_backend_concat6.in0 <= __magma_backend_concat4.out
    __magma_backend_concat6.in1 <= __magma_backend_concat5.out
    O <= __magma_backend_concat6.out
    inst0.CLK <= CLK
    inst0.I <= I
    inst1.I <= inst0.O
    inst0.RESET <= RESET
    inst1.CLK <= CLK
    inst2.I <= inst1.O
    inst1.RESET <= RESET
    inst2.CLK <= CLK
    inst3.I <= inst2.O
    inst2.RESET <= RESET
    inst3.CLK <= CLK
    inst4.I <= inst3.O
    inst3.RESET <= RESET
    inst4.CLK <= CLK
    inst5.I <= inst4.O
    inst4.RESET <= RESET
    inst5.CLK <= CLK
    inst6.I <= inst5.O
    inst5.RESET <= RESET
    inst6.CLK <= CLK
    inst7.I <= inst6.O
    inst6.RESET <= RESET
    inst7.CLK <= CLK
    inst7.RESET <= RESET
  module xor_wrapped :
    input I0 : UInt<1>
    input I1 : UInt<1>
    output O : UInt<1>
    inst inst0 of corebit_xor
    inst0.in0 <= I0
    inst0.in1 <= I1
    O <= inst0.out
  module fold_xor4None :
    input I0 : UInt<1>
    input I1 : UInt<1>
    input I2 : UInt<1>
    input I3 : UInt<1>
    output O : UInt<1>
    inst inst0 of xor_wrapped
    inst inst1 of xor_wrapped
    inst inst2 of xor_wrapped
    inst0.I0 <= I0
    inst0.I1 <= I1
    inst1.I0 <= inst0.O
    inst1.I1 <= I2
    inst2.I0 <= inst1.O
    inst2.I1 <= I3
    O <= inst2.O
  module lfsr81False :
    input CLK : Clock
    output O : UInt<8>
    input RESET : UInt<1>
    inst inst0 of SIPO8R_0001
    inst inst1 of fold_xor4None
    inst0.CLK <= CLK
    inst0.I <= inst1.O
    O <= inst0.O
    inst0.RESET <= RESET
    wire tmpidx_U2 : UInt
    tmpidx_U2 <= bits(inst0.O,7,7)
    inst1.I0 <= tmpidx_U2
    wire tmpidx_U3 : UInt
    tmpidx_U3 <= bits(inst0.O,5,5)
    inst1.I1 <= tmpidx_U3
    wire tmpidx_U4 : UInt
    tmpidx_U4 <= bits(inst0.O,4,4)
    inst1.I2 <= tmpidx_U4
    wire tmpidx_U5 : UInt
    tmpidx_U5 <= bits(inst0.O,3,3)
    inst1.I3 <= tmpidx_U5
