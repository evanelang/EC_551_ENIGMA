`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 12:32:42 AM
// Design Name: 
// Module Name: rotor0_sim
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


module rotor0_sim(

    );
    
    reg [4:0] data_in;
    reg [4:0] position;       
    wire [4:0]data_out;
    
    rotor0 r0_sim(.data_in(data_in),.position(position),.data_out(data_out));
    initial
    begin
    data_in=5'd12;
    position=5'd10;
    #100;
    data_in=5'd3;
    position=5'd2;
    #100;
    data_in=5'd6;
    position=5'd1;
    #100;
    data_in=5'd7;
    position=5'd0;
    #100;
    data_in=5'd7;
    position=5'd1;
    #100;
 
    data_in=5'd8;
    position=5'd1;

     #100;
    data_in=5'd1;
    position=5'd1;
    #100;
    end
endmodule
