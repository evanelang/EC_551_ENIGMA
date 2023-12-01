`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 09:38:48 PM
// Design Name: 
// Module Name: reverse_rotor0_sim
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


module reverse_rotor0_sim(

    );
    
    reg [4:0]data_in;
    reg [4:0]position;
    wire [4:0]data_out;
    
    reverse_rotor0 rrt0(.data_in(data_in),.position(position),.data_out(data_out));
    
    initial
    begin
    data_in=5'd13;
    position=5'd1;
    
    end
endmodule
