//Module: coreir_bitor defined externally
//Module: coreir_bitand defined externally
//Module: coreir_bitxor defined externally
//Module: coreir_bitconst defined externally


module PopCount8_flattened(
  output [3:0] O,
  input [7:0] I
);

  //Wire declarations for instance 'bit_const_GND' (Module bitconst)
  wire  bit_const_GND_out;
  coreir_bitconst #(.value(Int(0))) bit_const_GND(
    .out(bit_const_GND_out)
  );

  //Wire declarations for instance 'inst0' (Module bitxor)
  wire  inst0_in0;
  wire  inst0_out;
  wire  inst0_in1;
  coreir_bitxor inst0(
    .in1(inst0_in1),
    .out(inst0_out),
    .in0(inst0_in0)
  );

  //Wire declarations for instance 'inst1' (Module bitxor)
  wire  inst1_in0;
  wire  inst1_out;
  wire  inst1_in1;
  coreir_bitxor inst1(
    .in1(inst1_in1),
    .out(inst1_out),
    .in0(inst1_in0)
  );

  //Wire declarations for instance 'inst10' (Module bitand)
  wire  inst10_in0;
  wire  inst10_out;
  wire  inst10_in1;
  coreir_bitand inst10(
    .in1(inst10_in1),
    .out(inst10_out),
    .in0(inst10_in0)
  );

  //Wire declarations for instance 'inst11' (Module bitand)
  wire  inst11_in0;
  wire  inst11_out;
  wire  inst11_in1;
  coreir_bitand inst11(
    .in1(inst11_in1),
    .out(inst11_out),
    .in0(inst11_in0)
  );

  //Wire declarations for instance 'inst12' (Module bitor)
  wire  inst12_in0;
  wire  inst12_out;
  wire  inst12_in1;
  coreir_bitor inst12(
    .in1(inst12_in1),
    .out(inst12_out),
    .in0(inst12_in0)
  );

  //Wire declarations for instance 'inst13' (Module bitor)
  wire  inst13_in0;
  wire  inst13_out;
  wire  inst13_in1;
  coreir_bitor inst13(
    .in1(inst13_in1),
    .out(inst13_out),
    .in0(inst13_in0)
  );

  //Wire declarations for instance 'inst14' (Module bitxor)
  wire  inst14_in0;
  wire  inst14_out;
  wire  inst14_in1;
  coreir_bitxor inst14(
    .in1(inst14_in1),
    .out(inst14_out),
    .in0(inst14_in0)
  );

  //Wire declarations for instance 'inst15' (Module bitxor)
  wire  inst15_in0;
  wire  inst15_out;
  wire  inst15_in1;
  coreir_bitxor inst15(
    .in1(inst15_in1),
    .out(inst15_out),
    .in0(inst15_in0)
  );

  //Wire declarations for instance 'inst16' (Module bitand)
  wire  inst16_in0;
  wire  inst16_out;
  wire  inst16_in1;
  coreir_bitand inst16(
    .in1(inst16_in1),
    .out(inst16_out),
    .in0(inst16_in0)
  );

  //Wire declarations for instance 'inst17' (Module bitand)
  wire  inst17_in0;
  wire  inst17_out;
  wire  inst17_in1;
  coreir_bitand inst17(
    .in1(inst17_in1),
    .out(inst17_out),
    .in0(inst17_in0)
  );

  //Wire declarations for instance 'inst18' (Module bitand)
  wire  inst18_in0;
  wire  inst18_out;
  wire  inst18_in1;
  coreir_bitand inst18(
    .in1(inst18_in1),
    .out(inst18_out),
    .in0(inst18_in0)
  );

  //Wire declarations for instance 'inst19' (Module bitor)
  wire  inst19_in0;
  wire  inst19_out;
  wire  inst19_in1;
  coreir_bitor inst19(
    .in1(inst19_in1),
    .out(inst19_out),
    .in0(inst19_in0)
  );

  //Wire declarations for instance 'inst2' (Module bitand)
  wire  inst2_in0;
  wire  inst2_out;
  wire  inst2_in1;
  coreir_bitand inst2(
    .in1(inst2_in1),
    .out(inst2_out),
    .in0(inst2_in0)
  );

  //Wire declarations for instance 'inst20' (Module bitor)
  wire  inst20_in0;
  wire  inst20_out;
  wire  inst20_in1;
  coreir_bitor inst20(
    .in1(inst20_in1),
    .out(inst20_out),
    .in0(inst20_in0)
  );

  //Wire declarations for instance 'inst21' (Module bitxor)
  wire  inst21_in0;
  wire  inst21_out;
  wire  inst21_in1;
  coreir_bitxor inst21(
    .in1(inst21_in1),
    .out(inst21_out),
    .in0(inst21_in0)
  );

  //Wire declarations for instance 'inst22' (Module bitxor)
  wire  inst22_in0;
  wire  inst22_out;
  wire  inst22_in1;
  coreir_bitxor inst22(
    .in1(inst22_in1),
    .out(inst22_out),
    .in0(inst22_in0)
  );

  //Wire declarations for instance 'inst23' (Module bitand)
  wire  inst23_in0;
  wire  inst23_out;
  wire  inst23_in1;
  coreir_bitand inst23(
    .in1(inst23_in1),
    .out(inst23_out),
    .in0(inst23_in0)
  );

  //Wire declarations for instance 'inst24' (Module bitand)
  wire  inst24_in0;
  wire  inst24_out;
  wire  inst24_in1;
  coreir_bitand inst24(
    .in1(inst24_in1),
    .out(inst24_out),
    .in0(inst24_in0)
  );

  //Wire declarations for instance 'inst25' (Module bitand)
  wire  inst25_in0;
  wire  inst25_out;
  wire  inst25_in1;
  coreir_bitand inst25(
    .in1(inst25_in1),
    .out(inst25_out),
    .in0(inst25_in0)
  );

  //Wire declarations for instance 'inst26' (Module bitor)
  wire  inst26_in0;
  wire  inst26_out;
  wire  inst26_in1;
  coreir_bitor inst26(
    .in1(inst26_in1),
    .out(inst26_out),
    .in0(inst26_in0)
  );

  //Wire declarations for instance 'inst27' (Module bitor)
  wire  inst27_in0;
  wire  inst27_out;
  wire  inst27_in1;
  coreir_bitor inst27(
    .in1(inst27_in1),
    .out(inst27_out),
    .in0(inst27_in0)
  );

  //Wire declarations for instance 'inst28' (Module bitxor)
  wire  inst28_in0;
  wire  inst28_out;
  wire  inst28_in1;
  coreir_bitxor inst28(
    .in1(inst28_in1),
    .out(inst28_out),
    .in0(inst28_in0)
  );

  //Wire declarations for instance 'inst29' (Module bitxor)
  wire  inst29_in0;
  wire  inst29_out;
  wire  inst29_in1;
  coreir_bitxor inst29(
    .in1(inst29_in1),
    .out(inst29_out),
    .in0(inst29_in0)
  );

  //Wire declarations for instance 'inst3' (Module bitand)
  wire  inst3_in0;
  wire  inst3_out;
  wire  inst3_in1;
  coreir_bitand inst3(
    .in1(inst3_in1),
    .out(inst3_out),
    .in0(inst3_in0)
  );

  //Wire declarations for instance 'inst30' (Module bitand)
  wire  inst30_in0;
  wire  inst30_out;
  wire  inst30_in1;
  coreir_bitand inst30(
    .in1(inst30_in1),
    .out(inst30_out),
    .in0(inst30_in0)
  );

  //Wire declarations for instance 'inst31' (Module bitand)
  wire  inst31_in0;
  wire  inst31_out;
  wire  inst31_in1;
  coreir_bitand inst31(
    .in1(inst31_in1),
    .out(inst31_out),
    .in0(inst31_in0)
  );

  //Wire declarations for instance 'inst32' (Module bitand)
  wire  inst32_in0;
  wire  inst32_out;
  wire  inst32_in1;
  coreir_bitand inst32(
    .in1(inst32_in1),
    .out(inst32_out),
    .in0(inst32_in0)
  );

  //Wire declarations for instance 'inst33' (Module bitor)
  wire  inst33_in0;
  wire  inst33_out;
  wire  inst33_in1;
  coreir_bitor inst33(
    .in1(inst33_in1),
    .out(inst33_out),
    .in0(inst33_in0)
  );

  //Wire declarations for instance 'inst34' (Module bitor)
  wire  inst34_in0;
  wire  inst34_out;
  wire  inst34_in1;
  coreir_bitor inst34(
    .in1(inst34_in1),
    .out(inst34_out),
    .in0(inst34_in0)
  );

  //Wire declarations for instance 'inst35' (Module bitxor)
  wire  inst35_in0;
  wire  inst35_out;
  wire  inst35_in1;
  coreir_bitxor inst35(
    .in1(inst35_in1),
    .out(inst35_out),
    .in0(inst35_in0)
  );

  //Wire declarations for instance 'inst36' (Module bitxor)
  wire  inst36_in0;
  wire  inst36_out;
  wire  inst36_in1;
  coreir_bitxor inst36(
    .in1(inst36_in1),
    .out(inst36_out),
    .in0(inst36_in0)
  );

  //Wire declarations for instance 'inst37' (Module bitand)
  wire  inst37_in0;
  wire  inst37_out;
  wire  inst37_in1;
  coreir_bitand inst37(
    .in1(inst37_in1),
    .out(inst37_out),
    .in0(inst37_in0)
  );

  //Wire declarations for instance 'inst38' (Module bitand)
  wire  inst38_in0;
  wire  inst38_out;
  wire  inst38_in1;
  coreir_bitand inst38(
    .in1(inst38_in1),
    .out(inst38_out),
    .in0(inst38_in0)
  );

  //Wire declarations for instance 'inst39' (Module bitand)
  wire  inst39_in0;
  wire  inst39_out;
  wire  inst39_in1;
  coreir_bitand inst39(
    .in1(inst39_in1),
    .out(inst39_out),
    .in0(inst39_in0)
  );

  //Wire declarations for instance 'inst4' (Module bitand)
  wire  inst4_in0;
  wire  inst4_out;
  wire  inst4_in1;
  coreir_bitand inst4(
    .in1(inst4_in1),
    .out(inst4_out),
    .in0(inst4_in0)
  );

  //Wire declarations for instance 'inst40' (Module bitor)
  wire  inst40_in0;
  wire  inst40_out;
  wire  inst40_in1;
  coreir_bitor inst40(
    .in1(inst40_in1),
    .out(inst40_out),
    .in0(inst40_in0)
  );

  //Wire declarations for instance 'inst41' (Module bitor)
  wire  inst41_in0;
  wire  inst41_out;
  wire  inst41_in1;
  coreir_bitor inst41(
    .in1(inst41_in1),
    .out(inst41_out),
    .in0(inst41_in0)
  );

  //Wire declarations for instance 'inst42' (Module bitxor)
  wire  inst42_in0;
  wire  inst42_out;
  wire  inst42_in1;
  coreir_bitxor inst42(
    .in1(inst42_in1),
    .out(inst42_out),
    .in0(inst42_in0)
  );

  //Wire declarations for instance 'inst43' (Module bitxor)
  wire  inst43_in0;
  wire  inst43_out;
  wire  inst43_in1;
  coreir_bitxor inst43(
    .in1(inst43_in1),
    .out(inst43_out),
    .in0(inst43_in0)
  );

  //Wire declarations for instance 'inst44' (Module bitand)
  wire  inst44_in0;
  wire  inst44_out;
  wire  inst44_in1;
  coreir_bitand inst44(
    .in1(inst44_in1),
    .out(inst44_out),
    .in0(inst44_in0)
  );

  //Wire declarations for instance 'inst45' (Module bitand)
  wire  inst45_in0;
  wire  inst45_out;
  wire  inst45_in1;
  coreir_bitand inst45(
    .in1(inst45_in1),
    .out(inst45_out),
    .in0(inst45_in0)
  );

  //Wire declarations for instance 'inst46' (Module bitand)
  wire  inst46_in0;
  wire  inst46_out;
  wire  inst46_in1;
  coreir_bitand inst46(
    .in1(inst46_in1),
    .out(inst46_out),
    .in0(inst46_in0)
  );

  //Wire declarations for instance 'inst47' (Module bitor)
  wire  inst47_in0;
  wire  inst47_out;
  wire  inst47_in1;
  coreir_bitor inst47(
    .in1(inst47_in1),
    .out(inst47_out),
    .in0(inst47_in0)
  );

  //Wire declarations for instance 'inst48' (Module bitor)
  wire  inst48_in0;
  wire  inst48_out;
  wire  inst48_in1;
  coreir_bitor inst48(
    .in1(inst48_in1),
    .out(inst48_out),
    .in0(inst48_in0)
  );

  //Wire declarations for instance 'inst5' (Module bitor)
  wire  inst5_in0;
  wire  inst5_out;
  wire  inst5_in1;
  coreir_bitor inst5(
    .in1(inst5_in1),
    .out(inst5_out),
    .in0(inst5_in0)
  );

  //Wire declarations for instance 'inst6' (Module bitor)
  wire  inst6_in0;
  wire  inst6_out;
  wire  inst6_in1;
  coreir_bitor inst6(
    .in1(inst6_in1),
    .out(inst6_out),
    .in0(inst6_in0)
  );

  //Wire declarations for instance 'inst7' (Module bitxor)
  wire  inst7_in0;
  wire  inst7_out;
  wire  inst7_in1;
  coreir_bitxor inst7(
    .in1(inst7_in1),
    .out(inst7_out),
    .in0(inst7_in0)
  );

  //Wire declarations for instance 'inst8' (Module bitxor)
  wire  inst8_in0;
  wire  inst8_out;
  wire  inst8_in1;
  coreir_bitxor inst8(
    .in1(inst8_in1),
    .out(inst8_out),
    .in0(inst8_in0)
  );

  //Wire declarations for instance 'inst9' (Module bitand)
  wire  inst9_in0;
  wire  inst9_out;
  wire  inst9_in1;
  coreir_bitand inst9(
    .in1(inst9_in1),
    .out(inst9_out),
    .in0(inst9_in0)
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
