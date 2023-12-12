`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: BU 
// Engineer: Mayra Teixeira
// 
// Create Date: 11/01/2023 05:47:12 PM
// Design Name: Plugboard testbenches
// Module Name: tb_plugboard
// Project Name: Enigma 551
// Target Devices: FPGA
// Tool Versions: 
// Description: design the first version of the testbenches for the enigma plugboard
// 
// Dependencies: 
// 
// Revision:0
// Revision 0.01 - File Created
// Additional Comments: To be modified as the project improves
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module tb_plugboard;

  // Parameters
  reg signal;
  reg [15:0] keyboard_in;
  reg [15:0] value;
  wire [15:0] plugboard_out;

  // Instantiate the Unit Under Test (UUT)
  plugboard uut (
    .signal(signal),
    .keyboard_in(keyboard_in),
    .value(value),
    .plugboard_out(plugboard_out)
  );

  initial begin
    // Initialize Inputs
    signal = 0;
    keyboard_in = 16'h0000;
    value = 16'h0000;

    // Wait for 100 ns
    #100;

    // Change Inputs
    signal = 1;
    keyboard_in = 16'h1324;
    value = 16'h5578;

    // Wait for 100 ns
    #100;
    
    // Change Inputs
    signal = 0;
    keyboard_in = 16'h12abc;
    
    // Wait for 100 ns
    #100;
    
    // Finish the simulation
    $finish;
    end
    initial begin
        $monitor("At time %t, input=%h, output=%h", $time, keyboard_in, plugboard_out);
    end
  

endmodule