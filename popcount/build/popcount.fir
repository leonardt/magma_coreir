circuit PopCount8 : 
  module corebit_and :
    input in0 : UInt<1>
    output out : UInt<1>
    input in1 : UInt<1>
    out <= and(in0,in1)
  module corebit_xor :
    input in0 : UInt<1>
    output out : UInt<1>
    input in1 : UInt<1>
    out <= xor(in0,in1)
  module corebit_concat :
    input in0 : UInt<1>
    output out : UInt<2>
    input in1 : UInt<1>
    out <= cat(in0,in1)
  module corebit_const :
    input value : UInt<1>
    output out : UInt<1>
    out <= value
  module coreir_concat_U0 :
    input in0 : UInt<2>
    output out : UInt<4>
    input in1 : UInt<2>
    out <= cat(in0,in1)
  module corebit_or :
    input in0 : UInt<1>
    output out : UInt<1>
    input in1 : UInt<1>
    out <= or(in0,in1)
  module and_wrapped :
    input I0 : UInt<1>
    input I1 : UInt<1>
    output O : UInt<1>
    inst inst0 of corebit_and
    inst0.in0 <= I0
    inst0.in1 <= I1
    O <= inst0.out
  module or_wrapped :
    input I0 : UInt<1>
    input I1 : UInt<1>
    output O : UInt<1>
    inst inst0 of corebit_or
    inst0.in0 <= I0
    inst0.in1 <= I1
    O <= inst0.out
  module xor_wrapped :
    input I0 : UInt<1>
    input I1 : UInt<1>
    output O : UInt<1>
    inst inst0 of corebit_xor
    inst0.in0 <= I0
    inst0.in1 <= I1
    O <= inst0.out
  module fold_xor3None :
    input I0 : UInt<1>
    input I1 : UInt<1>
    input I2 : UInt<1>
    output O : UInt<1>
    inst inst0 of xor_wrapped
    inst inst1 of xor_wrapped
    inst0.I0 <= I0
    inst0.I1 <= I1
    inst1.I0 <= inst0.O
    inst1.I1 <= I2
    O <= inst1.O
  module fold_or3None :
    input I0 : UInt<1>
    input I1 : UInt<1>
    input I2 : UInt<1>
    output O : UInt<1>
    inst inst0 of or_wrapped
    inst inst1 of or_wrapped
    inst0.I0 <= I0
    inst0.I1 <= I1
    inst1.I0 <= inst0.O
    inst1.I1 <= I2
    O <= inst1.O
  module Op :
    input I0 : UInt<1>
    input I1 : UInt<1>
    input I2 : UInt<1>
    output O : UInt<1>
    inst inst0 of and_wrapped
    inst inst1 of and_wrapped
    inst inst2 of and_wrapped
    inst inst3 of fold_or3None
    inst0.I0 <= I0
    inst0.I1 <= I1
    inst3.I0 <= inst0.O
    inst1.I0 <= I1
    inst1.I1 <= I2
    inst3.I1 <= inst1.O
    inst2.I0 <= I2
    inst2.I1 <= I0
    inst3.I2 <= inst2.O
    O <= inst3.O
  module PopCount8 :
    input I : UInt<8>
    output O : UInt<4>
    inst __magma_backend_concat0 of corebit_concat
    inst __magma_backend_concat1 of corebit_concat
    inst __magma_backend_concat2 of coreir_concat_U0
    inst bit_const_GND of corebit_const
    bit_const_GND.value <= UInt(0)
    inst inst0 of fold_xor3None
    inst inst1 of Op
    inst inst10 of fold_xor3None
    inst inst11 of Op
    inst inst12 of fold_xor3None
    inst inst13 of Op
    inst inst2 of fold_xor3None
    inst inst3 of Op
    inst inst4 of fold_xor3None
    inst inst5 of Op
    inst inst6 of fold_xor3None
    inst inst7 of Op
    inst inst8 of fold_xor3None
    inst inst9 of Op
    __magma_backend_concat0.in0 <= inst13.O
    __magma_backend_concat0.in1 <= inst12.O
    __magma_backend_concat2.in0 <= __magma_backend_concat0.out
    __magma_backend_concat1.in0 <= inst10.O
    __magma_backend_concat1.in1 <= inst8.O
    __magma_backend_concat2.in1 <= __magma_backend_concat1.out
    O <= __magma_backend_concat2.out
    inst10.I2 <= bit_const_GND.out
    inst11.I2 <= bit_const_GND.out
    inst12.I2 <= bit_const_GND.out
    inst13.I2 <= bit_const_GND.out
    inst8.I2 <= bit_const_GND.out
    inst9.I2 <= bit_const_GND.out
    wire tmpidx_U1 : UInt
    tmpidx_U1 <= bits(I,0,0)
    inst0.I0 <= tmpidx_U1
    wire tmpidx_U2 : UInt
    tmpidx_U2 <= bits(I,1,1)
    inst0.I1 <= tmpidx_U2
    wire tmpidx_U3 : UInt
    tmpidx_U3 <= bits(I,2,2)
    inst0.I2 <= tmpidx_U3
    inst4.I0 <= inst0.O
    inst5.I0 <= inst0.O
    wire tmpidx_U4 : UInt
    tmpidx_U4 <= bits(I,0,0)
    inst1.I0 <= tmpidx_U4
    wire tmpidx_U5 : UInt
    tmpidx_U5 <= bits(I,1,1)
    inst1.I1 <= tmpidx_U5
    wire tmpidx_U6 : UInt
    tmpidx_U6 <= bits(I,2,2)
    inst1.I2 <= tmpidx_U6
    inst6.I0 <= inst1.O
    inst7.I0 <= inst1.O
    inst10.I0 <= inst6.O
    inst10.I1 <= inst9.O
    inst11.I0 <= inst6.O
    inst11.I1 <= inst9.O
    inst12.I1 <= inst11.O
    inst13.I1 <= inst11.O
    inst12.I0 <= inst7.O
    inst13.I0 <= inst7.O
    wire tmpidx_U7 : UInt
    tmpidx_U7 <= bits(I,3,3)
    inst2.I0 <= tmpidx_U7
    wire tmpidx_U8 : UInt
    tmpidx_U8 <= bits(I,4,4)
    inst2.I1 <= tmpidx_U8
    wire tmpidx_U9 : UInt
    tmpidx_U9 <= bits(I,5,5)
    inst2.I2 <= tmpidx_U9
    inst4.I1 <= inst2.O
    inst5.I1 <= inst2.O
    wire tmpidx_U10 : UInt
    tmpidx_U10 <= bits(I,3,3)
    inst3.I0 <= tmpidx_U10
    wire tmpidx_U11 : UInt
    tmpidx_U11 <= bits(I,4,4)
    inst3.I1 <= tmpidx_U11
    wire tmpidx_U12 : UInt
    tmpidx_U12 <= bits(I,5,5)
    inst3.I2 <= tmpidx_U12
    inst6.I1 <= inst3.O
    inst7.I1 <= inst3.O
    wire tmpidx_U13 : UInt
    tmpidx_U13 <= bits(I,6,6)
    inst4.I2 <= tmpidx_U13
    inst8.I0 <= inst4.O
    inst9.I0 <= inst4.O
    wire tmpidx_U14 : UInt
    tmpidx_U14 <= bits(I,6,6)
    inst5.I2 <= tmpidx_U14
    inst6.I2 <= inst5.O
    inst7.I2 <= inst5.O
    wire tmpidx_U15 : UInt
    tmpidx_U15 <= bits(I,7,7)
    inst8.I1 <= tmpidx_U15
    wire tmpidx_U16 : UInt
    tmpidx_U16 <= bits(I,7,7)
    inst9.I1 <= tmpidx_U16
