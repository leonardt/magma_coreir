

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

module SISO4 (
  input  CLK,
  input  I,
  output  O
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
  assign inst0_I = I;
  assign inst1_I = inst0_O;
  assign inst1_CLK = CLK;
  assign inst2_I = inst1_O;
  assign inst2_CLK = CLK;
  assign inst3_I = inst2_O;
  assign inst3_CLK = CLK;
  assign O = inst3_O;

endmodule //SISO4

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
