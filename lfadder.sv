module lfadder(
input wire [31:0] a,
input wire [31:0] b,
output wire [31:0] s_list,
output wire c);

wire [31:0] p_list, g_list;
wire [15:0] p_list1, g_list1;
wire [7:0] p_list2, g_list2;
wire [7:0] p_list3, g_list3;
wire [7:0] p_list4, g_list4;
wire [7:0] p_list5, g_list5;
wire [14:0] p_list6, g_list6;
wire [15:1] p_list1b;
wire [15:0] g_list1b;
wire [7:0] g_list2b;
wire [7:1] p_list2b;
wire [3:1] p_list3b;
wire [3:0] g_list3b;
wire [3:2] p_list4b;
wire [3:0] g_list4b;
wire [10:0] g_list6b;

level0 uut0(a,b,p_list,g_list);
level1 uut1(p_list,g_list,p_list1,g_list1,p_list1b,g_list1b);
level2 uut2(p_list1,g_list1,p_list2,g_list2,p_list2b,g_list2b);

// layer 3
grey grey3_1(p_list2b[1], g_list2b[1], g_list2[0], g_list3[0]);
grey grey3_2(p_list2[1], g_list2[1], g_list2[0], g_list3[1]);
black black3_3(p_list2b[3], g_list2b[3], p_list2[2], g_list2[2], p_list3[2], g_list3[2]);
black black3_4(p_list2[3], g_list2[3], p_list2[2],g_list2[2], p_list3[3], g_list3[3]);
black black3_5(p_list2b[5], g_list2b[5], p_list2[4], g_list2[4], p_list3[4], g_list3[4]);
black black3_6(p_list2[5], g_list2[5], p_list2[4], g_list2[4], p_list3[5], g_list3[5]);
black black3_7(p_list2b[7], g_list2b[7], p_list2[6], g_list2[6], p_list3[6], g_list3[6]);
black black3_8(p_list2[7], g_list2[7], p_list2[6], g_list2[6], p_list3[7], g_list3[7]);

buffer buffer3_0(g_list2[0],g_list3b[0]);
buffer_pg buffer3_1(p_list2[2],g_list2[2],p_list3b[1], g_list3b[1]);
buffer_pg buffer3_2(p_list2[4],g_list2[4],p_list3b[2], g_list3b[2]);
buffer_pg buffer3_3(p_list2[6],g_list2[6],p_list3b[3], g_list3b[3]);

// layer 4
grey grey4_1(p_list2b[2], g_list2b[2], g_list3[1], g_list4[0]);
grey grey4_2(p_list3b[1], g_list3b[1], g_list3[1], g_list4[1]);
grey grey4_3(p_list3[2], g_list3[2], g_list3[1], g_list4[2]);
grey grey4_4(p_list3[3], g_list3[3], g_list3[1], g_list4[3]);
black black4_5(p_list2b[6], g_list2b[6], p_list3[5], g_list3[5], p_list4[4], g_list4[4]);
black black4_6(p_list3b[3], g_list3b[3], p_list3[5], g_list3[5], p_list4[5], g_list4[5]);
black black4_7(p_list3[6], g_list3[6], p_list3[5], g_list3[5], p_list4[6], g_list4[6]);
black black4_8(p_list3[7], g_list3[7], p_list3[5], g_list3[5], p_list4[7], g_list4[7]);

buffer buffer4_0(g_list3[0],g_list4b[0]);
buffer buffer4_1(g_list3[1],g_list4b[1]);
buffer_pg buffer4_2(g_list3[4],g_list3[4],p_list4b[2],g_list4b[2]);
buffer_pg buffer4_3(g_list3[5],g_list3[5],p_list4b[3],g_list4b[3]);


// layer 5
grey grey5_1(p_list1[8], g_list1[8], g_list4[3], g_list5[0]);
grey grey5_2(p_list2[4], g_list2[4], g_list4[3],  g_list5[1]);
grey grey5_3(p_list3[4], g_list3[4], g_list4[3],  g_list5[2]);
grey grey5_4(p_list3[5], g_list3[5], g_list4[3],  g_list5[3]);
grey grey5_5(p_list4[4], g_list4[4], g_list4[3],  g_list5[4]);
grey grey5_6(p_list4[5], g_list4[5], g_list4[3],  g_list5[5]);
grey grey5_7(p_list4[6], g_list4[6], g_list4[3], g_list5[6]);
grey grey5_8(p_list4[7], g_list4[7], g_list4[3],  g_list5[7]);


// layer 6
grey grey6_0(p_list[2], g_list[2], g_list1[0], g_list6[0]);
grey grey6_1(p_list[4], g_list[4], g_list2[0], g_list6[1]);
grey grey6_2(p_list[6], g_list[6], g_list3[0], g_list6[2]);
grey grey6_3(p_list[8], g_list[8], g_list3[1], g_list6[3]);
grey grey6_4(p_list[10], g_list[10], g_list4[0], g_list6[4]);
grey grey6_5(p_list[12], g_list[12], g_list4[1], g_list6[5]);
grey grey6_6(p_list[14], g_list[14], g_list4[2], g_list6[6]);
grey grey6_7(p_list[16], g_list[16], g_list4[3], g_list6[7]);
grey grey6_8(p_list[18], g_list[18], g_list5[0], g_list6[8]);
grey grey6_9(p_list[20], g_list[20], g_list5[1], g_list6[9]);
grey grey6_10(p_list[22], g_list[22], g_list5[2], g_list6[10]);
grey grey6_11(p_list[24], g_list[24], g_list5[3], g_list6[11]);
grey grey6_12(p_list[26], g_list[26], g_list5[4], g_list6[12]);
grey grey6_13(p_list[28], g_list[28], g_list5[5], g_list6[13]);
grey grey6_14(p_list[30], g_list[30], g_list5[6], g_list6[14]);

buffer buffer_6_0(g_list4[0],g_list6b[0]);
buffer buffer_6_1(g_list4[1],g_list6b[1]);
buffer buffer_6_2(g_list4[2],g_list6b[2]);
buffer buffer_6_3(g_list4[3],g_list6b[3]);

buffer buffer_6_4(g_list5[0],g_list6b[4]);
buffer buffer_6_5(g_list5[1],g_list6b[5]);
buffer buffer_6_6(g_list5[2],g_list6b[6]);
buffer buffer_6_7(g_list5[3],g_list6b[7]);
buffer buffer_6_8(g_list5[4],g_list6b[8]);
buffer buffer_6_9(g_list5[5],g_list6b[9]);
buffer buffer_6_10(g_list5[6],g_list6b[10]);

adder adder1(
{
g_list5[7],//0
g_list6[14],
g_list6b[9],//2
g_list6[13],
g_list6b[8],//4
g_list6[12],
g_list6b[7],//6
g_list6[11],
g_list6b[6],//8
g_list6[10],
g_list6b[5],//10
g_list6[9],
g_list6b[4],//12
g_list6[8],
g_list6b[4],//14
g_list6[7],
g_list6b[3],//16
g_list6[6],
g_list6b[2],//18
g_list6[5],
g_list6b[1],//20
g_list6[4],
g_list6b[0],//22
g_list6[3],
g_list4b[1],//24
g_list6[2],
g_list4b[0],//26
g_list6[1],
g_list3b[0],//28
g_list6[0],
g_list2b[0],//30
g_list1b[0]
},
p_list,
s_list,
c);

endmodule
