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
wire [4:0]r1;
wire [4:0]r2;
wire [4:0]r3;
wire [4:0]r11;
wire [4:0]r22;
wire [4:0]r33;
integer i;
initial
begin
rst=1'd0;
data_in=5'd0;
i=0;
end
enigma_implementation_onward eio(.rst(rst),.data_in(data_in),.data_out(data_out),
.r1_positionF(r1),.r2_positionF(r2),.r3_positionF(r3),
.r1_positionB(r11),.r2_positionB(r22),.r3_positionB(r33));
initial
begin
for(i=0;i<26*26*26;i=i+1)begin
#1 data_in=data_in+5'd1;
end
end
endmodule
