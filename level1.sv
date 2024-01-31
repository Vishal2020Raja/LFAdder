`timescale 1ns / 1ps

module level1(
  input  wire [31:0]p_list,
  input  wire [31:0]g_list,
  output wire [15:0]p_list1,
  output wire [15:0]g_list1,
  output wire [15:1]p_list1b,
  output wire [15:0]g_list1b
);


grey grey_1(p_list[1],g_list[1],g_list[0],g_list1[0]);
black black_3(p_list[3],g_list[3],p_list[2],g_list[2],p_list1[1],g_list1[1]);
black black_5(p_list[5],g_list[5],p_list[4],g_list[4],p_list1[2],g_list1[2]);
black black_7(p_list[7],g_list[7],p_list[6],g_list[6],p_list1[3],g_list1[3]);
black black_9(p_list[9],g_list[9],p_list[8],g_list[8],p_list1[4],g_list1[4]);
black black_11(p_list[11],g_list[11],p_list[10],g_list[10],p_list1[5],g_list1[5]);
black black_13(p_list[13],g_list[13],p_list[12],g_list[12],p_list1[6],g_list1[6]);
black black_15(p_list[15],g_list[15],p_list[14],g_list[14],p_list1[7],g_list1[7]);
black black_17(p_list[17],g_list[17],p_list[16],g_list[16],p_list1[8],g_list1[8]);
black black_19(p_list[19],g_list[19],p_list[18],g_list[18],p_list1[9],g_list1[9]);
black black_21(p_list[21],g_list[21],p_list[20],g_list[20],p_list1[10],g_list1[10]);
black black_23(p_list[23],g_list[23],p_list[22],g_list[22],p_list1[11],g_list1[11]);
black black_25(p_list[25],g_list[25],p_list[24],g_list[24],p_list1[12],g_list1[12]);
black black_27(p_list[27],g_list[27],p_list[26],g_list[26],p_list1[13],g_list1[13]);
black black_29(p_list[29],g_list[29],p_list[28],g_list[28],p_list1[14],g_list1[14]);
black black_31(p_list[31],g_list[31],p_list[30],g_list[30],p_list1[15],g_list1[15]);

buffer buffer_0(g_list[0],g_list1b[0]);
buffer_pg buffer_pg_2(p_list[2],g_list[2],p_list1b[1],g_list1b[1]);
buffer_pg buffer_pg_4(p_list[4],g_list[4],p_list1b[2],g_list1b[2]);
buffer_pg buffer_pg_6(p_list[6],g_list[6],p_list1b[3],g_list1b[3]);
buffer_pg buffer_pg_8(p_list[8],g_list[8],p_list1b[4],g_list1b[4]);
buffer_pg buffer_pg_10(p_list[10],g_list[10],p_list1b[5],g_list1b[5]);
buffer_pg buffer_pg_12(p_list[12],g_list[12],p_list1b[6],g_list1b[6]);
buffer_pg buffer_pg_14(p_list[14],g_list[14],p_list1b[7],g_list1b[7]);
buffer_pg buffer_pg_16(p_list[16],g_list[16],p_list1b[8],g_list1b[8]);
buffer_pg buffer_pg_18(p_list[18],g_list[18],p_list1b[9],g_list1b[9]);
buffer_pg buffer_pg_20(p_list[20],g_list[20],p_list1b[10],g_list1b[10]);
buffer_pg buffer_pg_22(p_list[22],g_list[22],p_list1b[11],g_list1b[11]);
buffer_pg buffer_pg_24(p_list[24],g_list[24],p_list1b[12],g_list1b[12]);
buffer_pg buffer_pg_26(p_list[26],g_list[26],p_list1b[13],g_list1b[13]);
buffer_pg buffer_pg_28(p_list[28],g_list[28],p_list1b[14],g_list1b[14]);
buffer_pg buffer_pg_30(p_list[30],g_list[30],p_list1b[15],g_list1b[15]);


endmodule
