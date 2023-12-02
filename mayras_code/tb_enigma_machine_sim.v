`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 06:06:24 PM
// Design Name: 
// Module Name: tb_enigma_machine
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


module tb_Enigma_Machine;
    reg clk;  // Clock signal
    reg rst;  // Reset signal
    reg [7:0] keyboard_in;
    reg [7:0] value;
    reg signal;
    reg [7:0] swap_pairs[26];
    wire [7:0] enigma_output;
    wire error_flag;  // Error flag

    // Instantiate the Enigma machine
    Enigma_Machine enigma (
        .clk(clk),
        .rst(rst),
        .keyboard_in(keyboard_in),
        .value(value),
        .signal(signal),
        .swap_pairs(swap_pairs),
        .enigma_output(enigma_output),
        .error_flag(error_flag)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;  // Clock period is 10 time units
    end

    // Testbench
    initial begin
        clk = 0;  // Initialize clock to low
        rst = 1;  // Assert reset
        #10 rst = 0;  // Deassert reset

        // Test case: valid input
        keyboard_in = 8'd65;  // 'A'
        value = 8'd0;
        signal = 1'b0;
        #10;

        // Test case: invalid input
        keyboard_in = 8'd64;  // '@'
        value = 8'd0;
        signal = 1'b0;
        #10;

        // Test case: letter enciphered as itself
        keyboard_in = 8'd65;  // 'A'
        value = 8'd65;  // 'A'
        signal = 1'b0;
        #10;

        // Check error flag
        if (error_flag) begin
            $display("Error occurred at time %t", $time);
        end else begin
            $display("No error at time %t", $time);
        end

        $finish;  // End the simulation
    end
endmodule