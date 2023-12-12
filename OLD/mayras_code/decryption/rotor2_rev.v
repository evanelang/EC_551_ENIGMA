`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/12/2 13:36:11
// Design Name: rotor2_rev
// Module Name: rotor2_rev
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////


module rotor2_reverse(
    input [4:0] data_in,
    input [4:0] position,
    output reg [4:0] data_out,
    output reg done_out
);

reg [4:0] reverse_mapping[0:25];
reg [4:0] sum;

initial begin
    done_out = 0;
    reverse_mapping[7] = 5'd0;   // HA
    reverse_mapping[0] = 5'd1;   // AB
    reverse_mapping[14] = 5'd2;  // OC
    reverse_mapping[2] = 5'd3;   // CD
    reverse_mapping[9] = 5'd4;   // JE
    reverse_mapping[21] = 5'd5;  // VF
    reverse_mapping[5] = 5'd6;   // FG
    reverse_mapping[23] = 5'd7;  // XH
    reverse_mapping[1] = 5'd8;   // BI
    reverse_mapping[19] = 5'd9;  // TJ
    reverse_mapping[11] = 5'd10; // LK
    reverse_mapping[4] = 5'd11;  // EL
    reverse_mapping[24] = 5'd12; // YM
    reverse_mapping[22] = 5'd13; // WN
    reverse_mapping[25] = 5'd14; // ZO
    reverse_mapping[13] = 5'd15; // NP
    reverse_mapping[8] = 5'd16;  // IQ
    reverse_mapping[6] = 5'd17;  // GR
    reverse_mapping[18] = 5'd18; // SS
    reverse_mapping[3] = 5'd19;  // DT
    reverse_mapping[16] = 5'd20; // QU
    reverse_mapping[15] = 5'd21; // PV
    reverse_mapping[20] = 5'd22; // UW
    reverse_mapping[12] = 5'd23; // MX
    reverse_mapping[10] = 5'd24; // KY
    reverse_mapping[17] = 5'd25; // RZ
end



always @(data_in or position) 
begin
    done_out <= 0;
    sum = (data_in + position) % 26;
    data_out <= reverse_mapping[sum];
    done_out <= 1;
end

endmodule