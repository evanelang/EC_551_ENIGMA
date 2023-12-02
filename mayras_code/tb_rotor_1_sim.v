`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Boston University
// Engineer: Mayra
// 
// Create Date: 11/01/2023 06:23:01 PM
// Design Name: rotor
// Module Name: tb_rotor_1
// Project Name: Enigma
// Target Devices: 
// Tool Versions: 
// Description: design a testbench for the enigma rotor1.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module tb_rotor_1;
    reg clk;  // Clock signal
    reg rst;  // Reset signal
    reg [15:0] plug_board;
    reg signal;
    wire [15:0] rotor_1_output;
    wire rotate;  // Rotate signal

    // Instantiate the rotor_1 module
    rotor_1 rotor1 (
        .signal(signal),
        .rst(rst),
        .plug_board(plug_board),
        .rotor_1_output(rotor_1_output),
        .rotate(rotate)
    );

    // Clock generation
    initial forever begin
        #5 clk = ~clk;  // Clock period is 10 time units
    end

    // Testbench
    initial begin
        clk = 0;  // Initialize clock to low
        rst = 1;  // Assert reset
        #10 rst = 0;  // Deassert reset

        // Test case: valid input
        plug_board = 16'd65;  // 'A'
        signal = 1'b0;
        #10;

        // Test case: invalid input
        plug_board = 16'd64;  // '@'
        signal = 1'b0;
        #10;

        // Test case: letter enciphered as itself
        plug_board = 16'd65;  // 'A'
        signal = 1'b1;  // Set signal high to simulate enciphering
        #10;

        // Check rotate signal
        if (rotate) begin
            $display("Full rotation occurred at time %t", $time);
        end else begin
            $display("No full rotation at time %t", $time);
        end

        $finish;  // End the simulation
    end
endmodule



