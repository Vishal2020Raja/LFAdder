`timescale 1ns / 1ps
`include "pg.sv"
`include "level0.sv"
`include "level1.sv"
`include "level2.sv"
`include "black.sv"
`include "adder.sv"
`include "lfadder.sv"
`include "grey.sv"
`include "buffer_pg.sv"
`include "buffer.sv"

module test;

reg [31:0] a, b;
wire [31:0] s_list;
wire c;

lfadder lfa1(
a,
b,
s_list,
c);

initial begin 

$dumpfile("dump.vcd");
$dumpvars;

a <= 32'h3a6f36e3;
b <= 32'hf6af8732;
#2;

$monitor("Time: %0t, Sum: %h", $time, s_list);

end

endmodule
