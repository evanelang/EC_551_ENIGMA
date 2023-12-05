`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 06:15:00 PM
// Design Name: 
// Module Name: rotor_FTOB_diff_test
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


module rotor_FTOB_diff_test(
input [5:0]data_in,
input [5:0]r0_position,
input [5:0]r1_position,
input [5:0]r2_position,
output [5:0]data_out
    );

    wire [5:0]r0_out;
    wire [5:0]r1_out;
    rotor0 r0(.data_in(data_in),.data_out(r0_out),.position(r0_position));
    rotor1 r1(.data_in(r0_out),.data_out(r1_out),.position(r1_position));
    rotor2 r2(.data_in(r1_out),.data_out(data_out),.position(r2_position));
    
endmodule
