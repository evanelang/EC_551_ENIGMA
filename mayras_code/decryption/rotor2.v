`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/12/2 13:33:28
// Design Name: rotor2_for
// Module Name: rotor2_for
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////

module rotor2_forward(
    input [4:0] data_in,  
    input [4:0] position,         
    output reg [4:0] data_out,
    output reg done_out   
);

reg[4:0] mapping[0:25];

initial begin
    done_out = 0;
    mapping[0] = 5'd7;   // AH
    mapping[1] = 5'd0;   // BA
    mapping[2] = 5'd14;  // CO
    mapping[3] = 5'd2;   // DC
    mapping[4] = 5'd9;   // EJ
    mapping[5] = 5'd21;  // FV
    mapping[6] = 5'd5;   // GF
    mapping[7] = 5'd23;  // HX
    mapping[8] = 5'd1;   // IB
    mapping[9] = 5'd19;  // JT
    mapping[10] = 5'd11; // KL
    mapping[11] = 5'd4;  // LE
    mapping[12] = 5'd24; // MY
    mapping[13] = 5'd22; // NW
    mapping[14] = 5'd25; // OZ
    mapping[15] = 5'd13; // PN
    mapping[16] = 5'd8;  // QI
    mapping[17] = 5'd6;  // RG
    mapping[18] = 5'd18; // SS
    mapping[19] = 5'd3;  // TD
    mapping[20] = 5'd16; // UQ
    mapping[21] = 5'd15; // VP
    mapping[22] = 5'd20; // WU
    mapping[23] = 5'd12; // XM
    mapping[24] = 5'd10; // YK
    mapping[25] = 5'd17; // ZR
end


always @(data_in or position) 
begin  
    done_out = 0;
    data_out <= mapping[(data_in + position) % 26];
    done_out = 1;
end

endmodule
