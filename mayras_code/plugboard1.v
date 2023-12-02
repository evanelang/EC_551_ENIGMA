`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: plugboard
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module plugboard(
signal,
keyboard_in,
value,
plugboard_out
    );
input [15:0] keyboard_in;
input [15:0] value;
input signal;
input [15:0] swap_pairs[26];  // User-defined configuration for swapping pairs of letters
output reg [15:0] plugboard_out;


    always @(*) begin
        if (signal) begin
            plugboard_out = value;
        end else begin
            // Use the swap_pairs array to swap pairs of letters
            for (int i = 0; i < 26; i = i + 2) begin
                if (keyboard_in == swap_pairs[i]) begin
                    plugboard_out = swap_pairs[i+1];
                end else if (keyboard_in == swap_pairs[i+1]) begin
                    plugboard_out = swap_pairs[i];
                end else begin
                    plugboard_out = keyboard_in;
                end
            end
        end
    end
endmodule


///
//always@(*)begin
//if(signal)begin
//plugboard_out = value;
//end
//else
//plugboard_out = keyboard_in;
//end



//endmodule