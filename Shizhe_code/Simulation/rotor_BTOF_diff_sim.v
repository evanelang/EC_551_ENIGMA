`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 05:57:41 PM
// Design Name: 
// Module Name: rotor_BTOF_diff_sim
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


module rotor_BTOF_diff_sim(

    );
    
reg [5:0]data_in;
wire [5:0]data_out;
reg [5:0]r0_position;
reg [5:0]r1_position;
reg [5:0]r2_position;
initial
begin
r0_position=6'd0;
r1_position=6'd0;
r2_position=6'd0;
end
rotor_BTOF_diff_test rbtofdiff_sim (.data_in(data_in),
.data_out(data_out),
.r0_position(r0_position),
.r1_position(r1_position),
.r2_position(r2_position));

initial
begin
data_in=6'd0;
#5 data_in=6'd6;
end

endmodule
