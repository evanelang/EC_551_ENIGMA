`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2023 08:56:51 PM
// Design Name: 
// Module Name: plugboard_simulation
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


module plugboard_simulation(

    );
    
    reg[15:0]out1[15:0];
    integer i;
    
    initial
    begin
    for(i=0;i<16;i=i+1)begin
    out1[i]=16'h3F;
    $display("This is out[i]%h",out1[i]);
    end
    end
endmodule
