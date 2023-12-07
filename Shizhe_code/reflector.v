`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/11/30 17:34:47
// Design Name: reflector
// Module Name: reflector
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////

module reflector(
    input [5:0] data_in, 
    output reg [5:0] data_out
);
    
    always @(data_in) begin
        case(data_in)
            6'd0: data_out = 6'd24;  // AY
            6'd1: data_out = 6'd17;  // BR
            6'd2: data_out = 6'd20;  // CU
            6'd3: data_out = 6'd23;  // DX
            6'd4: data_out = 6'd6;   // EG
            6'd5: data_out = 6'd4;   // FE
            6'd6: data_out = 6'd5;   // GF
            6'd7: data_out = 6'd21;  // HV
            6'd8: data_out = 6'd25;  // IZ
            6'd9: data_out = 6'd19;  // JT
            6'd10: data_out = 6'd16; // KQ
            6'd11: data_out = 6'd22; // LW
            6'd12: data_out = 6'd18; // MS
            6'd13: data_out = 6'd15; // NP
            6'd14: data_out = 6'd14; // OO 
            6'd15: data_out = 6'd13; // PN
            6'd16: data_out = 6'd10; // QK
            6'd17: data_out = 6'd1;  // RB
            6'd18: data_out = 6'd12; // SM
            6'd19: data_out = 6'd9;  // TJ
            6'd20: data_out = 6'd2;  // UC
            6'd21: data_out = 6'd7;  // VH
            6'd22: data_out = 6'd11; // WL
            6'd23: data_out = 6'd3;  // XD
            6'd24: data_out = 6'd0;  // YA
            6'd25: data_out = 6'd8;  // ZI
            default: data_out = data_in;  
        endcase
    end
endmodule
