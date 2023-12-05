`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 07:49:53 PM
// Design Name: 
// Module Name: reverse_enigma_sim
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


module reverse_enigma_sim(

    );
    reg rst;
reg [5:0]data_in;
wire [5:0]data_out;
reg [5:0]r0_positionF;
reg [5:0]r1_positionF;
reg [5:0]r2_positionF;
reg [5:0]r0_positionB;
reg [5:0]r1_positionB;
reg [5:0]r2_positionB;
initial
begin
rst=1'd0;
end
enigma_reverse_implementation ers1(.rst(rst),
.data_in(data_in),
.data_out(data_out),
.r0_positionF(r0_positionF),
.r1_positionF(r1_positionF),
.r2_positionF(r2_positionF),
.r0_positionB(r0_positionB),
.r1_positionB(r1_positionB),
.r2_positionB(r2_positionB));

initial
begin
data_in=6'd0;
r0_positionF=6'd0;
r1_positionF=6'd0;
r2_positionF=6'd0;
r0_positionB=6'd0;
r1_positionB=6'd0;
r2_positionB=6'd0;
end

endmodule
