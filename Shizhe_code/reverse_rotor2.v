`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 01:32:16 AM
// Design Name: 
// Module Name: reverse_rotor2
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


module reverse_rotor2(
input [4:0] data_in,  
input [4:0] position,         
output reg [4:0] data_out
    );
    
    reg[4:0] mapping[25:0];
    integer i;
initial begin
    mapping[0] = 5'd6;   // AG
    mapping[1] = 5'd11;  // BL
    mapping[2] = 5'd16;  // CQ
    mapping[3] = 5'd24;   // DY
    mapping[4] = 5'd22;  // EW
    mapping[5] = 5'd1;   // FB
    mapping[6] = 5'd19;   // GT
    mapping[7] = 5'd8;  // HI
    mapping[8] = 5'd25;  // IZ
    mapping[9] = 5'd3;  // JD
    mapping[10] = 5'd15; // KP
    mapping[11] = 5'd18; // LS
    mapping[12] = 5'd5; // MF
    mapping[13] = 5'd10; // NK
    mapping[14] = 5'd0; // OA
    mapping[15] = 5'd13;  // PN
    mapping[16] = 5'd9; // QJ
    mapping[17] = 5'd2; // RC
    mapping[18] = 5'd20; // SU
    mapping[19] = 5'd23; // TX
    mapping[20] = 5'd17;  // UR
    mapping[21] = 5'd4;  // VE
    mapping[22] = 5'd21;  // WV
    mapping[23] = 5'd12; // XM
    mapping[24] = 5'd24;  // YO
    mapping[25] = 5'd7;  // ZH
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
