`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 11:31:12 PM
// Design Name: 
// Module Name: enigma_implementation_onward
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


module enigma_implementation_onward(
input rst,
input [4:0]data_in,
output [4:0]data_out,
output [4:0]r1_position,
output [4:0]r2_position,
output [4:0]r3_position
    );
    
    wire [4:0]rotor_position1;
    wire [4:0]rotor_position2;
    wire [4:0]rotor_position3;
    wire [4:0]r0_out;
    wire [4:0]r1_out;
    
    rotation_engine re12(.data_in(data_in),
    .rst(rst),
    .rotor1_pos(rotor_position1),
    .rotor2_pos(rotor_position2),
    .rotor3_pos(rotor_position3));
    
    rotor0 r0(.data_in(data_in),.data_out(r0_out),.position(rotor_position1));
    rotor1 r1(.data_in(r0_out),.data_out(r1_out),.position(rotor_position2));
    rotor2 r2(.data_in(r1_out),.data_out(data_out),.position(rotor_position3));
    
    assign r1_position=rotor_position1;
    assign r2_position=rotor_position2;
    assign r3_position=rotor_position3;
    
    
    
    
endmodule
