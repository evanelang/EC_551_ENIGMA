`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/11/30 17:34:47
// Design Name: reflector
// Module Name: reflector
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////

module rotor0(
    input [5:0] data_in,  
    input [5:0] position,         
    output reg [5:0]data_out
);

reg[5:0] mapping[51:0];


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
    
    mapping[26] = 6'd4;   // AE
    mapping[27] = 6'd10;  // BK
    mapping[28] = 6'd12;  // CM
    mapping[29] = 6'd5;   // DF
    mapping[30] = 6'd11;  // EL
    mapping[31] = 6'd6;   // FG
    mapping[32] = 6'd3;   // GD
    mapping[33] = 6'd16;  // HQ
    mapping[34] = 6'd21;  // IV
    mapping[35] = 6'd25;  // JZ
    mapping[36] = 6'd13; // KN
    mapping[37] = 6'd19; // LT
    mapping[38] = 6'd14; // MO
    mapping[39] = 6'd22; // NW
    mapping[40] = 6'd24; // OY
    mapping[41] = 6'd7;  // PH
    mapping[42] = 6'd23; // QX
    mapping[43] = 6'd20; // RU
    mapping[44] = 6'd18; // SS
    mapping[45] = 6'd15; // TP
    mapping[46] = 6'd0;  // UA
    mapping[47] = 6'd8;  // VI
    mapping[48] = 6'd1;  // WB
    mapping[49] = 6'd17; // XR
    mapping[50] = 6'd2;  // YC
    mapping[51] = 6'd9;  // ZJ
end


always @(data_in,position) 
begin  
    data_out= mapping[(data_in+position)];
    end
endmodule
