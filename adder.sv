module adder(
input wire [31:0] g_,
input wire [31:0] p_list,
output wire [31:0] s_list,
output wire c);


assign c = g_[31];
assign s_list[0] = p_list[0];
assign s_list[1] = p_list[1] ^ g_[0];
assign s_list[2] = p_list[2] ^ g_[1];
assign s_list[3] = p_list[3] ^ g_[2];
assign s_list[4] = p_list[4] ^ g_[3];
assign s_list[5] = p_list[5] ^ g_[4];
assign s_list[6] = p_list[6] ^ g_[5];
assign s_list[7] = p_list[7] ^ g_[6];
assign s_list[8] = p_list[8] ^ g_[7];
assign s_list[9] = p_list[9] ^ g_[8];
assign s_list[10] = p_list[10] ^ g_[9];
assign s_list[11] = p_list[11] ^ g_[10];
assign s_list[12] = p_list[12] ^ g_[11];
assign s_list[13] = p_list[13] ^ g_[12];
assign s_list[14] = p_list[14] ^ g_[13];
assign s_list[15] = p_list[15] ^ g_[14];
assign s_list[16] = p_list[16] ^ g_[15];
assign s_list[17] = p_list[17] ^ g_[16];
assign s_list[18] = p_list[18] ^ g_[17];
assign s_list[19] = p_list[19] ^ g_[18];
assign s_list[20] = p_list[20] ^ g_[19];
assign s_list[21] = p_list[21] ^ g_[20];
assign s_list[22] = p_list[22] ^ g_[21];
assign s_list[23] = p_list[23] ^ g_[22];
assign s_list[24] = p_list[24] ^ g_[23];
assign s_list[25] = p_list[25] ^ g_[24];
assign s_list[26] = p_list[26] ^ g_[25];
assign s_list[27] = p_list[27] ^ g_[26];
assign s_list[28] = p_list[28] ^ g_[27];
assign s_list[29] = p_list[29] ^ g_[28];
assign s_list[30] = p_list[30] ^ g_[29];
assign s_list[31] = p_list[31] ^ g_[30];

endmodule
