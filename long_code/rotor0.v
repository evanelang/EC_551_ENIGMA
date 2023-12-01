`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/11/30 17:34:47
// Design Name: reflector
// Module Name: reflector
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////

module rotor0(
    input [4:0] data_in,  
    input [4:0] set_up,//setup position
    input rotate_carryin,//carryin, if it's first rotor, should deactivated        
    output reg[4:0] data_out,
    output reg rotate_carry   
);

reg[4:0] mapping[0:25];

initial begin
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

reg[4:0] position = 0;


always @(data_in or rotate_carryin) begin//for 1st rotor it's just the data_in
    if (rotate_carryin) begin
        position = position + 1;
        if (position > 25) begin
            rotate_carry = 1;
            position = 0; 
        end
        else begin
            rotate_carry = 0;
        end
    end
    data_out = mapping[(data_in + position) % 26];
end

endmodule