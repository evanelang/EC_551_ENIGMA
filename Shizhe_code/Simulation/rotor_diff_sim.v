`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 06:19:11 PM
// Design Name: 
// Module Name: rotor_diff_sim
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


module rotor_diff_sim(

    );
reg[5:0]data_in_f;
reg[5:0]data_in_b;
reg [5:0]r0_position;
reg [5:0]r1_position;
reg [5:0]r2_position;
wire [5:0]data_out_f;
wire [5:0]data_out_b;
wire [5:0]data_diff;
rotor_diff_test rd_sim(.data_in_f(data_in_f),.data_in_b(data_in_b),.r0_position(r0_position),.r1_position(r1_position),.r2_position(r2_position)
,.data_out_f(data_out_f),.data_out_b(data_out_b),.data_diff(data_diff));

initial
begin
data_in_f=6'd0;
data_in_b=data_out_f;
r0_position=6'd0;
r1_position=6'd0;
r2_position=6'd0;
#5
data_in_f=6'd1;
data_in_b=data_out_f;
r0_position=6'd0;
r1_position=6'd0;
r2_position=6'd0;
#5
data_in_f=6'd0;
data_in_b=data_out_f;
r0_position=6'd0;
r1_position=6'd0;
r2_position=6'd0;
#5
data_in_f=6'd0;
data_in_b=data_out_f;
r0_position=6'd0;
r1_position=6'd0;
r2_position=6'd0;

end
endmodule
