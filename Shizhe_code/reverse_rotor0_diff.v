`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 11:34:57 AM
// Design Name: 
// Module Name: reverse_rotor0_diff
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


module reverse_rotor0_diff(
input [5:0] data_in,  
    input [5:0] position,         
    output reg [5:0] data_out
);
reg [5:0] mapping[25:0];
reg [5:0] map;
integer i;
initial begin
    mapping[0] = 6'd4;   // AE
    mapping[1] = 6'd10;  // BK
    mapping[2] = 6'd12;  // CM
    mapping[3] = 6'd5;   // DF
    mapping[4] = 6'd11;  // EL
    mapping[5] = 6'd6;   // FG
    mapping[6] = 6'd3;   // GD
    mapping[7] = 6'd16;  // HQ 
    mapping[8] = 6'd21;  // IV
    mapping[9] = 6'd25;  // JZ
    mapping[10] = 6'd13; // KN
    mapping[11] = 6'd19; // LT
    mapping[12] = 6'd14; // MO
    mapping[13] = 6'd22; // NW
    mapping[14] = 6'd24; // OY
    mapping[15] = 6'd7;  // PH
    mapping[16] = 6'd23; // QX
    mapping[17] = 6'd20; // RU
    mapping[18] = 6'd18; // SS
    mapping[19] = 6'd15; // TP
    mapping[20] = 6'd0;  // UA
    mapping[21] = 6'd8;  // VI
    mapping[22] = 6'd1;  // WB
    mapping[23] = 6'd17; // XR
    mapping[24] = 6'd2;  // YC
    mapping[25] = 6'd9;  // ZJ
   
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
