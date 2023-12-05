`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2023 03:33:44 PM
// Design Name: 
// Module Name: rotor_F_sim
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


module rotor_F_sim(

    );
    reg rst;
    reg [5:0]data_in;
    wire [5:0]data_out;
    wire [5:0]r1_final;
    wire [5:0]r2_final;
    wire [5:0]r3_final;
    
    integer i;
    initial
    begin
    i=6'd0;
    rst=6'd0;
    data_in=6'd0;
    end
    
    rotor_F_test rft(.data_in(data_in),.data_out(data_out),.r1_final(r1_final),
    .r2_final(r2_final),.r3_final(r3_final));
    
     initial
        begin
        for(;i<500;i=i+1)begin
        if(data_in>6'd25)begin
        data_in=6'd0;
        end
        else
        begin
        data_in=data_in+6'd1;
        end
        #10;
        end
        end
endmodule
