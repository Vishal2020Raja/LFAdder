`timescale 1ns / 1ps
`include "pg.sv"
`include "level0.sv"
`include "level1.sv"
`include "level2.sv"
`include "black.sv"
`include "adder.sv"

module test;

reg [31:0] a, b;
wire [31:0] p_list, g_list;
wire [15:0] p_list1, g_list1;
wire [7:0] p_list2, g_list2;
wire [7:0] p_list3, g_list3;
wire [7:0] p_list4, g_list4;
wire [7:0] p_list5, g_list5;
wire [14:0] p_list6, g_list6;
wire [31:0] s_list;
wire c;

level0 uut0(a,b,p_list,g_list);
level1 uut1(p_list,g_list,p_list1,g_list1);
level2 uut2(p_list1,g_list1,p_list2,g_list2);

// layer 3
black black3_1(p_list1[2], g_list1[2], p_list2[0], g_list2[0], p_list3[0], g_list3[0]);
black black3_2(p_list2[1], g_list2[1], p_list2[0], g_list2[0], p_list3[1], g_list3[1]);
black black3_3(p_list1[6], g_list1[6], p_list2[2], g_list2[2], p_list3[2], g_list3[2]);
black black3_4(p_list2[3], g_list2[3], p_list2[2], g_list2[2], p_list3[3], g_list3[3]);
black black3_5(p_list1[10], g_list1[10], p_list2[4], g_list2[4], p_list3[4], g_list3[4]);
black black3_6(p_list2[5], g_list2[5], p_list2[4], g_list2[4], p_list3[5], g_list3[5]);
black black3_7(p_list1[14], g_list1[14], p_list2[6], g_list2[6], p_list3[6], g_list3[6]);
black black3_8(p_list2[7], g_list2[7], p_list2[6], g_list2[6], p_list3[7], g_list3[7]);

// layer 4
black black4_1(p_list1[4], g_list1[4], p_list3[1], g_list3[1], p_list4[0], g_list4[0]);
black black4_2(p_list2[2], g_list2[2], p_list3[1], g_list3[1], p_list4[1], g_list4[1]);
black black4_3(p_list3[2], g_list3[2], p_list3[1], g_list3[1], p_list4[2], g_list4[2]);
black black4_4(p_list3[3], g_list3[3], p_list3[1], g_list3[1], p_list4[3], g_list4[3]);
black black4_5(p_list1[12], g_list1[4], p_list3[5], g_list3[5], p_list4[4], g_list4[4]);
black black4_6(p_list2[6], g_list2[6], p_list3[5], g_list3[5], p_list4[5], g_list4[5]);
black black4_7(p_list3[6], g_list3[6], p_list3[5], g_list3[5], p_list4[6], g_list4[6]);
black black4_8(p_list3[7], g_list3[7], p_list3[5], g_list3[5], p_list4[7], g_list4[7]);

// layer 5
black black5_1(p_list1[8], g_list1[8], p_list4[3], g_list4[3], p_list5[0], g_list5[0]);
black black5_2(p_list2[4], g_list2[4], p_list4[3], g_list4[3], p_list5[1], g_list5[1]);
black black5_3(p_list3[4], g_list3[4], p_list4[3], g_list4[3], p_list5[2], g_list5[2]);
black black5_4(p_list3[5], g_list3[5], p_list4[3], g_list4[3], p_list5[3], g_list5[3]);
black black5_5(p_list4[4], g_list4[4], p_list4[3], g_list4[3], p_list5[4], g_list5[4]);
black black5_6(p_list4[5], g_list4[5], p_list4[3], g_list4[3], p_list5[5], g_list5[5]);
black black5_7(p_list4[6], g_list4[6], p_list4[3], g_list4[3], p_list5[6], g_list5[6]);
black black5_8(p_list4[7], g_list4[7], p_list4[3], g_list4[3], p_list5[7], g_list5[7]);

// layer 6
black black6_0(p_list[2], g_list[2], p_list1[0], g_list1[0], p_list6[0], g_list6[0]);
black black6_1(p_list[4], g_list[4], p_list2[0], g_list2[0], p_list6[1], g_list6[1]);
black black6_2(p_list[6], g_list[6], p_list3[0], g_list3[0], p_list6[2], g_list6[2]);
black black6_3(p_list[8], g_list[8], p_list3[1], g_list3[1], p_list6[3], g_list6[3]);
black black6_4(p_list[10], g_list[10], p_list4[0], g_list4[0], p_list6[4], g_list6[4]);
black black6_5(p_list[12], g_list[12], p_list4[1], g_list4[1], p_list6[5], g_list6[5]);
black black6_6(p_list[14], g_list[14], p_list4[2], g_list4[2], p_list6[6], g_list6[6]);
black black6_7(p_list[16], g_list[16], p_list4[3], g_list4[3], p_list6[7], g_list6[7]);
black black6_8(p_list[18], g_list[18], p_list5[0], g_list5[0], p_list6[8], g_list6[8]);
black black6_9(p_list[20], g_list[20], p_list5[1], g_list5[1], p_list6[9], g_list6[9]);
black black6_10(p_list[22], g_list[22], p_list5[2], g_list5[2], p_list6[10], g_list6[10]);
black black6_11(p_list[24], g_list[24], p_list5[3], g_list5[3], p_list6[11], g_list6[11]);
black black6_12(p_list[26], g_list[26], p_list5[4], g_list5[4], p_list6[12], g_list6[12]);
black black6_13(p_list[28], g_list[28], p_list5[5], g_list5[5], p_list6[13], g_list6[13]);
black black6_14(p_list[30], g_list[30], p_list5[6], g_list5[6], p_list6[14], g_list6[14]);

adder adder1(
{
g_list5[7],//0
g_list6[14],
g_list5[6],//2
g_list6[13],
g_list5[5],//4
g_list6[12],
g_list5[4],//6
g_list6[11],
g_list5[3],//8
g_list6[10],
g_list5[2],//10
g_list6[9],
g_list5[1],//12
g_list6[8],
g_list5[0],//14
g_list6[7],
g_list4[3],//16
g_list6[6],
g_list4[2],//18
g_list6[5],
g_list4[1],//20
g_list6[4],
g_list4[0],//22
g_list6[3],
g_list3[1],//24
g_list6[2],
g_list3[0],//26
g_list6[1],
g_list2[0],//28
g_list6[0],
g_list1[0],//30
g_list[0]
},
p_list,
s_list,
c);

initial begin 

$dumpfile("dump.vcd");
$dumpvars;

a <= 32'h3a6f36e3;
b <= 32'hf6af8732;
#2;

end

endmodule
