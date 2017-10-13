

module PopCount8_flattened (
  input [7:0] I,
  output [3:0] O
);
  //Wire declarations for instance 'bit_const_GND' (Module const)
  wire  bit_const_GND_out;
  bitir_const #(.value(0)) bit_const_GND(
    .out(bit_const_GND_out)
  );

  //Wire declarations for instance 'inst0' (Module xor)
  wire  inst0_in0;
  wire  inst0_out;
  wire  inst0_in1;
  bitir_xor inst0(
    .in0(inst0_in0),
    .in1(inst0_in1),
    .out(inst0_out)
  );

  //Wire declarations for instance 'inst1' (Module xor)
  wire  inst1_in0;
  wire  inst1_out;
  wire  inst1_in1;
  bitir_xor inst1(
    .in0(inst1_in0),
    .in1(inst1_in1),
    .out(inst1_out)
  );

  //Wire declarations for instance 'inst10' (Module and)
  wire  inst10_in0;
  wire  inst10_out;
  wire  inst10_in1;
  bitir_and inst10(
    .in0(inst10_in0),
    .in1(inst10_in1),
    .out(inst10_out)
  );

  //Wire declarations for instance 'inst11' (Module and)
  wire  inst11_in0;
  wire  inst11_out;
  wire  inst11_in1;
  bitir_and inst11(
    .in0(inst11_in0),
    .in1(inst11_in1),
    .out(inst11_out)
  );

  //Wire declarations for instance 'inst12' (Module or)
  wire  inst12_in0;
  wire  inst12_out;
  wire  inst12_in1;
  bitir_or inst12(
    .in0(inst12_in0),
    .in1(inst12_in1),
    .out(inst12_out)
  );

  //Wire declarations for instance 'inst13' (Module or)
  wire  inst13_in0;
  wire  inst13_out;
  wire  inst13_in1;
  bitir_or inst13(
    .in0(inst13_in0),
    .in1(inst13_in1),
    .out(inst13_out)
  );

  //Wire declarations for instance 'inst14' (Module xor)
  wire  inst14_in0;
  wire  inst14_out;
  wire  inst14_in1;
  bitir_xor inst14(
    .in0(inst14_in0),
    .in1(inst14_in1),
    .out(inst14_out)
  );

  //Wire declarations for instance 'inst15' (Module xor)
  wire  inst15_in0;
  wire  inst15_out;
  wire  inst15_in1;
  bitir_xor inst15(
    .in0(inst15_in0),
    .in1(inst15_in1),
    .out(inst15_out)
  );

  //Wire declarations for instance 'inst16' (Module and)
  wire  inst16_in0;
  wire  inst16_out;
  wire  inst16_in1;
  bitir_and inst16(
    .in0(inst16_in0),
    .in1(inst16_in1),
    .out(inst16_out)
  );

  //Wire declarations for instance 'inst17' (Module and)
  wire  inst17_in0;
  wire  inst17_out;
  wire  inst17_in1;
  bitir_and inst17(
    .in0(inst17_in0),
    .in1(inst17_in1),
    .out(inst17_out)
  );

  //Wire declarations for instance 'inst18' (Module and)
  wire  inst18_in0;
  wire  inst18_out;
  wire  inst18_in1;
  bitir_and inst18(
    .in0(inst18_in0),
    .in1(inst18_in1),
    .out(inst18_out)
  );

  //Wire declarations for instance 'inst19' (Module or)
  wire  inst19_in0;
  wire  inst19_out;
  wire  inst19_in1;
  bitir_or inst19(
    .in0(inst19_in0),
    .in1(inst19_in1),
    .out(inst19_out)
  );

  //Wire declarations for instance 'inst2' (Module and)
  wire  inst2_in0;
  wire  inst2_out;
  wire  inst2_in1;
  bitir_and inst2(
    .in0(inst2_in0),
    .in1(inst2_in1),
    .out(inst2_out)
  );

  //Wire declarations for instance 'inst20' (Module or)
  wire  inst20_in0;
  wire  inst20_out;
  wire  inst20_in1;
  bitir_or inst20(
    .in0(inst20_in0),
    .in1(inst20_in1),
    .out(inst20_out)
  );

  //Wire declarations for instance 'inst21' (Module xor)
  wire  inst21_in0;
  wire  inst21_out;
  wire  inst21_in1;
  bitir_xor inst21(
    .in0(inst21_in0),
    .in1(inst21_in1),
    .out(inst21_out)
  );

  //Wire declarations for instance 'inst22' (Module xor)
  wire  inst22_in0;
  wire  inst22_out;
  wire  inst22_in1;
  bitir_xor inst22(
    .in0(inst22_in0),
    .in1(inst22_in1),
    .out(inst22_out)
  );

  //Wire declarations for instance 'inst23' (Module and)
  wire  inst23_in0;
  wire  inst23_out;
  wire  inst23_in1;
  bitir_and inst23(
    .in0(inst23_in0),
    .in1(inst23_in1),
    .out(inst23_out)
  );

  //Wire declarations for instance 'inst24' (Module and)
  wire  inst24_in0;
  wire  inst24_out;
  wire  inst24_in1;
  bitir_and inst24(
    .in0(inst24_in0),
    .in1(inst24_in1),
    .out(inst24_out)
  );

  //Wire declarations for instance 'inst25' (Module and)
  wire  inst25_in0;
  wire  inst25_out;
  wire  inst25_in1;
  bitir_and inst25(
    .in0(inst25_in0),
    .in1(inst25_in1),
    .out(inst25_out)
  );

  //Wire declarations for instance 'inst26' (Module or)
  wire  inst26_in0;
  wire  inst26_out;
  wire  inst26_in1;
  bitir_or inst26(
    .in0(inst26_in0),
    .in1(inst26_in1),
    .out(inst26_out)
  );

  //Wire declarations for instance 'inst27' (Module or)
  wire  inst27_in0;
  wire  inst27_out;
  wire  inst27_in1;
  bitir_or inst27(
    .in0(inst27_in0),
    .in1(inst27_in1),
    .out(inst27_out)
  );

  //Wire declarations for instance 'inst28' (Module xor)
  wire  inst28_in0;
  wire  inst28_out;
  wire  inst28_in1;
  bitir_xor inst28(
    .in0(inst28_in0),
    .in1(inst28_in1),
    .out(inst28_out)
  );

  //Wire declarations for instance 'inst29' (Module xor)
  wire  inst29_in0;
  wire  inst29_out;
  wire  inst29_in1;
  bitir_xor inst29(
    .in0(inst29_in0),
    .in1(inst29_in1),
    .out(inst29_out)
  );

  //Wire declarations for instance 'inst3' (Module and)
  wire  inst3_in0;
  wire  inst3_out;
  wire  inst3_in1;
  bitir_and inst3(
    .in0(inst3_in0),
    .in1(inst3_in1),
    .out(inst3_out)
  );

  //Wire declarations for instance 'inst30' (Module and)
  wire  inst30_in0;
  wire  inst30_out;
  wire  inst30_in1;
  bitir_and inst30(
    .in0(inst30_in0),
    .in1(inst30_in1),
    .out(inst30_out)
  );

  //Wire declarations for instance 'inst31' (Module and)
  wire  inst31_in0;
  wire  inst31_out;
  wire  inst31_in1;
  bitir_and inst31(
    .in0(inst31_in0),
    .in1(inst31_in1),
    .out(inst31_out)
  );

  //Wire declarations for instance 'inst32' (Module and)
  wire  inst32_in0;
  wire  inst32_out;
  wire  inst32_in1;
  bitir_and inst32(
    .in0(inst32_in0),
    .in1(inst32_in1),
    .out(inst32_out)
  );

  //Wire declarations for instance 'inst33' (Module or)
  wire  inst33_in0;
  wire  inst33_out;
  wire  inst33_in1;
  bitir_or inst33(
    .in0(inst33_in0),
    .in1(inst33_in1),
    .out(inst33_out)
  );

  //Wire declarations for instance 'inst34' (Module or)
  wire  inst34_in0;
  wire  inst34_out;
  wire  inst34_in1;
  bitir_or inst34(
    .in0(inst34_in0),
    .in1(inst34_in1),
    .out(inst34_out)
  );

  //Wire declarations for instance 'inst35' (Module xor)
  wire  inst35_in0;
  wire  inst35_out;
  wire  inst35_in1;
  bitir_xor inst35(
    .in0(inst35_in0),
    .in1(inst35_in1),
    .out(inst35_out)
  );

  //Wire declarations for instance 'inst36' (Module xor)
  wire  inst36_in0;
  wire  inst36_out;
  wire  inst36_in1;
  bitir_xor inst36(
    .in0(inst36_in0),
    .in1(inst36_in1),
    .out(inst36_out)
  );

  //Wire declarations for instance 'inst37' (Module and)
  wire  inst37_in0;
  wire  inst37_out;
  wire  inst37_in1;
  bitir_and inst37(
    .in0(inst37_in0),
    .in1(inst37_in1),
    .out(inst37_out)
  );

  //Wire declarations for instance 'inst38' (Module and)
  wire  inst38_in0;
  wire  inst38_out;
  wire  inst38_in1;
  bitir_and inst38(
    .in0(inst38_in0),
    .in1(inst38_in1),
    .out(inst38_out)
  );

  //Wire declarations for instance 'inst39' (Module and)
  wire  inst39_in0;
  wire  inst39_out;
  wire  inst39_in1;
  bitir_and inst39(
    .in0(inst39_in0),
    .in1(inst39_in1),
    .out(inst39_out)
  );

  //Wire declarations for instance 'inst4' (Module and)
  wire  inst4_in0;
  wire  inst4_out;
  wire  inst4_in1;
  bitir_and inst4(
    .in0(inst4_in0),
    .in1(inst4_in1),
    .out(inst4_out)
  );

  //Wire declarations for instance 'inst40' (Module or)
  wire  inst40_in0;
  wire  inst40_out;
  wire  inst40_in1;
  bitir_or inst40(
    .in0(inst40_in0),
    .in1(inst40_in1),
    .out(inst40_out)
  );

  //Wire declarations for instance 'inst41' (Module or)
  wire  inst41_in0;
  wire  inst41_out;
  wire  inst41_in1;
  bitir_or inst41(
    .in0(inst41_in0),
    .in1(inst41_in1),
    .out(inst41_out)
  );

  //Wire declarations for instance 'inst42' (Module xor)
  wire  inst42_in0;
  wire  inst42_out;
  wire  inst42_in1;
  bitir_xor inst42(
    .in0(inst42_in0),
    .in1(inst42_in1),
    .out(inst42_out)
  );

  //Wire declarations for instance 'inst43' (Module xor)
  wire  inst43_in0;
  wire  inst43_out;
  wire  inst43_in1;
  bitir_xor inst43(
    .in0(inst43_in0),
    .in1(inst43_in1),
    .out(inst43_out)
  );

  //Wire declarations for instance 'inst44' (Module and)
  wire  inst44_in0;
  wire  inst44_out;
  wire  inst44_in1;
  bitir_and inst44(
    .in0(inst44_in0),
    .in1(inst44_in1),
    .out(inst44_out)
  );

  //Wire declarations for instance 'inst45' (Module and)
  wire  inst45_in0;
  wire  inst45_out;
  wire  inst45_in1;
  bitir_and inst45(
    .in0(inst45_in0),
    .in1(inst45_in1),
    .out(inst45_out)
  );

  //Wire declarations for instance 'inst46' (Module and)
  wire  inst46_in0;
  wire  inst46_out;
  wire  inst46_in1;
  bitir_and inst46(
    .in0(inst46_in0),
    .in1(inst46_in1),
    .out(inst46_out)
  );

  //Wire declarations for instance 'inst47' (Module or)
  wire  inst47_in0;
  wire  inst47_out;
  wire  inst47_in1;
  bitir_or inst47(
    .in0(inst47_in0),
    .in1(inst47_in1),
    .out(inst47_out)
  );

  //Wire declarations for instance 'inst48' (Module or)
  wire  inst48_in0;
  wire  inst48_out;
  wire  inst48_in1;
  bitir_or inst48(
    .in0(inst48_in0),
    .in1(inst48_in1),
    .out(inst48_out)
  );

  //Wire declarations for instance 'inst5' (Module or)
  wire  inst5_in0;
  wire  inst5_out;
  wire  inst5_in1;
  bitir_or inst5(
    .in0(inst5_in0),
    .in1(inst5_in1),
    .out(inst5_out)
  );

  //Wire declarations for instance 'inst6' (Module or)
  wire  inst6_in0;
  wire  inst6_out;
  wire  inst6_in1;
  bitir_or inst6(
    .in0(inst6_in0),
    .in1(inst6_in1),
    .out(inst6_out)
  );

  //Wire declarations for instance 'inst7' (Module xor)
  wire  inst7_in0;
  wire  inst7_out;
  wire  inst7_in1;
  bitir_xor inst7(
    .in0(inst7_in0),
    .in1(inst7_in1),
    .out(inst7_out)
  );

  //Wire declarations for instance 'inst8' (Module xor)
  wire  inst8_in0;
  wire  inst8_out;
  wire  inst8_in1;
  bitir_xor inst8(
    .in0(inst8_in0),
    .in1(inst8_in1),
    .out(inst8_out)
  );

  //Wire declarations for instance 'inst9' (Module and)
  wire  inst9_in0;
  wire  inst9_out;
  wire  inst9_in1;
  bitir_and inst9(
    .in0(inst9_in0),
    .in1(inst9_in1),
    .out(inst9_out)
  );

  //All the connections
  assign inst29_in1 = bit_const_GND_out;
  assign inst31_in1 = bit_const_GND_out;
  assign inst32_in0 = bit_const_GND_out;
  assign inst36_in1 = bit_const_GND_out;
  assign inst38_in1 = bit_const_GND_out;
  assign inst39_in0 = bit_const_GND_out;
  assign inst43_in1 = bit_const_GND_out;
  assign inst45_in1 = bit_const_GND_out;
  assign inst46_in0 = bit_const_GND_out;
  assign inst0_in0 = I[0];
  assign inst0_in1 = I[1];
  assign inst1_in0 = inst0_out;
  assign inst1_in1 = I[2];
  assign inst14_in0 = inst1_out;
  assign inst16_in0 = inst1_out;
  assign inst18_in1 = inst1_out;
  assign inst10_in0 = I[4];
  assign inst10_in1 = I[5];
  assign inst12_in1 = inst10_out;
  assign inst11_in0 = I[5];
  assign inst11_in1 = I[3];
  assign inst13_in1 = inst11_out;
  assign inst12_in0 = inst9_out;
  assign inst13_in0 = inst12_out;
  assign inst21_in1 = inst13_out;
  assign inst23_in1 = inst13_out;
  assign inst24_in0 = inst13_out;
  assign inst14_in1 = inst8_out;
  assign inst15_in0 = inst14_out;
  assign inst15_in1 = I[6];
  assign inst28_in0 = inst15_out;
  assign inst30_in0 = inst15_out;
  assign inst32_in1 = inst15_out;
  assign inst16_in1 = inst8_out;
  assign inst19_in0 = inst16_out;
  assign inst17_in0 = inst8_out;
  assign inst17_in1 = I[6];
  assign inst19_in1 = inst17_out;
  assign inst18_in0 = I[6];
  assign inst20_in1 = inst18_out;
  assign inst20_in0 = inst19_out;
  assign inst2_in0 = I[0];
  assign inst2_in1 = I[1];
  assign inst5_in0 = inst2_out;
  assign inst22_in1 = inst20_out;
  assign inst24_in1 = inst20_out;
  assign inst25_in0 = inst20_out;
  assign inst21_in0 = inst6_out;
  assign inst22_in0 = inst21_out;
  assign inst35_in0 = inst22_out;
  assign inst37_in0 = inst22_out;
  assign inst39_in1 = inst22_out;
  assign inst23_in0 = inst6_out;
  assign inst26_in0 = inst23_out;
  assign inst26_in1 = inst24_out;
  assign inst25_in1 = inst6_out;
  assign inst27_in1 = inst25_out;
  assign inst27_in0 = inst26_out;
  assign inst42_in0 = inst27_out;
  assign inst44_in0 = inst27_out;
  assign inst46_in1 = inst27_out;
  assign inst28_in1 = I[7];
  assign inst29_in0 = inst28_out;
  assign O[0] = inst29_out;
  assign inst3_in0 = I[1];
  assign inst3_in1 = I[2];
  assign inst5_in1 = inst3_out;
  assign inst30_in1 = I[7];
  assign inst33_in0 = inst30_out;
  assign inst31_in0 = I[7];
  assign inst33_in1 = inst31_out;
  assign inst34_in1 = inst32_out;
  assign inst34_in0 = inst33_out;
  assign inst35_in1 = inst34_out;
  assign inst37_in1 = inst34_out;
  assign inst38_in0 = inst34_out;
  assign inst36_in0 = inst35_out;
  assign O[1] = inst36_out;
  assign inst40_in0 = inst37_out;
  assign inst40_in1 = inst38_out;
  assign inst41_in1 = inst39_out;
  assign inst4_in0 = I[2];
  assign inst4_in1 = I[0];
  assign inst6_in1 = inst4_out;
  assign inst41_in0 = inst40_out;
  assign inst42_in1 = inst41_out;
  assign inst44_in1 = inst41_out;
  assign inst45_in0 = inst41_out;
  assign inst43_in0 = inst42_out;
  assign O[2] = inst43_out;
  assign inst47_in0 = inst44_out;
  assign inst47_in1 = inst45_out;
  assign inst48_in1 = inst46_out;
  assign inst48_in0 = inst47_out;
  assign O[3] = inst48_out;
  assign inst6_in0 = inst5_out;
  assign inst7_in0 = I[3];
  assign inst7_in1 = I[4];
  assign inst8_in0 = inst7_out;
  assign inst8_in1 = I[5];
  assign inst9_in0 = I[3];
  assign inst9_in1 = I[4];

endmodule //PopCount8_flattened

module bitir_or (
  input in0,
  input in1,
  output out
);
  assign out = in0 | in1;

endmodule //bitir_or

module bitir_xor (
  input in0,
  input in1,
  output out
);
  assign out = in0 ^ in1;

endmodule //bitir_xor

module bitir_and (
  input in0,
  input in1,
  output out
);
  assign out = in0 & in1;

endmodule //bitir_and

module bitir_const #(parameter value=16) (
  output out
);
  assign out = value;

endmodule //bitir_const
