

module Register4 (
  input  CLK,
  input [3:0] I,
  output [3:0] O
);
  //Wire declarations for instance 'inst0' (Module DFF_init0_has_ceFalse_has_resetFalse_has_setFalse)
  wire  inst0_CLK;
  wire  inst0_I;
  wire  inst0_O;
  DFF_init0_has_ceFalse_has_resetFalse_has_setFalse inst0(
    .CLK(inst0_CLK),
    .I(inst0_I),
    .O(inst0_O)
  );

  //Wire declarations for instance 'inst1' (Module DFF_init0_has_ceFalse_has_resetFalse_has_setFalse)
  wire  inst1_CLK;
  wire  inst1_I;
  wire  inst1_O;
  DFF_init0_has_ceFalse_has_resetFalse_has_setFalse inst1(
    .CLK(inst1_CLK),
    .I(inst1_I),
    .O(inst1_O)
  );

  //Wire declarations for instance 'inst2' (Module DFF_init0_has_ceFalse_has_resetFalse_has_setFalse)
  wire  inst2_CLK;
  wire  inst2_I;
  wire  inst2_O;
  DFF_init0_has_ceFalse_has_resetFalse_has_setFalse inst2(
    .CLK(inst2_CLK),
    .I(inst2_I),
    .O(inst2_O)
  );

  //Wire declarations for instance 'inst3' (Module DFF_init0_has_ceFalse_has_resetFalse_has_setFalse)
  wire  inst3_CLK;
  wire  inst3_I;
  wire  inst3_O;
  DFF_init0_has_ceFalse_has_resetFalse_has_setFalse inst3(
    .CLK(inst3_CLK),
    .I(inst3_I),
    .O(inst3_O)
  );

  //All the connections
  assign inst0_CLK = CLK;
  assign inst0_I = I[0];
  assign O[0] = inst0_O;
  assign inst1_CLK = CLK;
  assign inst1_I = I[1];
  assign O[1] = inst1_O;
  assign inst2_CLK = CLK;
  assign inst2_I = I[2];
  assign O[2] = inst2_O;
  assign inst3_CLK = CLK;
  assign inst3_I = I[3];
  assign O[3] = inst3_O;

endmodule //Register4

module Add4_cout (
  output  COUT,
  input [3:0] I0,
  input [3:0] I1,
  output [3:0] O
);
  //Wire declarations for instance 'bit_const_GND' (Module const)
  wire  bit_const_GND_out;
  bitir_const #(.value(0)) bit_const_GND(
    .out(bit_const_GND_out)
  );

  //Wire declarations for instance 'inst0' (Module add)
  wire [4:0] inst0_in0;
  wire [4:0] inst0_out;
  wire [4:0] inst0_in1;
  coreir_add #(.width(5)) inst0(
    .in0(inst0_in0),
    .in1(inst0_in1),
    .out(inst0_out)
  );

  //All the connections
  assign inst0_in0[4] = bit_const_GND_out;
  assign inst0_in1[4] = bit_const_GND_out;
  assign COUT = inst0_out[4];
  assign inst0_in0[0] = I0[0];
  assign inst0_in0[1] = I0[1];
  assign inst0_in0[2] = I0[2];
  assign inst0_in0[3] = I0[3];
  assign inst0_in1[0] = I1[0];
  assign inst0_in1[1] = I1[1];
  assign inst0_in1[2] = I1[2];
  assign inst0_in1[3] = I1[3];
  assign O[0] = inst0_out[0];
  assign O[1] = inst0_out[1];
  assign O[2] = inst0_out[2];
  assign O[3] = inst0_out[3];

endmodule //Add4_cout

module DFF_init0_has_ceFalse_has_resetFalse_has_setFalse (
  input  CLK,
  input  I,
  output  O
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

endmodule //DFF_init0_has_ceFalse_has_resetFalse_has_setFalse

module reg_U0 #(parameter init=16) (
  input  clk,
  input [0:0] in,
  output [0:0] out
);
  //Wire declarations for instance 'reg0' (Module reg)
  wire  reg0_clk;
  wire [0:0] reg0_in;
  wire [0:0] reg0_out;
  coreir_reg #(.width(1)) reg0(
    .clk(reg0_clk),
    .in(reg0_in),
    .out(reg0_out)
  );

  //All the connections
  assign reg0_clk = clk;
  assign reg0_in[0:0] = in[0:0];
  assign out[0:0] = reg0_out[0:0];

endmodule //reg_U0

module coreir_reg #(parameter width=16) (
  input clk,
  input [width-1:0] in,
  output [width-1:0] out
);
reg [width-1:0] outReg;
always @(posedge clk) begin
  outReg <= in;
end
assign out = outReg;

endmodule //coreir_reg

module coreir_add #(parameter width=16) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = in0 + in1;

endmodule //coreir_add

module Counter4 (
  input  CLK,
  output  COUT,
  output [3:0] O
);
  //Wire declarations for instance 'bit_const_GND' (Module const)
  wire  bit_const_GND_out;
  bitir_const #(.value(0)) bit_const_GND(
    .out(bit_const_GND_out)
  );

  //Wire declarations for instance 'bit_const_VCC' (Module const)
  wire  bit_const_VCC_out;
  bitir_const #(.value(1)) bit_const_VCC(
    .out(bit_const_VCC_out)
  );

  //Wire declarations for instance 'inst0' (Module Add4_cout)
  wire  inst0_COUT;
  wire [3:0] inst0_I0;
  wire [3:0] inst0_I1;
  wire [3:0] inst0_O;
  Add4_cout inst0(
    .COUT(inst0_COUT),
    .I0(inst0_I0),
    .I1(inst0_I1),
    .O(inst0_O)
  );

  //Wire declarations for instance 'inst1' (Module Register4)
  wire  inst1_CLK;
  wire [3:0] inst1_I;
  wire [3:0] inst1_O;
  Register4 inst1(
    .CLK(inst1_CLK),
    .I(inst1_I),
    .O(inst1_O)
  );

  //All the connections
  assign inst0_I1[1] = bit_const_GND_out;
  assign inst0_I1[2] = bit_const_GND_out;
  assign inst0_I1[3] = bit_const_GND_out;
  assign inst0_I1[0] = bit_const_VCC_out;
  assign COUT = inst0_COUT;
  assign inst0_I0[3:0] = inst1_O[3:0];
  assign inst1_I[3:0] = inst0_O[3:0];
  assign inst1_CLK = CLK;
  assign O[3:0] = inst1_O[3:0];

endmodule //Counter4

module bitir_const #(parameter value=16) (
  output out
);
  assign out = value;

endmodule //bitir_const
