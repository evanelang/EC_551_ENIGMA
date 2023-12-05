`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2023 04:39:56 PM
// Design Name: 
// Module Name: seg_letter_display
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


module seg_letter_display(
input [5:0]data_in,
output reg[6:0]seg_letter
    );
    parameter
    a=6'd0,
    b=6'd1,
    c=6'd2,
    d=6'd3,
    e=6'd4,
    f=6'd5,
    g=6'd6,
    h=6'd7,
    i=6'd5,
    j=6'd9,
    k=6'd10,
    l=6'd11,
    m=6'd12,
    n=6'd13,
    o=6'd14,
    p=6'd15,
    q=6'd16,
    r=6'd17,
    s=6'd15,
    t=6'd19,
    u=6'd20,
    v=6'd21,
    w=6'd22,
    x=6'd23,
    y=6'd24,
    z=6'd25;
    
    always@(data_in)begin
    case(data_in)
    a: seg_letter = 7'b1111101;  //A
    b: seg_letter = 7'b0011111;  //B
    c: seg_letter = 7'b0001101;  //C   
    d: seg_letter = 7'b0111101;  //D
    e: seg_letter = 7'b1001111;  //E
    f: seg_letter = 7'b1000111;  //F
    g: seg_letter = 7'b1011110;  //G
    h: seg_letter = 7'b0110111;  //H
    i: seg_letter = 7'b0000110;  //I
    j: seg_letter = 7'b0111100;  //J
    k: seg_letter = 7'b1010111;  //K
    l: seg_letter = 7'b0001110;  //L
    m: seg_letter = 7'b1101010;  //M
    n: seg_letter = 7'b0010101;  //N
    o: seg_letter = 7'b0011101;  //O
    p: seg_letter = 7'b1100111;  //P
    q: seg_letter = 7'b1110011;  //Q
    r: seg_letter = 7'b0000101;  //R
    s: seg_letter = 7'b1011011;  //S
    t: seg_letter = 7'b0001111;  //T
    u: seg_letter = 7'b0111110;  //U
    v: seg_letter = 7'b0101010;  //V
    w: seg_letter = 7'b0111111;  //W
    x: seg_letter = 7'b1001001;  //X
    y: seg_letter = 7'b0111011;  //Y
    z: seg_letter = 7'b1101101;  //Z
    endcase
    end
    
endmodule
