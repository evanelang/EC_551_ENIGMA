`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/12/2 11:23:51
// Design Name: rotor1_for
// Module Name: rotor1_for
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////

module rotor1_forward(
    input [4:0] data_in,  
    input [4:0] position,         
    output reg [4:0] data_out,
    output reg done_out   
);

reg[4:0] mapping[0:25];

initial begin
    done_out = 0;
    mapping[0] = 5'd9;   // AJ
    mapping[1] = 5'd15;  // BP
    mapping[2] = 5'd7;   // CH
    mapping[3] = 5'd23;  // DX
    mapping[4] = 5'd19;  // ET
    mapping[5] = 5'd20;  // FU
    mapping[6] = 5'd18;  // GS
    mapping[7] = 5'd24;  // HY
    mapping[8] = 5'd3;   // ID
    mapping[9] = 5'd22;  // JW
    mapping[10] = 5'd1;  // KB
    mapping[11] = 5'd16; // LQ
    mapping[12] = 5'd25; // MZ
    mapping[13] = 5'd8;  // NI
    mapping[14] = 5'd4;  // OE
    mapping[15] = 5'd10; // PK
    mapping[16] = 5'd0;  // QA
    mapping[17] = 5'd14; // RO
    mapping[18] = 5'd12; // SM
    mapping[19] = 5'd6;  // TG
    mapping[20] = 5'd5;  // UF
    mapping[21] = 5'd2;  // VC
    mapping[22] = 5'd17; // WR
    mapping[23] = 5'd13; // XN
    mapping[24] = 5'd11; // YL
    mapping[25] = 5'd21; // ZV
end


always @(data_in or position) 
begin  
    done_out = 0;
    data_out <= mapping[(data_in + position) % 26];
    done_out = 1;
end

endmodule
