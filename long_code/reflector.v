`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/11/30 17:34:47
// Design Name: reflector
// Module Name: reflector
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////

module reflector(
    input [4:0] in, 
    output reg [4:0] out
);

    always @(in) begin
        case(in)
            5'd0: out = 5'd24;  // AY
            5'd1: out = 5'd17;  // BR
            5'd2: out = 5'd20;  // CU
            5'd3: out = 5'd23;  // DX
            5'd4: out = 5'd6;   // EG
            5'd5: out = 5'd4;   // FE
            5'd6: out = 5'd5;   // GF
            5'd7: out = 5'd21;  // HV
            5'd8: out = 5'd25;  // IZ
            5'd9: out = 5'd19;  // JT
            5'd10: out = 5'd16; // KQ
            5'd11: out = 5'd22; // LW
            5'd12: out = 5'd18; // MS
            5'd13: out = 5'd15; // NP
            5'd14: out = 5'd14; // OO 
            5'd15: out = 5'd13; // PN
            5'd16: out = 5'd10; // QK
            5'd17: out = 5'd1;  // RB
            5'd18: out = 5'd12; // SM
            5'd19: out = 5'd9;  // TJ
            5'd20: out = 5'd2;  // UC
            5'd21: out = 5'd7;  // VH
            5'd22: out = 5'd11; // WL
            5'd23: out = 5'd3;  // XD
            5'd24: out = 5'd0;  // YA
            5'd25: out = 5'd8;  // ZI
            default: out = in;  
        endcase
    end
endmodule
