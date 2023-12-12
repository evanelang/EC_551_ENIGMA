`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 12:48:36 PM
// Design Name: 
// Module Name: rotor0_BTOF_diff_sim
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


module rotor0_BTOF_diff_sim(
    );
    
reg [4:0]data_in;
reg [4:0]position;
wire [4:0]r0_data_out;
wire [4:0]r0_reverse_data_out;
wire [4:0]total_out;

rotor0_BTOF_diff_test rbdf(.data_in(data_in),
.position(position),
.r0_data_out(r0_data_out),
.r0_reverse_data_out(r0_reverse_data_out),
.total_out(total_out));

initial
begin
data_in=5'd0;
position=5'd0;
#5 data_in=5'd1;
   position=5'd0;
#5 data_in=5'd2;
   position=5'd0;
   #5 data_in=5'd3;
   position=5'd0;
end
endmodule
