`timescale 1ns / 1ps

module level2(
  input  wire [15:0]p_list1,
  input  wire [15:0]g_list1,
  output wire [7:0]p_list2,
  output wire [7:0]g_list2,
  output wire [7:1]p_list2b,
  output wire [7:0]g_list2b
);


black black_7(p_list1[15],g_list1[15],p_list1[14],g_list1[14],p_list2[7],g_list2[7]);
black black_6(p_list1[13],g_list1[13],p_list1[12],g_list1[12],p_list2[6],g_list2[6]);
black black_5(p_list1[11],g_list1[11],p_list1[10],g_list1[10],p_list2[5],g_list2[5]);
black black_4(p_list1[9],g_list1[9],p_list1[8],g_list1[8],p_list2[4],g_list2[4]);
black black_3(p_list1[7],g_list1[7],p_list1[6],g_list1[6],p_list2[3],g_list2[3]);
black black_2(p_list1[5],g_list1[5],p_list1[4],g_list1[4],p_list2[2],g_list2[2]);
black black_1(p_list1[3],g_list1[3],p_list1[2],g_list1[2],p_list2[1],g_list2[1]);
grey grey_0(p_list1[1],g_list1[1],g_list1[0],g_list2[0]);

buffer buffer_0(g_list1[0],g_list2b[0]);
buffer_pg buffer_pg_1(p_list1[2],g_list1[2],p_list2b[1],g_list2b[1]);
buffer_pg buffer_pg_2(p_list1[4],g_list1[4],p_list2b[2],g_list2b[2]);
buffer_pg buffer_pg_3(p_list1[6],g_list1[6],p_list2b[3],g_list2b[3]);
buffer_pg buffer_pg_4(p_list1[8],g_list1[8],p_list2b[4],g_list2b[4]);
buffer_pg buffer_pg_5(p_list1[10],g_list1[10],p_list2b[5],g_list2b[5]);
buffer_pg buffer_pg_6(p_list1[12],g_list1[12],p_list2b[6],g_list2b[6]);
buffer_pg buffer_pg_7(p_list1[14],g_list1[14],p_list2b[7],g_list2b[7]);

endmodule
