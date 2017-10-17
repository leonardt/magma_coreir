circuit PopCount8 : 
  module corebit_and :
    input in0 : UInt<1>
    output out : UInt<1>
    input in1 : UInt<1>
    out <= and(in0,in1)
  module corebit_const :
    input value : UInt<1>
    output out : UInt<1>
    out <= value
  module corebit_or :
    input in0 : UInt<1>
    output out : UInt<1>
    input in1 : UInt<1>
    out <= or(in0,in1)
  module corebit_concat :
    input in0 : UInt<1>
    output out : UInt<2>
    input in1 : UInt<1>
    out <= cat(in0,in1)
  module coreir_concat_U0 :
    input in0 : UInt<2>
    output out : UInt<4>
    input in1 : UInt<2>
    out <= cat(in0,in1)
  module corebit_xor :
    input in0 : UInt<1>
    output out : UInt<1>
    input in1 : UInt<1>
    out <= xor(in0,in1)
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
    inst4.I0 <= inst0.O
    inst5.I0 <= inst0.O
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
    inst4.I1 <= inst2.O
    inst5.I1 <= inst2.O
    inst6.I1 <= inst3.O
    inst7.I1 <= inst3.O
    inst8.I0 <= inst4.O
    inst9.I0 <= inst4.O
    inst6.I2 <= inst5.O
    inst7.I2 <= inst5.O
