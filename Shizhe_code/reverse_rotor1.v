`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 11:25:20 PM
// Design Name: 
// Module Name: reverse_rotor1
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
module reverse_rotor1(
input [4:0] data_in,  
input [4:0] position,         
output reg [4:0] data_out
);

reg[4:0] mapping[25:0];
integer i;

initial begin
    mapping[0] = 5'd22;   // AW
    mapping[1] = 5'd19;  // BT
    mapping[2] = 5'd14;  // CO
    mapping[3] = 5'd10;   // DK
    mapping[4] = 5'd0;  // EA
    mapping[5] = 5'd18;   // FS
    mapping[6] = 5'd20;   // GU
    mapping[7] = 5'd24;  // HY
    mapping[8] = 5'd17;  // IR
    mapping[9] = 5'd21;  // JV
    mapping[10] = 5'd1; // KB
    mapping[11] = 5'd23; // LX
    mapping[12] = 5'd9; // MJ
    mapping[13] = 5'd7; // NH
    mapping[14] = 5'd16; // OQ
    mapping[15] = 5'd2;  // PC
    mapping[16] = 5'd15; // QP
    mapping[17] = 5'd25; // RZ
    mapping[18] = 5'd4; // SE
    mapping[19] = 5'd5; // TF
    mapping[20] = 5'd12;  // UM
    mapping[21] = 5'd3;  // VD
    mapping[22] = 5'd8;  // WI
    mapping[23] = 5'd13; // XN
    mapping[24] = 5'd11;  // YL
    mapping[25] = 5'd6;  // ZG
    i=0;
end


always @(data_in) 
begin  
    
    for(i=0;i<26;i=i+1)begin
    if(data_in==mapping[i])begin
    data_out = i-position;
    end
    end
    i=0;
end
    
endmodule
