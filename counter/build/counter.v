

module coreir_concat #(parameter width0=1, parameter width1=1) (
  input [width0-1:0] in0,
  input [width1-1:0] in1,
  output [width0+width1-1:0] out
);
  assign out = {in0,in1};

endmodule //coreir_concat

module corebit_const #(parameter value=1) (
  output out
);
  assign out = value;

endmodule //corebit_const

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

module corebit_concat (
  input in0,
  input in1,
  output [1:0] out
);
  assign out = {in0, in1};

endmodule //corebit_concat

module coreir_add #(parameter width=1) (
  input [width-1:0] in0,
  input [width-1:0] in1,
  output [width-1:0] out
);
  assign out = in0 + in1;

endmodule //coreir_add

module Register4R (
  input  CLK,
  input [3:0] I,
  output [3:0] O,
  input  RESET
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
  assign __magma_backend_concat0_in0 = inst0_O;
  assign __magma_backend_concat0_in1 = inst1_O;
  assign __magma_backend_concat2_in0[1:0] = __magma_backend_concat0_out[1:0];
  assign __magma_backend_concat1_in0 = inst2_O;
  assign __magma_backend_concat1_in1 = inst3_O;
  assign __magma_backend_concat2_in1[1:0] = __magma_backend_concat1_out[1:0];
  assign O[3:0] = __magma_backend_concat2_out[3:0];
  assign inst0_CLK = CLK;
  assign inst0_I = I[0];
  assign inst0_RESET = RESET;
  assign inst1_CLK = CLK;
  assign inst1_I = I[1];
  assign inst1_RESET = RESET;
  assign inst2_CLK = CLK;
  assign inst2_I = I[2];
  assign inst2_RESET = RESET;
  assign inst3_CLK = CLK;
  assign inst3_I = I[3];
  assign inst3_RESET = RESET;

endmodule //Register4R

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

module Counter4R (
  input  CLK,
  output [3:0] O,
  input  RESET
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
  assign __magma_backend_concat0_in0 = bit_const_VCC_out;
  assign __magma_backend_concat0_in1 = bit_const_GND_out;
  assign __magma_backend_concat2_in0[1:0] = __magma_backend_concat0_out[1:0];
  assign __magma_backend_concat1_in0 = bit_const_GND_out;
  assign __magma_backend_concat1_in1 = bit_const_GND_out;
  assign __magma_backend_concat2_in1[1:0] = __magma_backend_concat1_out[1:0];
  assign inst0_I1[3:0] = __magma_backend_concat2_out[3:0];
  assign inst0_I0[3:0] = inst1_O[3:0];
  assign inst1_I[3:0] = inst0_O[3:0];
  assign inst1_CLK = CLK;
  assign O[3:0] = inst1_O[3:0];
  assign inst1_RESET = RESET;

endmodule //Counter4R
