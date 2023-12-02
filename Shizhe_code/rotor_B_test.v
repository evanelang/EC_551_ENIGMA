`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2023 03:34:31 PM
// Design Name: 
// Module Name: rotor_B_test
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


module rotor_B_test(
input rst,
input [4:0] data_in,        
input [4:0]r1_pos,
input [4:0]r2_pos,
input [4:0]r3_pos,
    output [4:0]data_out
    );
  
    wire [4:0]r1_out;
    wire [4:0]r2_out;
    wire [4:0]r3_out;
    
    reverse_rotation_engine_F rrf(.data_in(data_in),.rst(rst),.r1_pos_F(r1_pos),.r2_pos_F(r2_pos),
    .r3_pos_F(r3_pos),.r1_out(r1_out),.r2_out(r2_out),.r3_out(r3_out));
    reverse_rotor2 rr2(.data_in(data_in),.data_out(r3_out),.position(r3_pos));
    reverse_rotor1 rr1(.data_in(r3_out),.data_out(r2_out),.position(r2_pos));
    reverse_rotor0 rr0(.data_in(r2_out),.data_out(data_out),.position(r1_pos));
endmodule
