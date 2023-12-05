`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 11:00:44 PM
// Design Name: 
// Module Name: reverse_enigma_test_sim
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


module reverse_enigma_test_sim(

    );
    
    reg [4:0]data_in;
    reg rst;
    wire[4:0]data_out;
    reg [4:0]r1_position;
    reg [4:0]r2_position;
    reg [4:0]r3_position;
    integer i;
    initial begin
    r1_position=5'd25;
    r2_position=5'd0;
    r3_position=5'd0;
    i=5'd0;
    rst=5'd0;
    data_in=5'd0;
    end
    reverse_enigma_test ret(.data_in(data_in),.data_out(data_out),.rst(rst),
    .r1_position(r1_position),.r2_position(r2_position),
    .r3_position(r3_position));
    initial
    begin
    forever
    begin
    #1 data_in=i+5'd1;
    #500;
    end
    end
endmodule
