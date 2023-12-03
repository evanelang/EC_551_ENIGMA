`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/11/30 17:34:47
// Design Name: rotor0_for
// Module Name: rotor0_for
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////

module rotor0_forward(
    input [4:0] data_in,  
    input [4:0] position,         
    output reg [4:0] data_out,
    output reg done_out   
);

reg[4:0] mapping[0:25];

initial begin
    done_out = 0;
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
end


always @(data_in or position) 
begin  
    done_out = 0;
    data_out <= mapping[(data_in + position) % 26];
    done_out = 1;
end

endmodule