`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 05:46:54 PM
// Design Name: 
// Module Name: reverse_rotor1_diff
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


module reverse_rotor1_diff(
input [5:0] data_in,  
input [5:0] position,         
output reg [5:0] data_out
    );
reg [5:0] mapping[25:0];
reg [5:0] map;
integer i;

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
end

always @(data_in) 
begin  
    for(i=0;i<6'd26;i=i+6'd1)
    begin
    if(data_in==mapping[i])
    map=i;
    end
    if(map<position)begin
    data_out=6'd26-(position-map);
    end
    else
    begin
    data_out=map-position;
    end
end
endmodule
