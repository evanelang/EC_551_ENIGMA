`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2023 04:03:46 PM
// Design Name: 
// Module Name: rotor_B_sim
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


module rotor_B_sim(

    );
    
    reg rst;
    reg [4:0]data_in;
    reg [4:0]r1_pos;
    reg [4:0]r2_pos;
    reg [4:0]r3_pos;
    wire [4:0]data_out;
    integer i;
    initial
    begin
    rst=1'd0;
    data_in=1'd0;
    r1_pos=5'd1;
    r2_pos=5'd1;
    r3_pos=5'd1;
    end
    
    rotor_B_test rbt(.data_in(data_in),.data_out(data_out),.r1_pos(r1_pos),
    .rst(rst),
    .r2_pos(r2_pos),
    .r3_pos(r3_pos));
    
     initial
        begin
        for(i=5'd0;i<500;i=i+1)begin
        if(data_in==5'd25)begin
        data_in=5'd0;
        end
        else
        begin
        data_in=data_in+5'd1;
        end
        #10;
        end
        end
    
endmodule
