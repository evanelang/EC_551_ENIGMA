`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2023 03:46:59 PM
// Design Name: 
// Module Name: rotor_FTOB_test
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


module rotor_FTOB_test(
input rst,
input [4:0]data_in,
output [4:0]data_out
    );
    wire [4:0]r1_final;
    wire [4:0]r2_final;
    wire [4:0]r3_final;
    wire [4:0]rotor_F_out;
    wire [4:0]rotor_B_out;
    
    rotor_F_test rft(.rst(rst),
    .data_in(data_in),
    .data_out(rotor_F_out),
    .r1_final(r1_final),
    .r2_final(r2_final),
    .r3_final(r3_final));
    
    rotor_B_test rbt(.rst(rst),
    .data_in(rotor_F_out),
    .r1_pos(r1_final),
    .r2_pos(r2_final),
    .r3_pos(r3_final),
    .data_out(rotor_B_out));
    
    assign data_out=(rotor_F_out)-(rotor_B_out);
endmodule
