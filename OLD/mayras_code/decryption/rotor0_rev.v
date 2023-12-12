`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/12/1 19:59:47
// Design Name: rotor0_rev
// Module Name: rotor0_rev
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////


module rotor0_reverse(
    input [4:0] data_in,
    input [4:0] position,
    output reg [4:0] data_out,
    output reg done_out
);

reg [4:0] reverse_mapping[0:25];
reg [4:0] sum;

initial begin
    done_out = 0;
    reverse_mapping[4] = 5'd0;   // AE
    reverse_mapping[10] = 5'd1;  // BK
    reverse_mapping[12] = 5'd2;  // CM
    reverse_mapping[5] = 5'd3;   // DF
    reverse_mapping[11] = 5'd4;  // EL
    reverse_mapping[6] = 5'd5;   // FG
    reverse_mapping[3] = 5'd6;   // GD
    reverse_mapping[16] = 5'd7;  // HQ
    reverse_mapping[21] = 5'd8;  // IV
    reverse_mapping[25] = 5'd9;  // JZ
    reverse_mapping[13] = 5'd10; // KN
    reverse_mapping[19] = 5'd11; // LT
    reverse_mapping[14] = 5'd12; // MO
    reverse_mapping[22] = 5'd13; // NW
    reverse_mapping[24] = 5'd14; // OY
    reverse_mapping[7] = 5'd15;  // PH
    reverse_mapping[23] = 5'd16; // QX
    reverse_mapping[20] = 5'd17; // RU
    reverse_mapping[18] = 5'd18; // SS
    reverse_mapping[15] = 5'd19; // TP
    reverse_mapping[0] = 5'd20;  // UA
    reverse_mapping[8] = 5'd21;  // VI
    reverse_mapping[1] = 5'd22;  // WB
    reverse_mapping[17] = 5'd23; // XR
    reverse_mapping[2] = 5'd24;  // YC
    reverse_mapping[9] = 5'd25;  // ZJ
end



always @(data_in or position) 
begin
    done_out <= 0;
    sum = (data_in + position) % 26;
    data_out <= reverse_mapping[sum];
    done_out <= 1;
end

endmodule