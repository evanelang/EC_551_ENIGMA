`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 11:30:24 PM
// Design Name: 
// Module Name: rotor2
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
module rotor2(
    input [5:0] data_in,  
    input [5:0] position,         
    output reg [5:0] data_out
);

reg[5:0] mapping[51:0];

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
    
    mapping[26] = 6'd6;   // AG
    mapping[27] = 6'd11;  // BL
    mapping[28] = 6'd16;  // CQ
    mapping[29] = 6'd24;   // DY
    mapping[30] = 6'd22;  // EW
    mapping[31] = 6'd1;   // FB
    mapping[32] = 6'd19;   // GT
    mapping[33] = 6'd8;  // HI
    mapping[34] = 6'd25;  // IZ
    mapping[35] = 6'd3;  // JD
    mapping[36] = 6'd15; // KP
    mapping[37] = 6'd18; // LS
    mapping[38] = 6'd5; // MF
    mapping[39] = 6'd10; // NK
    mapping[40] = 6'd0; // OA
    mapping[41] = 6'd13;  // PN
    mapping[42] = 6'd9; // QJ
    mapping[43] = 6'd2; // RC
    mapping[44] = 6'd20; // SU
    mapping[45] = 6'd23; // TX
    mapping[46] = 6'd17;  // UR
    mapping[47] = 6'd4;  // VE
    mapping[48] = 6'd21;  // WV
    mapping[49] = 6'd12; // XM
    mapping[50] = 6'd24;  // YO
    mapping[51] = 6'd7;  // ZH
end


always @(data_in,position) 
begin  
    data_out= mapping[(data_in+position)];
    end

endmodule
