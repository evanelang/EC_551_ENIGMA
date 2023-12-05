`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 05:52:14 PM
// Design Name: 
// Module Name: rotor_BTOF_diff_test
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


module rotor_BTOF_diff_test(
input [5:0]data_in,
output [5:0]data_out,
input [5:0]r0_position,
input [5:0]r1_position,
input [5:0]r2_position
    );
    
    wire [5:0]r2_out;
    wire [5:0]r1_out;
    reverse_rotor0_diff rrdif0(.data_in(r1_out),.position(r0_position),.data_out(data_out));
    reverse_rotor1_diff rrdif1(.data_in(r2_out),.position(r1_position),.data_out(r1_out));
    reverse_rotor2_diff rrdif2(.data_in(data_in),.position(r2_position),.data_out(r2_out));
    
endmodule
