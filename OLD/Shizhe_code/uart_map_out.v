`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2023 06:24:18 PM
// Design Name: 
// Module Name: uart_map_out
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


module uart_map_out(
input [5:0]data_in,
output reg [5:0]data_out
    );
    parameter
    a=6'b000000,
    b=6'b000001,
    c=6'b000010,
    d=6'b000011,
    e=6'b000100,
    f=6'b000101,
    g=6'b000110,
    h=6'b000111,
    i=6'b001000,
    j=6'b001001,
    k=6'b001010,
    l=6'b001011,
    m=6'b001100,
    n=6'b001101,
    o=6'b001110,
    p=6'b001111,
    q=6'b010000,
    r=6'b010001,
    s=6'b010010,
    t=6'b010011,
    u=6'b010100,
    v=6'b010101,
    w=6'b010110,
    x=6'b010111,
    y=6'b011000,
    z=6'b011001;
    
    always@(data_in)begin
    case(data_in)
    a:data_out=6'd0;
    b:data_out=6'd1;
    c:data_out=6'd2;
    d:data_out=6'd3;
    e:data_out=6'd4;
    f:data_out=6'd5;
    g:data_out=6'd6;
    h:data_out=6'd7;
    i:data_out=6'd8;
    j:data_out=6'd9;
    k:data_out=6'd10;
    l:data_out=6'd11;
    m:data_out=6'd12;
    n:data_out=6'd13;
    o:data_out=6'd14;
    p:data_out=6'd15;
    q:data_out=6'd16;
    r:data_out=6'd17;
    s:data_out=6'd18;
    t:data_out=6'd19;
    u:data_out=6'd20;
    v:data_out=6'd21;
    w:data_out=6'd22;
    x:data_out=6'd23;
    y:data_out=6'd24;
    z:data_out=6'd25;
    endcase
    end
    
endmodule
