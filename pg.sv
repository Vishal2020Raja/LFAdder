`timescale 1ns/1ps

module pg(
  input  wire a,
  input  wire b,
  output wire p,
  output wire g
);

assign p = a ^ b;
assign g = a & b;

endmodule
