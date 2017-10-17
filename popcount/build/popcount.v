

module corebit_concat (
  input in0,
  input in1,
  output [1:0] out
);
  assign out = {in0, in1};

endmodule //corebit_concat

module corebit_const #(parameter value=1) (
  output out
);
  assign out = value;

endmodule //corebit_const

module corebit_or (
  input in0,
  input in1,
  output out
);
  assign out = in0 | in1;

endmodule //corebit_or

module corebit_and (
  input in0,
  input in1,
  output out
);
  assign out = in0 & in1;

endmodule //corebit_and

module corebit_xor (
  input in0,
  input in1,
  output out
);
  assign out = in0 ^ in1;

endmodule //corebit_xor

module coreir_concat #(parameter width0=1, parameter width1=1) (
  input [width0-1:0] in0,
  input [width1-1:0] in1,
  output [width0+width1-1:0] out
);
  assign out = {in0,in1};

endmodule //coreir_concat

module and_wrapped (
  input  I0,
  input  I1,
  output  O
);
  //Wire declarations for instance 'inst0' (Module corebit_and)
  wire  inst0_in0;
  wire  inst0_out;
  wire  inst0_in1;
  corebit_and inst0(
    .in0(inst0_in0),
    .in1(inst0_in1),
    .out(inst0_out)
  );

  //All the connections
  assign inst0_in0 = I0;
  assign inst0_in1 = I1;
  assign O = inst0_out;

endmodule //and_wrapped

module or_wrapped (
  input  I0,
  input  I1,
  output  O
);
  //Wire declarations for instance 'inst0' (Module corebit_or)
  wire  inst0_in0;
  wire  inst0_out;
  wire  inst0_in1;
  corebit_or inst0(
    .in0(inst0_in0),
    .in1(inst0_in1),
    .out(inst0_out)
  );

  //All the connections
  assign inst0_in0 = I0;
  assign inst0_in1 = I1;
  assign O = inst0_out;

endmodule //or_wrapped

module fold_or3None (
  input  I0,
  input  I1,
  input  I2,
  output  O
);
  //Wire declarations for instance 'inst0' (Module or_wrapped)
  wire  inst0_I0;
  wire  inst0_I1;
  wire  inst0_O;
  or_wrapped inst0(
    .I0(inst0_I0),
    .I1(inst0_I1),
    .O(inst0_O)
  );

  //Wire declarations for instance 'inst1' (Module or_wrapped)
  wire  inst1_I0;
  wire  inst1_I1;
  wire  inst1_O;
  or_wrapped inst1(
    .I0(inst1_I0),
    .I1(inst1_I1),
    .O(inst1_O)
  );

  //All the connections
  assign inst0_I0 = I0;
  assign inst0_I1 = I1;
  assign inst1_I0 = inst0_O;
  assign inst1_I1 = I2;
  assign O = inst1_O;

endmodule //fold_or3None

module Op (
  input  I0,
  input  I1,
  input  I2,
  output  O
);
  //Wire declarations for instance 'inst0' (Module and_wrapped)
  wire  inst0_I0;
  wire  inst0_I1;
  wire  inst0_O;
  and_wrapped inst0(
    .I0(inst0_I0),
    .I1(inst0_I1),
    .O(inst0_O)
  );

  //Wire declarations for instance 'inst1' (Module and_wrapped)
  wire  inst1_I0;
  wire  inst1_I1;
  wire  inst1_O;
  and_wrapped inst1(
    .I0(inst1_I0),
    .I1(inst1_I1),
    .O(inst1_O)
  );

  //Wire declarations for instance 'inst2' (Module and_wrapped)
  wire  inst2_I0;
  wire  inst2_I1;
  wire  inst2_O;
  and_wrapped inst2(
    .I0(inst2_I0),
    .I1(inst2_I1),
    .O(inst2_O)
  );

  //Wire declarations for instance 'inst3' (Module fold_or3None)
  wire  inst3_I0;
  wire  inst3_I1;
  wire  inst3_I2;
  wire  inst3_O;
  fold_or3None inst3(
    .I0(inst3_I0),
    .I1(inst3_I1),
    .I2(inst3_I2),
    .O(inst3_O)
  );

  //All the connections
  assign inst0_I0 = I0;
  assign inst0_I1 = I1;
  assign inst3_I0 = inst0_O;
  assign inst1_I0 = I1;
  assign inst1_I1 = I2;
  assign inst3_I1 = inst1_O;
  assign inst2_I0 = I2;
  assign inst2_I1 = I0;
  assign inst3_I2 = inst2_O;
  assign O = inst3_O;

endmodule //Op

module xor_wrapped (
  input  I0,
  input  I1,
  output  O
);
  //Wire declarations for instance 'inst0' (Module corebit_xor)
  wire  inst0_in0;
  wire  inst0_out;
  wire  inst0_in1;
  corebit_xor inst0(
    .in0(inst0_in0),
    .in1(inst0_in1),
    .out(inst0_out)
  );

  //All the connections
  assign inst0_in0 = I0;
  assign inst0_in1 = I1;
  assign O = inst0_out;

endmodule //xor_wrapped

module fold_xor3None (
  input  I0,
  input  I1,
  input  I2,
  output  O
);
  //Wire declarations for instance 'inst0' (Module xor_wrapped)
  wire  inst0_I0;
  wire  inst0_I1;
  wire  inst0_O;
  xor_wrapped inst0(
    .I0(inst0_I0),
    .I1(inst0_I1),
    .O(inst0_O)
  );

  //Wire declarations for instance 'inst1' (Module xor_wrapped)
  wire  inst1_I0;
  wire  inst1_I1;
  wire  inst1_O;
  xor_wrapped inst1(
    .I0(inst1_I0),
    .I1(inst1_I1),
    .O(inst1_O)
  );

  //All the connections
  assign inst0_I0 = I0;
  assign inst0_I1 = I1;
  assign inst1_I0 = inst0_O;
  assign inst1_I1 = I2;
  assign O = inst1_O;

endmodule //fold_xor3None

module PopCount8 (
  input [7:0] I,
  output [3:0] O
);
  //Wire declarations for instance '__magma_backend_concat0' (Module corebit_concat)
  wire  __magma_backend_concat0_in0;
  wire [1:0] __magma_backend_concat0_out;
  wire  __magma_backend_concat0_in1;
  corebit_concat __magma_backend_concat0(
    .in0(__magma_backend_concat0_in0),
    .in1(__magma_backend_concat0_in1),
    .out(__magma_backend_concat0_out)
  );

  //Wire declarations for instance '__magma_backend_concat1' (Module corebit_concat)
  wire  __magma_backend_concat1_in0;
  wire [1:0] __magma_backend_concat1_out;
  wire  __magma_backend_concat1_in1;
  corebit_concat __magma_backend_concat1(
    .in0(__magma_backend_concat1_in0),
    .in1(__magma_backend_concat1_in1),
    .out(__magma_backend_concat1_out)
  );

  //Wire declarations for instance '__magma_backend_concat2' (Module coreir_concat)
  wire [1:0] __magma_backend_concat2_in0;
  wire [3:0] __magma_backend_concat2_out;
  wire [1:0] __magma_backend_concat2_in1;
  coreir_concat #(.width0(2),.width1(2)) __magma_backend_concat2(
    .in0(__magma_backend_concat2_in0),
    .in1(__magma_backend_concat2_in1),
    .out(__magma_backend_concat2_out)
  );

  //Wire declarations for instance 'bit_const_GND' (Module corebit_const)
  wire  bit_const_GND_out;
  corebit_const #(.value(0)) bit_const_GND(
    .out(bit_const_GND_out)
  );

  //Wire declarations for instance 'inst0' (Module fold_xor3None)
  wire  inst0_I0;
  wire  inst0_I1;
  wire  inst0_I2;
  wire  inst0_O;
  fold_xor3None inst0(
    .I0(inst0_I0),
    .I1(inst0_I1),
    .I2(inst0_I2),
    .O(inst0_O)
  );

  //Wire declarations for instance 'inst1' (Module Op)
  wire  inst1_I0;
  wire  inst1_I1;
  wire  inst1_I2;
  wire  inst1_O;
  Op inst1(
    .I0(inst1_I0),
    .I1(inst1_I1),
    .I2(inst1_I2),
    .O(inst1_O)
  );

  //Wire declarations for instance 'inst10' (Module fold_xor3None)
  wire  inst10_I0;
  wire  inst10_I1;
  wire  inst10_I2;
  wire  inst10_O;
  fold_xor3None inst10(
    .I0(inst10_I0),
    .I1(inst10_I1),
    .I2(inst10_I2),
    .O(inst10_O)
  );

  //Wire declarations for instance 'inst11' (Module Op)
  wire  inst11_I0;
  wire  inst11_I1;
  wire  inst11_I2;
  wire  inst11_O;
  Op inst11(
    .I0(inst11_I0),
    .I1(inst11_I1),
    .I2(inst11_I2),
    .O(inst11_O)
  );

  //Wire declarations for instance 'inst12' (Module fold_xor3None)
  wire  inst12_I0;
  wire  inst12_I1;
  wire  inst12_I2;
  wire  inst12_O;
  fold_xor3None inst12(
    .I0(inst12_I0),
    .I1(inst12_I1),
    .I2(inst12_I2),
    .O(inst12_O)
  );

  //Wire declarations for instance 'inst13' (Module Op)
  wire  inst13_I0;
  wire  inst13_I1;
  wire  inst13_I2;
  wire  inst13_O;
  Op inst13(
    .I0(inst13_I0),
    .I1(inst13_I1),
    .I2(inst13_I2),
    .O(inst13_O)
  );

  //Wire declarations for instance 'inst2' (Module fold_xor3None)
  wire  inst2_I0;
  wire  inst2_I1;
  wire  inst2_I2;
  wire  inst2_O;
  fold_xor3None inst2(
    .I0(inst2_I0),
    .I1(inst2_I1),
    .I2(inst2_I2),
    .O(inst2_O)
  );

  //Wire declarations for instance 'inst3' (Module Op)
  wire  inst3_I0;
  wire  inst3_I1;
  wire  inst3_I2;
  wire  inst3_O;
  Op inst3(
    .I0(inst3_I0),
    .I1(inst3_I1),
    .I2(inst3_I2),
    .O(inst3_O)
  );

  //Wire declarations for instance 'inst4' (Module fold_xor3None)
  wire  inst4_I0;
  wire  inst4_I1;
  wire  inst4_I2;
  wire  inst4_O;
  fold_xor3None inst4(
    .I0(inst4_I0),
    .I1(inst4_I1),
    .I2(inst4_I2),
    .O(inst4_O)
  );

  //Wire declarations for instance 'inst5' (Module Op)
  wire  inst5_I0;
  wire  inst5_I1;
  wire  inst5_I2;
  wire  inst5_O;
  Op inst5(
    .I0(inst5_I0),
    .I1(inst5_I1),
    .I2(inst5_I2),
    .O(inst5_O)
  );

  //Wire declarations for instance 'inst6' (Module fold_xor3None)
  wire  inst6_I0;
  wire  inst6_I1;
  wire  inst6_I2;
  wire  inst6_O;
  fold_xor3None inst6(
    .I0(inst6_I0),
    .I1(inst6_I1),
    .I2(inst6_I2),
    .O(inst6_O)
  );

  //Wire declarations for instance 'inst7' (Module Op)
  wire  inst7_I0;
  wire  inst7_I1;
  wire  inst7_I2;
  wire  inst7_O;
  Op inst7(
    .I0(inst7_I0),
    .I1(inst7_I1),
    .I2(inst7_I2),
    .O(inst7_O)
  );

  //Wire declarations for instance 'inst8' (Module fold_xor3None)
  wire  inst8_I0;
  wire  inst8_I1;
  wire  inst8_I2;
  wire  inst8_O;
  fold_xor3None inst8(
    .I0(inst8_I0),
    .I1(inst8_I1),
    .I2(inst8_I2),
    .O(inst8_O)
  );

  //Wire declarations for instance 'inst9' (Module Op)
  wire  inst9_I0;
  wire  inst9_I1;
  wire  inst9_I2;
  wire  inst9_O;
  Op inst9(
    .I0(inst9_I0),
    .I1(inst9_I1),
    .I2(inst9_I2),
    .O(inst9_O)
  );

  //All the connections
  assign __magma_backend_concat0_in0 = inst13_O;
  assign __magma_backend_concat0_in1 = inst12_O;
  assign __magma_backend_concat2_in0[1:0] = __magma_backend_concat0_out[1:0];
  assign __magma_backend_concat1_in0 = inst10_O;
  assign __magma_backend_concat1_in1 = inst8_O;
  assign __magma_backend_concat2_in1[1:0] = __magma_backend_concat1_out[1:0];
  assign O[3:0] = __magma_backend_concat2_out[3:0];
  assign inst10_I2 = bit_const_GND_out;
  assign inst11_I2 = bit_const_GND_out;
  assign inst12_I2 = bit_const_GND_out;
  assign inst13_I2 = bit_const_GND_out;
  assign inst8_I2 = bit_const_GND_out;
  assign inst9_I2 = bit_const_GND_out;
  assign inst0_I0 = I[0];
  assign inst0_I1 = I[1];
  assign inst0_I2 = I[2];
  assign inst4_I0 = inst0_O;
  assign inst5_I0 = inst0_O;
  assign inst1_I0 = I[0];
  assign inst1_I1 = I[1];
  assign inst1_I2 = I[2];
  assign inst6_I0 = inst1_O;
  assign inst7_I0 = inst1_O;
  assign inst10_I0 = inst6_O;
  assign inst10_I1 = inst9_O;
  assign inst11_I0 = inst6_O;
  assign inst11_I1 = inst9_O;
  assign inst12_I1 = inst11_O;
  assign inst13_I1 = inst11_O;
  assign inst12_I0 = inst7_O;
  assign inst13_I0 = inst7_O;
  assign inst2_I0 = I[3];
  assign inst2_I1 = I[4];
  assign inst2_I2 = I[5];
  assign inst4_I1 = inst2_O;
  assign inst5_I1 = inst2_O;
  assign inst3_I0 = I[3];
  assign inst3_I1 = I[4];
  assign inst3_I2 = I[5];
  assign inst6_I1 = inst3_O;
  assign inst7_I1 = inst3_O;
  assign inst4_I2 = I[6];
  assign inst8_I0 = inst4_O;
  assign inst9_I0 = inst4_O;
  assign inst5_I2 = I[6];
  assign inst6_I2 = inst5_O;
  assign inst7_I2 = inst5_O;
  assign inst8_I1 = I[7];
  assign inst9_I1 = I[7];

endmodule //PopCount8
