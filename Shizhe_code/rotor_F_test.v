`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2023 03:26:44 PM
// Design Name: 
// Module Name: rotor_F_test
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


module rotor_F_test(
input rst,
input [4:0] data_in,  
        
output [4:0]data_out,
    output [4:0]r1_final,
    output [4:0]r2_final,
    output [4:0]r3_final
    );
    wire [4:0]r1_pos;
    wire [4:0]r2_pos;
    wire [4:0]r3_pos;
    wire [4:0]r1_out;
    wire [4:0]r2_out;
    
    assign r1_final=r1_pos;
    assign r2_final=r2_pos;
    assign r3_final=r3_pos;
    
    rotation_engine re_F(.rst(rst),.data_in(data_in),.rotor1_pos(r1_pos),.rotor2_pos(r2_pos),.rotor3_pos(r3_pos));
    rotor0 r0(.data_in(data_in),.position(r1_pos),.data_out(r1_out));
    rotor1 r1(.data_in(r1_out),.position(r2_pos),.data_out(r2_out));
    rotor2 r2(.data_in(r2_out),.position(r3_pos),.data_out(data_out));
    
endmodule
