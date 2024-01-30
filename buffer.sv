`timescale 1ns/1ps

module buffer(
  input  wire pi,
  input  wire gi,
  output wire p,
  output wire g
);

assign g = gi;

endmodule
