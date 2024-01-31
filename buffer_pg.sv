`timescale 1ns/1ps

module buffer_pg(
  input  wire pi,
  input  wire gi,
  output wire p,
  output wire g
);

assign g = gi;
assign p = gi;

endmodule
