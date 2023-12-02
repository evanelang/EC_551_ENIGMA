`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mayra Teixeira
// 
// Create Date: 11/01/2023 06:36:37 PM
// Design Name: 
// Module Name: tb_rotor_2
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

// remember to remove sim once you download the simulation files

`timescale 1ns / 1ps

module tb_rotor_2;
    // Inputs
    reg rst, clk;
    reg [7:0] rotor_in;

    // Outputs
    wire [15:0] rotor_2_output;

    
    initial begin 
    forever begin
    clk = 0;
    #10 clk = ~clk;
    end end
    // Instantiate the Unit Under Test (UUT)
    rotor_2 uut (
        .signal(clk), 
        .rst(rst), 
        .rotor_in(rotor_in), 
        .rotor_2_output(rotor_2_output)
    );

    initial begin
        // Initialize Inputs
        rst = 0;
        rotor_in = 16'd65; // 'A'
        #100
        rotor_in = 16'd66;
        #100
        // Initialize the array
        rotor_in= 16'd67;
        #100
        rotor_in=16'd68;
        #100 
        rotor_in=16'd69;
        #100 
        rotor_in=16'd70;
        
        
    
        

    end
      