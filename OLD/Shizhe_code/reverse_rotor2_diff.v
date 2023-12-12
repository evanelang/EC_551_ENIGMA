`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 05:50:24 PM
// Design Name: 
// Module Name: reverse_rotor2_diff
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


module reverse_rotor2_diff(
input [5:0] data_in,  
input [5:0] position,         
output reg [5:0] data_out
    );
    
reg [5:0] mapping[25:0];
reg [5:0] map;
integer i;
initial begin
    mapping[0] = 6'd6;   // AG
    mapping[1] = 6'd11;  // BL
    mapping[2] = 6'd16;  // CQ
    mapping[3] = 6'd24;   // DY
    mapping[4] = 6'd22;  // EW
    mapping[5] = 6'd1;   // FB
    mapping[6] = 6'd19;   // GT
    mapping[7] = 6'd8;  // HI
    mapping[8] = 6'd25;  // IZ
    mapping[9] = 6'd3;  // JD
    mapping[10] = 6'd15; // KP
    mapping[11] = 6'd18; // LS
    mapping[12] = 6'd5; // MF
    mapping[13] = 6'd10; // NK
    mapping[14] = 6'd0; // OA
    mapping[15] = 6'd13;  // PN
    mapping[16] = 6'd9; // QJ
    mapping[17] = 6'd2; // RC
    mapping[18] = 6'd20; // SU
    mapping[19] = 6'd23; // TX
    mapping[20] = 6'd17;  // UR
    mapping[21] = 6'd4;  // VE
    mapping[22] = 6'd21;  // WV
    mapping[23] = 6'd12; // XM
    mapping[24] = 6'd24;  // YO
    mapping[25] = 6'd7;  // ZH
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
