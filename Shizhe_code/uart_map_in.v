`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2023 06:06:59 PM
// Design Name: 
// Module Name: uart_map_in
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


module uart_map_in(
input [7:0]uart_in,
output reg [5:0]data_out
    );
    
    always@(uart_in)begin
    data_out=uart_in[5:0];
    end
    
    
endmodule
