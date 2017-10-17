

module dff #(parameter init=1) (
  input clk,
  input in,
  input rst,
  output out
);
reg outReg;
always @(posedge clk) begin
  if (!rst) outReg <= init;
  else outReg <= in;
end
assign out = outReg;

endmodule //dff

module DFF_init0_has_ceFalse_has_resetTrue_has_setFalse (
  input  CLK,
  input  I,
  output  O,
  input  RESET
);
  //Wire declarations for instance 'inst0' (Module dff)
  wire  inst0_clk;
  wire  inst0_rst;
  wire  inst0_in;
  wire  inst0_out;
  dff #(.init(0)) inst0(
    .clk(inst0_clk),
    .in(inst0_in),
    .out(inst0_out),
    .rst(inst0_rst)
  );

  //All the connections
  assign inst0_clk = CLK;
  assign inst0_in = I;
  assign O = inst0_out;
  assign inst0_rst = RESET;

endmodule //DFF_init0_has_ceFalse_has_resetTrue_has_setFalse

module SISO4R (
  input  CLK,
  input  I,
  output  O,
  input  RESET
);
  //Wire declarations for instance 'inst0' (Module DFF_init0_has_ceFalse_has_resetTrue_has_setFalse)
  wire  inst0_CLK;
  wire  inst0_I;
  wire  inst0_RESET;
  wire  inst0_O;
  DFF_init0_has_ceFalse_has_resetTrue_has_setFalse inst0(
    .CLK(inst0_CLK),
    .I(inst0_I),
    .O(inst0_O),
    .RESET(inst0_RESET)
  );

  //Wire declarations for instance 'inst1' (Module DFF_init0_has_ceFalse_has_resetTrue_has_setFalse)
  wire  inst1_CLK;
  wire  inst1_I;
  wire  inst1_RESET;
  wire  inst1_O;
  DFF_init0_has_ceFalse_has_resetTrue_has_setFalse inst1(
    .CLK(inst1_CLK),
    .I(inst1_I),
    .O(inst1_O),
    .RESET(inst1_RESET)
  );

  //Wire declarations for instance 'inst2' (Module DFF_init0_has_ceFalse_has_resetTrue_has_setFalse)
  wire  inst2_CLK;
  wire  inst2_I;
  wire  inst2_RESET;
  wire  inst2_O;
  DFF_init0_has_ceFalse_has_resetTrue_has_setFalse inst2(
    .CLK(inst2_CLK),
    .I(inst2_I),
    .O(inst2_O),
    .RESET(inst2_RESET)
  );

  //Wire declarations for instance 'inst3' (Module DFF_init0_has_ceFalse_has_resetTrue_has_setFalse)
  wire  inst3_CLK;
  wire  inst3_I;
  wire  inst3_RESET;
  wire  inst3_O;
  DFF_init0_has_ceFalse_has_resetTrue_has_setFalse inst3(
    .CLK(inst3_CLK),
    .I(inst3_I),
    .O(inst3_O),
    .RESET(inst3_RESET)
  );

  //All the connections
  assign inst0_CLK = CLK;
  assign inst0_I = I;
  assign inst1_I = inst0_O;
  assign inst0_RESET = RESET;
  assign inst1_CLK = CLK;
  assign inst2_I = inst1_O;
  assign inst1_RESET = RESET;
  assign inst2_CLK = CLK;
  assign inst3_I = inst2_O;
  assign inst2_RESET = RESET;
  assign inst3_CLK = CLK;
  assign O = inst3_O;
  assign inst3_RESET = RESET;

endmodule //SISO4R
