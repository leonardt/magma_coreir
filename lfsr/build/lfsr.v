

module corebit_xor (
  input in0,
  input in1,
  output out
);
  assign out = in0 ^ in1;

endmodule //corebit_xor

module coreir_reg #(parameter init=1, parameter width=1) (
  input clk,
  input [width-1:0] in,
  output [width-1:0] out
);
reg [width-1:0] outReg=init;
always @(posedge clk) begin
  outReg <= in;
end
assign out = outReg;

endmodule //coreir_reg

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

module fold_xor4None (
  input  I0,
  input  I1,
  input  I2,
  input  I3,
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

  //Wire declarations for instance 'inst2' (Module xor_wrapped)
  wire  inst2_I0;
  wire  inst2_I1;
  wire  inst2_O;
  xor_wrapped inst2(
    .I0(inst2_I0),
    .I1(inst2_I1),
    .O(inst2_O)
  );

  //All the connections
  assign inst0_I0 = I0;
  assign inst0_I1 = I1;
  assign inst1_I0 = inst0_O;
  assign inst1_I1 = I2;
  assign inst2_I0 = inst1_O;
  assign inst2_I1 = I3;
  assign O = inst2_O;

endmodule //fold_xor4None

module reg_U0 #(parameter init=1) (
  input  clk,
  input [0:0] in,
  output [0:0] out
);
  //Wire declarations for instance 'reg0' (Module coreir_reg)
  wire  reg0_clk;
  wire [0:0] reg0_in;
  wire [0:0] reg0_out;
  coreir_reg #(.init(init),.width(1)) reg0(
    .clk(reg0_clk),
    .in(reg0_in),
    .out(reg0_out)
  );

  //All the connections
  assign reg0_clk = clk;
  assign reg0_in[0:0] = in[0:0];
  assign out[0:0] = reg0_out[0:0];

endmodule //reg_U0

module DFF_init0_has_ceFalse_has_resetTrue (
  input  CLK,
  input  I,
  output  O,
  input  RESET
);
  //Wire declarations for instance 'inst0' (Module reg_U0)
  wire [0:0] inst0_in;
  wire  inst0_clk;
  wire [0:0] inst0_out;
  reg_U0 #(.init(1'd0)) inst0(
    .clk(inst0_clk),
    .in(inst0_in),
    .out(inst0_out)
  );

  //All the connections
  assign inst0_clk = CLK;
  assign inst0_in[0] = I;
  assign O = inst0_out[0];

endmodule //DFF_init0_has_ceFalse_has_resetTrue

module DFF_init1_has_ceFalse_has_resetTrue (
  input  CLK,
  input  I,
  output  O,
  input  RESET
);
  //Wire declarations for instance 'inst0' (Module reg_U0)
  wire [0:0] inst0_in;
  wire  inst0_clk;
  wire [0:0] inst0_out;
  reg_U0 #(.init(1'd1)) inst0(
    .clk(inst0_clk),
    .in(inst0_in),
    .out(inst0_out)
  );

  //All the connections
  assign inst0_clk = CLK;
  assign inst0_in[0] = I;
  assign O = inst0_out[0];

endmodule //DFF_init1_has_ceFalse_has_resetTrue

module SIPO8R_0001 (
  input  CLK,
  input  I,
  output [7:0] O,
  input  RESET
);
  //Wire declarations for instance 'inst0' (Module DFF_init1_has_ceFalse_has_resetTrue)
  wire  inst0_CLK;
  wire  inst0_I;
  wire  inst0_RESET;
  wire  inst0_O;
  DFF_init1_has_ceFalse_has_resetTrue inst0(
    .CLK(inst0_CLK),
    .I(inst0_I),
    .O(inst0_O),
    .RESET(inst0_RESET)
  );

  //Wire declarations for instance 'inst1' (Module DFF_init0_has_ceFalse_has_resetTrue)
  wire  inst1_CLK;
  wire  inst1_I;
  wire  inst1_RESET;
  wire  inst1_O;
  DFF_init0_has_ceFalse_has_resetTrue inst1(
    .CLK(inst1_CLK),
    .I(inst1_I),
    .O(inst1_O),
    .RESET(inst1_RESET)
  );

  //Wire declarations for instance 'inst2' (Module DFF_init0_has_ceFalse_has_resetTrue)
  wire  inst2_CLK;
  wire  inst2_I;
  wire  inst2_RESET;
  wire  inst2_O;
  DFF_init0_has_ceFalse_has_resetTrue inst2(
    .CLK(inst2_CLK),
    .I(inst2_I),
    .O(inst2_O),
    .RESET(inst2_RESET)
  );

  //Wire declarations for instance 'inst3' (Module DFF_init0_has_ceFalse_has_resetTrue)
  wire  inst3_CLK;
  wire  inst3_I;
  wire  inst3_RESET;
  wire  inst3_O;
  DFF_init0_has_ceFalse_has_resetTrue inst3(
    .CLK(inst3_CLK),
    .I(inst3_I),
    .O(inst3_O),
    .RESET(inst3_RESET)
  );

  //Wire declarations for instance 'inst4' (Module DFF_init0_has_ceFalse_has_resetTrue)
  wire  inst4_CLK;
  wire  inst4_I;
  wire  inst4_RESET;
  wire  inst4_O;
  DFF_init0_has_ceFalse_has_resetTrue inst4(
    .CLK(inst4_CLK),
    .I(inst4_I),
    .O(inst4_O),
    .RESET(inst4_RESET)
  );

  //Wire declarations for instance 'inst5' (Module DFF_init0_has_ceFalse_has_resetTrue)
  wire  inst5_CLK;
  wire  inst5_I;
  wire  inst5_RESET;
  wire  inst5_O;
  DFF_init0_has_ceFalse_has_resetTrue inst5(
    .CLK(inst5_CLK),
    .I(inst5_I),
    .O(inst5_O),
    .RESET(inst5_RESET)
  );

  //Wire declarations for instance 'inst6' (Module DFF_init0_has_ceFalse_has_resetTrue)
  wire  inst6_CLK;
  wire  inst6_I;
  wire  inst6_RESET;
  wire  inst6_O;
  DFF_init0_has_ceFalse_has_resetTrue inst6(
    .CLK(inst6_CLK),
    .I(inst6_I),
    .O(inst6_O),
    .RESET(inst6_RESET)
  );

  //Wire declarations for instance 'inst7' (Module DFF_init0_has_ceFalse_has_resetTrue)
  wire  inst7_CLK;
  wire  inst7_I;
  wire  inst7_RESET;
  wire  inst7_O;
  DFF_init0_has_ceFalse_has_resetTrue inst7(
    .CLK(inst7_CLK),
    .I(inst7_I),
    .O(inst7_O),
    .RESET(inst7_RESET)
  );

  //All the connections
  assign inst0_CLK = CLK;
  assign inst0_I = I;
  assign inst1_I = inst0_O;
  assign O[0] = inst0_O;
  assign inst0_RESET = RESET;
  assign inst1_CLK = CLK;
  assign inst2_I = inst1_O;
  assign O[1] = inst1_O;
  assign inst1_RESET = RESET;
  assign inst2_CLK = CLK;
  assign inst3_I = inst2_O;
  assign O[2] = inst2_O;
  assign inst2_RESET = RESET;
  assign inst3_CLK = CLK;
  assign inst4_I = inst3_O;
  assign O[3] = inst3_O;
  assign inst3_RESET = RESET;
  assign inst4_CLK = CLK;
  assign inst5_I = inst4_O;
  assign O[4] = inst4_O;
  assign inst4_RESET = RESET;
  assign inst5_CLK = CLK;
  assign inst6_I = inst5_O;
  assign O[5] = inst5_O;
  assign inst5_RESET = RESET;
  assign inst6_CLK = CLK;
  assign inst7_I = inst6_O;
  assign O[6] = inst6_O;
  assign inst6_RESET = RESET;
  assign inst7_CLK = CLK;
  assign O[7] = inst7_O;
  assign inst7_RESET = RESET;

endmodule //SIPO8R_0001

module lfsr81False (
  input  CLK,
  output [7:0] O,
  input  RESET
);
  //Wire declarations for instance 'inst0' (Module SIPO8R_0001)
  wire  inst0_CLK;
  wire  inst0_I;
  wire  inst0_RESET;
  wire [7:0] inst0_O;
  SIPO8R_0001 inst0(
    .CLK(inst0_CLK),
    .I(inst0_I),
    .O(inst0_O),
    .RESET(inst0_RESET)
  );

  //Wire declarations for instance 'inst1' (Module fold_xor4None)
  wire  inst1_I0;
  wire  inst1_I1;
  wire  inst1_I2;
  wire  inst1_I3;
  wire  inst1_O;
  fold_xor4None inst1(
    .I0(inst1_I0),
    .I1(inst1_I1),
    .I2(inst1_I2),
    .I3(inst1_I3),
    .O(inst1_O)
  );

  //All the connections
  assign inst0_CLK = CLK;
  assign inst0_I = inst1_O;
  assign O[7:0] = inst0_O[7:0];
  assign inst0_RESET = RESET;
  assign inst1_I0 = inst0_O[7];
  assign inst1_I1 = inst0_O[5];
  assign inst1_I2 = inst0_O[4];
  assign inst1_I3 = inst0_O[3];

endmodule //lfsr81False
