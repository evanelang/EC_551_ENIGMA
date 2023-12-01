`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 09:26:43 PM
// Design Name: 
// Module Name: reverse_rotor0
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
module reverse_rotor0(
    input [4:0] data_in,  
    input [4:0] position,         
    output reg [4:0] data_out
);

reg[4:0] mapping[25:0];
integer i;

initial begin
    mapping[0] = 5'd4;   // AE
    mapping[1] = 5'd10;  // BK
    mapping[2] = 5'd12;  // CM
    mapping[3] = 5'd5;   // DF
    mapping[4] = 5'd11;  // EL
    mapping[5] = 5'd6;   // FG
    mapping[6] = 5'd3;   // GD
    mapping[7] = 5'd16;  // HQ
    mapping[8] = 5'd21;  // IV
    mapping[9] = 5'd25;  // JZ
    mapping[10] = 5'd13; // KN
    mapping[11] = 5'd19; // LT
    mapping[12] = 5'd14; // MO
    mapping[13] = 5'd22; // NW
    mapping[14] = 5'd24; // OY
    mapping[15] = 5'd7;  // PH
    mapping[16] = 5'd23; // QX
    mapping[17] = 5'd20; // RU
    mapping[18] = 5'd18; // SS
    mapping[19] = 5'd15; // TP
    mapping[20] = 5'd0;  // UA
    mapping[21] = 5'd8;  // VI
    mapping[22] = 5'd1;  // WB
    mapping[23] = 5'd17; // XR
    mapping[24] = 5'd2;  // YC
    mapping[25] = 5'd9;  // ZJ
    i=0;
end


always @(data_in) 
begin  
    for(i=0;i<26;i=i+1)begin
    if(data_in==mapping[i])
    begin
    if(i-position<0)begin
    data_out = 5'd26+i-position;
    end
    else
    begin
    data_out = i-position;
    end
    end
    end
    i=0;
end
    
endmodule
