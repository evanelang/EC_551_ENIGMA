`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: BU
// Engineer: Mayra Teixeira
// 
// Create Date: 11/15/2023 01:44:38 AM
// Design Name: Enigma machine module
// Module Name: enigma_machine
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: the main: Enigma maachine. instatinated all
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Enigma_Machine(
    input wire clk,  // Clock signal
    input wire rst,  // Reset signal
    input wire [7:0] keyboard_in,
    input wire [7:0] value,
    input wire signal,
    input wire [7:0] swap_pairs[26],
    output reg [7:0] enigma_output,
    output reg error_flag  // Output flag to indicate an error
);
    wire [7:0] plugboard_out;
    wire [7:0] rotor_1_out, rotor_2_out, rotor_3_out, rotor_4_out;
    wire rotate_1, rotate_2, rotate_3;

    // Instantiate the plugboard
    plugboard plugboard1 (
        .keyboard_in(keyboard_in),
        .value(value),
        .signal(signal),
        .plugboard_out(plugboard_out),
        .swap_pairs(swap_pairs)
    );

    // Instantiate the first rotor
    rotor_1 rotor1 (
        .signal(signal),
        .rst(rst),
        .plug_board(plugboard_out),
        .rotor_1_output(rotor_1_out),
        .rotate(rotate_1)
    );

    // Instantiate the second rotor
    rotor_2 rotor2 (
        .signal(signal),
        .rst(rst),
        .rotor_in(rotor_1_out),
        .rotor_2_output(rotor_2_out),
        .rotate_from_rotor_1(rotate_1),
        .rotate(rotate_2)
    );

    // Instantiate the third rotor
    rotor_3 rotor3 (
        .signal(signal),
        .rst(rst),
        .rotor_in(rotor_2_out),
        .rotor_3_output(rotor_3_out),
        .rotate_from_rotor_2(rotate_2),
        .rotate(rotate_3)
    );

    // Instantiate the fourth rotor
    rotor_4 rotor4 (
        .signal(signal),
        .rst(rst),
        .rotor_in(rotor_3_out),
        .rotor_4_output(rotor_4_out),
        .rotate_from_rotor_3(rotate_3)
    );

    // Instantiate the reflector
    reflector reflector1 (
        .rotor_in(rotor_4_out),
        .reflector_output(enigma_output)
    );

    // Error checking: no letter can be enciphered as itself
    always @(posedge clk) begin
        if (keyboard_in == enigma_output) begin
            error_flag <= 1;  // set error flag high
        end else begin
            error_flag <= 0;  // otherwise, set error flag low
        end
    end

    // Error checking: invalid input
    always @(posedge clk) begin
        if (keyboard_in < 8'd65 || (keyboard_in > 8'd90 && keyboard_in < 8'd97) || keyboard_in > 8'd122) begin
            error_flag <= 1;  // set error flag high if input is not a valid ASCII letter
        end
    end
endmodule

