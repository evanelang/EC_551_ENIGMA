`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 11:08:04 PM
// Design Name: 
// Module Name: rotor1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module rotor1(
    input [5:0] data_in,  
    input [5:0] position,         
    output reg [5:0] data_out
   
);

reg[5:0] mapping[51:0];

initial begin
    mapping[0] = 6'd22;   // AW
    mapping[1] = 6'd19;  // BT
    mapping[2] = 6'd14;  // CO
    mapping[3] = 6'd10;   // DK
    mapping[4] = 6'd0;  // EA
    mapping[5] = 6'd18;   // FS
    mapping[6] = 6'd20;   // GU
    mapping[7] = 6'd24;  // HY
    mapping[8] = 6'd17;  // IR
    mapping[9] = 6'd21;  // JV
    mapping[10] = 6'd1; // KB
    mapping[11] = 6'd23; // LX
    mapping[12] = 6'd9; // MJ
    mapping[13] = 6'd7; // NH
    mapping[14] = 6'd16; // OQ
    mapping[15] = 6'd2;  // PC
    mapping[16] = 6'd15; // QP
    mapping[17] = 6'd25; // RZ
    mapping[18] = 6'd4; // SE
    mapping[19] = 6'd5; // TF
    mapping[20] = 6'd12;  // UM
    mapping[21] = 6'd3;  // VD
    mapping[22] = 6'd8;  // WI
    mapping[23] = 6'd13; // XN
    mapping[24] = 6'd11;  // YL
    mapping[25] = 6'd6;  // ZG
    
    mapping[26] = 6'd22;   // AW
    mapping[27] = 6'd19;  // BT
    mapping[28] = 6'd14;  // CO
    mapping[29] = 6'd10;   // DK
    mapping[30] = 6'd0;  // EA
    mapping[31] = 6'd18;   // FS
    mapping[32] = 6'd20;   // GU
    mapping[33] = 6'd24;  // HY
    mapping[34] = 6'd17;  // IR
    mapping[35] = 6'd21;  // JV
    mapping[36] = 6'd1; // KB
    mapping[37] = 6'd23; // LX
    mapping[38] = 6'd9; // MJ
    mapping[39] = 6'd7; // NH
    mapping[40] = 6'd16; // OQ
    mapping[41] = 6'd2;  // PC
    mapping[42] = 6'd15; // QP
    mapping[43] = 6'd25; // RZ
    mapping[44] = 6'd4; // SE
    mapping[45] = 6'd5; // TF
    mapping[46] = 6'd12;  // UM
    mapping[47] = 6'd3;  // VD
    mapping[48] = 6'd8;  // WI
    mapping[49] = 6'd13; // XN
    mapping[50] = 6'd11;  // YL
    mapping[51] = 6'd6;  // ZG
end


always @(data_in,position) 
begin  
    data_out= mapping[(data_in+position)];
    end


endmodule

