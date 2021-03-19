module $__MY_DPRAM_1024x8 (
  output [7:0] B1DATA,
  input CLK1,
  input [9:0] B1ADDR,
  input [9:0] A1ADDR,
  input [7:0] A1DATA,
  input A1EN,
  input B1EN );

  generate
    dpram_1024x8 #() _TECHMAP_REPLACE_ (
      .clk    (CLK1),
      .wen    (A1EN),
      .waddr    (A1ADDR),
      .data_in    (A1DATA),
      .ren    (B1EN),
      .raddr    (B1ADDR),
      .data_out    (B1DATA) );
  endgenerate

endmodule
