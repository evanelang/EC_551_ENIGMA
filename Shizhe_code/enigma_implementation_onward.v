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
output [4:0]r1_positionF,
output [4:0]r2_positionF,
output [4:0]r3_positionF,
output [4:0]r1_positionB,
output [4:0]r2_positionB,
output [4:0]r3_positionB
    );
    wire [4:0]plugboard_out;
    wire [4:0]r1_position1F;
    wire [4:0]r2_position2F;
    wire [4:0]r3_position3F;
    wire [4:0]r0F_out;
    wire [4:0]r1F_out;
    wire [4:0]reflector_out;
    wire [4:0]reflector_in;
    wire [4:0]r1_position1B;
    wire [4:0]r2_position2B;
    wire [4:0]r3_position3B;
    wire [4:0]r2B_out;
    wire [4:0]r1B_out;
    wire [4:0]lampboard_in;
    wire [4:0]lampboard_out;
    rotation_engine reF(.data_in(data_in),
    .rst(rst),
    .rotor1_pos(r1_position1F),
    .rotor2_pos(r2_position2F),
    .rotor3_pos(r3_position3F));
    rotation_engine reB(.data_in(data_in),
    .rst(rst),
    .rotor1_pos(r3_position3B),
    .rotor2_pos(r2_position2B),
    .rotor3_pos(r1_position1B));
    plugboard pg(.keyboard(data_in),.plugboard_out(plugboard_out));
    rotor0 r0F(.data_in(plugboard_out),.data_out(r0F_out),.position(r1_position1F));
    rotor1 r1F(.data_in(r0F_out),.data_out(r1F_out),.position(r2_position2F));
    rotor2 r2F(.data_in(r1F_out),.data_out(reflector_in),.position(r3_position3F));
    reflector rf(.data_in(reflector_in),.data_out(reflector_out));
    rotor2 r2B(.data_in(reflector_out),.data_out(r2B_out),.position(r3_position3B));
   rotor1 r1B(.data_in(r2B_out),.data_out(r1B_out),.position(r2_position2B));
    rotor0 r0B(.data_in(r1B_out),.data_out(lampboard_in),.position(r1_position1B));
    lampboard lb(.data_in(lampboard_in),.data_out(data_out));
    
    assign r1_positionF=r1_position1F;
    assign r2_positionF=r2_position2F;
    assign r3_positionF=r3_position3F;
    assign r1_positionB=r1_position1B;
    assign r2_positionB=r2_position2B;
    assign r3_positionB=r3_position3B;
    //assign data_out=rst?5'd31:lampboard_out;
endmodule
