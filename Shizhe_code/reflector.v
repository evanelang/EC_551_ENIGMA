`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/11/30 17:34:47
// Design Name: reflector
// Module Name: reflector
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////

module reflector(
    input [4:0] data_in, 
    output reg [4:0] data_out
);
    
    always @(data_in) begin
        case(data_in)
            5'd0: data_out = 5'd24;  // AY
            5'd1: data_out = 5'd17;  // BR
            5'd2: data_out = 5'd20;  // CU
            5'd3: data_out = 5'd23;  // DX
            5'd4: data_out = 5'd6;   // EG
            5'd5: data_out = 5'd4;   // FE
            5'd6: data_out = 5'd5;   // GF
            5'd7: data_out = 5'd21;  // HV
            5'd8: data_out = 5'd25;  // IZ
            5'd9: data_out = 5'd19;  // JT
            5'd10: data_out = 5'd16; // KQ
            5'd11: data_out = 5'd22; // LW
            5'd12: data_out = 5'd18; // MS
            5'd13: data_out = 5'd15; // NP
            5'd14: data_out = 5'd14; // OO 
            5'd15: data_out = 5'd13; // PN
            5'd16: data_out = 5'd10; // QK
            5'd17: data_out = 5'd1;  // RB
            5'd18: data_out = 5'd12; // SM
            5'd19: data_out = 5'd9;  // TJ
            5'd20: data_out = 5'd2;  // UC
            5'd21: data_out = 5'd7;  // VH
            5'd22: data_out = 5'd11; // WL
            5'd23: data_out = 5'd3;  // XD
            5'd24: data_out = 5'd0;  // YA
            5'd25: data_out = 5'd8;  // ZI
            default: data_out = data_in;  
        endcase
    end
endmodule
