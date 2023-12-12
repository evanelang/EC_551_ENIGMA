`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/12/2 11:56:22
// Design Name: rotor1_rev
// Module Name: rotor1_rev
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////


module rotor1_reverse(
    input [4:0] data_in,
    input [4:0] position,
    output reg [4:0] data_out,
    output reg done_out
);

reg [4:0] reverse_mapping[0:25];
reg [4:0] sum;

initial begin
    done_out = 0;
    reverse_mapping[9] = 5'd0;   // JA
    reverse_mapping[15] = 5'd1;  // PB
    reverse_mapping[7] = 5'd2;   // HC
    reverse_mapping[23] = 5'd3;  // XD
    reverse_mapping[19] = 5'd4;  // TE
    reverse_mapping[20] = 5'd5;  // UF
    reverse_mapping[18] = 5'd6;  // SG
    reverse_mapping[24] = 5'd7;  // YH
    reverse_mapping[3] = 5'd8;   // DI
    reverse_mapping[22] = 5'd9;  // WJ
    reverse_mapping[1] = 5'd10;  // BK
    reverse_mapping[16] = 5'd11; // QL
    reverse_mapping[25] = 5'd12; // ZM
    reverse_mapping[8] = 5'd13;  // IN
    reverse_mapping[4] = 5'd14;  // EO
    reverse_mapping[10] = 5'd15; // KP
    reverse_mapping[0] = 5'd16;  // AQ
    reverse_mapping[14] = 5'd17; // OR
    reverse_mapping[12] = 5'd18; // MS
    reverse_mapping[6] = 5'd19;  // GT
    reverse_mapping[5] = 5'd20;  // FU
    reverse_mapping[2] = 5'd21;  // CV
    reverse_mapping[17] = 5'd22; // RW
    reverse_mapping[13] = 5'd23; // NX
    reverse_mapping[11] = 5'd24; // LY
    reverse_mapping[21] = 5'd25; // VZ
end



always @(data_in or position) 
begin
    done_out <= 0;
    sum = (data_in + position) % 26;
    data_out <= reverse_mapping[sum];
    done_out <= 1;
end

endmodule