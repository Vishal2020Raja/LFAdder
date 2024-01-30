`timescale 1ns/1ps

module black(
  input  wire pi_j,
  input  wire gi_j,
  input  wire pj_k,
  input  wire gj_k,
  output wire pi_k,
  output wire gi_k
);

//  31... i ... j ... k ...0 in that order

assign pi_k = pi_j & pj_k;
assign gi_k = gi_j | (gj_k & pi_j);

endmodule
