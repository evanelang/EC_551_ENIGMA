`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 12:16:23 AM
// Design Name: 
// Module Name: rotation_engine_sim
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


module rotation_engine_sim(

    );
    
    reg rst;
    reg [5:0]data_in;
    wire[5:0] rotor1_pos;
    wire[5:0] rotor2_pos;
    wire[5:0] rotor3_pos;
    integer i;
  initial
  begin
  rst=1'd0;
  end
    rotation_engine re1(.rst(rst),.data_in(data_in),.rotor1_pos(rotor1_pos),.rotor2_pos(rotor2_pos),.rotor3_pos(rotor3_pos));
    initial
   
    begin
     data_in=6'd0;
    #1
   for(i=0;i<26*26*26*26*26;i=i+1)begin
   data_in=i+6'd1;
   #1;
   if(data_in>6'd25)begin
   data_in=6'd0;
   end
   end
   #500000;
 
    
    end
endmodule
