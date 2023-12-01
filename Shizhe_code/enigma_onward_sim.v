`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 11:45:54 PM
// Design Name: 
// Module Name: enigma_onward_sim
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
module enigma_onward_sim(

    );
    
reg rst;
reg [4:0]data_in;
wire [4:0]data_out;

enigma_implementation_onward eio(.rst(rst),.data_in(data_in),.data_out(data_out));
initial
begin
rst=1'd0;
data_in=5'd1;
#100;
rst=1'd0;
data_in=5'd2;
#100;
rst=1'd0;
data_in=5'd3;
#100;
rst=1'd0;
data_in=5'd4;
#100;
rst=1'd0;
data_in=5'd5;
#100;
rst=1'd0;
data_in=5'd6;
#100;
rst=1'd0;
data_in=5'd7;
#100;
rst=1'd0;
data_in=5'd8;


end
endmodule
