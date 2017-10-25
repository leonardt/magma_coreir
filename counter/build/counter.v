

module corebit_const #(parameter value=1) (
  output out
);
  assign out = value;

endmodule //corebit_const

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

module coreir_add #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = in0 + in1;

endmodule //coreir_add

module Add4 (
  input [3:0] I0,
  input [3:0] I1,
  output [3:0] O
);
  //Wire declarations for instance 'inst0' (Module coreir_add)
  wire [3:0] inst0_in0;
  wire [3:0] inst0_out;
  wire [3:0] inst0_in1;
  coreir_add #(.width(4)) inst0(
    .in0(inst0_in0),
    .in1(inst0_in1),
    .out(inst0_out)
  );

  //All the connections
  assign inst0_in0[3:0] = I0[3:0];
  assign inst0_in1[3:0] = I1[3:0];
  assign O[3:0] = inst0_out[3:0];

endmodule //Add4

module reg_U1 #(parameter init=1) (
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

endmodule //reg_U1

module DFF_init0_has_ceFalse_has_resetTrue (
  input  CLK,
  input  I,
  output  O,
  input  RESET
);
  //Wire declarations for instance 'inst0' (Module reg_U1)
  wire [0:0] inst0_in;
  wire  inst0_clk;
  wire [0:0] inst0_out;
  reg_U1 #(.init(1'd0)) inst0(
    .clk(inst0_clk),
    .in(inst0_in),
    .out(inst0_out)
  );

  //All the connections
  assign inst0_clk = CLK;
  assign inst0_in[0] = I;
  assign O = inst0_out[0];

endmodule //DFF_init0_has_ceFalse_has_resetTrue

module Register4R (
  input  CLK,
  input [3:0] I,
  output [3:0] O,
  input  RESET
);
  //Wire declarations for instance 'inst0' (Module DFF_init0_has_ceFalse_has_resetTrue)
  wire  inst0_CLK;
  wire  inst0_I;
  wire  inst0_RESET;
  wire  inst0_O;
  DFF_init0_has_ceFalse_has_resetTrue inst0(
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

  //All the connections
  assign inst0_CLK = CLK;
  assign inst0_I = I[0];
  assign O[0] = inst0_O;
  assign inst0_RESET = RESET;
  assign inst1_CLK = CLK;
  assign inst1_I = I[1];
  assign O[1] = inst1_O;
  assign inst1_RESET = RESET;
  assign inst2_CLK = CLK;
  assign inst2_I = I[2];
  assign O[2] = inst2_O;
  assign inst2_RESET = RESET;
  assign inst3_CLK = CLK;
  assign inst3_I = I[3];
  assign O[3] = inst3_O;
  assign inst3_RESET = RESET;

endmodule //Register4R

module Counter4R (
  input  CLK,
  output [3:0] O,
  input  RESET
);
  //Wire declarations for instance 'bit_const_GND' (Module corebit_const)
  wire  bit_const_GND_out;
  corebit_const #(.value(0)) bit_const_GND(
    .out(bit_const_GND_out)
  );

  //Wire declarations for instance 'bit_const_VCC' (Module corebit_const)
  wire  bit_const_VCC_out;
  corebit_const #(.value(1)) bit_const_VCC(
    .out(bit_const_VCC_out)
  );

  //Wire declarations for instance 'inst0' (Module Add4)
  wire [3:0] inst0_I0;
  wire [3:0] inst0_I1;
  wire [3:0] inst0_O;
  Add4 inst0(
    .I0(inst0_I0),
    .I1(inst0_I1),
    .O(inst0_O)
  );

  //Wire declarations for instance 'inst1' (Module Register4R)
  wire  inst1_CLK;
  wire [3:0] inst1_I;
  wire  inst1_RESET;
  wire [3:0] inst1_O;
  Register4R inst1(
    .CLK(inst1_CLK),
    .I(inst1_I),
    .O(inst1_O),
    .RESET(inst1_RESET)
  );

  //All the connections
  assign inst0_I1[1] = bit_const_GND_out;
  assign inst0_I1[2] = bit_const_GND_out;
  assign inst0_I1[3] = bit_const_GND_out;
  assign inst0_I1[0] = bit_const_VCC_out;
  assign inst0_I0[3:0] = inst1_O[3:0];
  assign inst1_I[3:0] = inst0_O[3:0];
  assign inst1_CLK = CLK;
  assign O[3:0] = inst1_O[3:0];
  assign inst1_RESET = RESET;

endmodule //Counter4R
