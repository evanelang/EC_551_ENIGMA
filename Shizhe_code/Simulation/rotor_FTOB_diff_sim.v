`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 06:36:48 PM
// Design Name: 
// Module Name: rotor_FTOB_diff_sim
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

module rotor_FTOB_diff_sim(

    );
    
  reg [5:0]data_in;
reg [5:0]r0_position;
reg [5:0]r1_position;
reg [5:0]r2_position;
wire [5:0]data_out;

rotor_FTOB_diff_test rftb_sim(.data_in(data_in),
.data_out(data_out),
.r0_position(r0_position),
.r1_position(r1_position),
.r2_position(r2_position));

initial
begin
data_in=6'd0;
r0_position=6'd0;
r1_position=6'd0;
r2_position=6'd0;
end
endmodule
