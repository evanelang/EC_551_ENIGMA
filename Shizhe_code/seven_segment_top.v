`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2023 04:04:06 PM
// Design Name: 
// Module Name: seven_segment_top
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


module seven_segment_top(
input [5:0]data_in,
input [5:0]r0_pos,
input [5:0]r1_pos,
input [5:0]r2_pos,
output [3:0]anode,
output [6:0]seg_letter,
output [6:0]seg_pos1,
output [6:0]seg_pos2,
output [6:0]seg_pos3
    );
    
    assign anode=4'b0000;
    
    seg_letter_display seg_lit(.data_in(data_in),.
    seg_letter(seg_letter));
    
endmodule
