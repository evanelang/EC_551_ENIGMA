`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: enigma_implementation
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
module enigma_implementation(
signal,
rst,
keyboard,
rotor_final_out,
plug_setting,
rotor1_setting,
rotor2_setting
    );
    input signal;
    input rst;
    input[7:0]keyboard;
    input [1:0]plug_setting;
    input [1:0]rotor1_setting;
    input [1:0]rotor2_setting;
    output [15:0]rotor_final_out;
    wire [7:0]plugboard_out;
    wire [7:0]rotor_1_out;
    wire [7:0]rotor_3_out;
    wire [7:0]rotor_4_out;
    
    
    plugboard pg(.keyboard(keyboard),.plug_setting(plug_setting),.plugboard_out(plugboard_out),.signal(signal),.rst(rst));
    rotor_1 rt1(.plug_board_out(plugboard_out),.rotor1_setting(rotor1_setting),.rotor_1_out(rotor_1_out),.signal(signal),.rst(rst));
    rotor_3 rt3();
    rotor_4 rt4();
    rotor_2 rt2(.rotor_1_out(rotor_1_out),.rotor_2_out(rotor_final_out),.rotor2_setting(rotor2_setting),.signal(signal),.rst(rst));
    
    
endmodule
