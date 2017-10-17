circuit Counter4R : 
  module corebit_concat :
    input in0 : UInt<1>
    output out : UInt<2>
    input in1 : UInt<1>
    out <= cat(in0,in1)
  module corebit_const :
    input value : UInt<1>
    output out : UInt<1>
    out <= value
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
  module coreir_concat_U1 :
    input in0 : UInt<2>
    output out : UInt<4>
    input in1 : UInt<2>
    out <= cat(in0,in1)
  module Register4R :
    input CLK : Clock
    input I : UInt<4>
    input RESET : UInt<1>
    output O : UInt<4>
    inst __magma_backend_concat0 of corebit_concat
    inst __magma_backend_concat1 of corebit_concat
    inst __magma_backend_concat2 of coreir_concat_U1
    inst inst0 of DFF_init0_has_ceFalse_has_resetTrue_has_setFalse
    inst inst1 of DFF_init0_has_ceFalse_has_resetTrue_has_setFalse
    inst inst2 of DFF_init0_has_ceFalse_has_resetTrue_has_setFalse
    inst inst3 of DFF_init0_has_ceFalse_has_resetTrue_has_setFalse
    __magma_backend_concat0.in0 <= inst3.O
    __magma_backend_concat0.in1 <= inst2.O
    __magma_backend_concat2.in0 <= __magma_backend_concat0.out
    __magma_backend_concat1.in0 <= inst1.O
    __magma_backend_concat1.in1 <= inst0.O
    __magma_backend_concat2.in1 <= __magma_backend_concat1.out
    O <= __magma_backend_concat2.out
    inst0.CLK <= CLK
    wire tmpidx_U2 : UInt
    tmpidx_U2 <= bits(I,0,0)
    inst0.I <= tmpidx_U2
    inst0.RESET <= RESET
    inst1.CLK <= CLK
    wire tmpidx_U3 : UInt
    tmpidx_U3 <= bits(I,1,1)
    inst1.I <= tmpidx_U3
    inst1.RESET <= RESET
    inst2.CLK <= CLK
    wire tmpidx_U4 : UInt
    tmpidx_U4 <= bits(I,2,2)
    inst2.I <= tmpidx_U4
    inst2.RESET <= RESET
    inst3.CLK <= CLK
    wire tmpidx_U5 : UInt
    tmpidx_U5 <= bits(I,3,3)
    inst3.I <= tmpidx_U5
    inst3.RESET <= RESET
  module coreir_add_U0 :
    input in0 : UInt<4>
    output out : UInt<4>
    input in1 : UInt<4>
    out <= tail(add(in0,in1),1)
  module Add4 :
    input I0 : UInt<4>
    input I1 : UInt<4>
    output O : UInt<4>
    inst inst0 of coreir_add_U0
    inst0.in0 <= I0
    inst0.in1 <= I1
    O <= inst0.out
  module Counter4R :
    input CLK : Clock
    output O : UInt<4>
    input RESET : UInt<1>
    inst __magma_backend_concat0 of corebit_concat
    inst __magma_backend_concat1 of corebit_concat
    inst __magma_backend_concat2 of coreir_concat_U1
    inst bit_const_GND of corebit_const
    bit_const_GND.value <= UInt(0)
    inst bit_const_VCC of corebit_const
    bit_const_VCC.value <= UInt(1)
    inst inst0 of Add4
    inst inst1 of Register4R
    __magma_backend_concat0.in0 <= bit_const_GND.out
    __magma_backend_concat0.in1 <= bit_const_GND.out
    __magma_backend_concat2.in0 <= __magma_backend_concat0.out
    __magma_backend_concat1.in0 <= bit_const_GND.out
    __magma_backend_concat1.in1 <= bit_const_VCC.out
    __magma_backend_concat2.in1 <= __magma_backend_concat1.out
    inst0.I1 <= __magma_backend_concat2.out
    inst0.I0 <= inst1.O
    inst1.I <= inst0.O
    inst1.CLK <= CLK
    O <= inst1.O
    inst1.RESET <= RESET
