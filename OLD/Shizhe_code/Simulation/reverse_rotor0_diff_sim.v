`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 01:07:51 PM
// Design Name: 
// Module Name: reverse_rotor0_diff_sim
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


module reverse_rotor0_diff_sim(

    );
    
    reg [4:0] data_in;
    reg [4:0] position;         
    wire[4:0] data_out;
    wire[4:0] index;
    reverse_rotor0_diff rrdf(.data_in(data_in),.data_out(data_out),.position(position),.index(index));
    initial 
    begin
    data_in=5'd4;
    position=5'd0;
    
    #5data_in=5'd9;
    position=5'd1;
    
    #5 data_in=5'd12;
    position=5'd6;
    end
endmodule
