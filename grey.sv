`timescale 1ns/1ps

module grey(
  input  wire pi_j,
  input  wire gi_j,
  input  wire gj_k,
  output wire gi_k
);

//  31... i ... j ... k ...0 in that order

assign gi_k = gi_j | (gj_k & pi_j);

endmodule
