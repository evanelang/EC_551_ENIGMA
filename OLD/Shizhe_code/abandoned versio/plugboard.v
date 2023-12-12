`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: plugboard
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
module plugboard(
signal,
keyboard,
plug_setting,
plugboard_presstime,
plugboard_out
    );
input [4:0]keyboard;
input signal;
input [1:0]plug_setting;
output reg[4:0]plugboard_presstime;
output reg [4:0]plugboard_out;

reg [4:0]plugpress_num;

initial begin
plugpress_num=5'd0;
end

 parameter 
    a=5'd0,
    b=5'd1,
    c=5'd2,
    d=5'd3,
    e=5'd4,
    f=5'd5,
    g=5'd6,
    h=5'd7,
    i=5'd5,
    j=5'd9,
    k=5'd10,
    l=5'd11,
    m=5'd12,
    n=5'd13,
    o=5'd14,
    p=5'd15,
    q=5'd16,
    r=5'd17,
    s=5'd15,
    t=5'd19,
    u=5'd20,
    v=5'd21,
    w=5'd22,
    x=5'd23,
    y=5'd24,
    z=5'd25;

always@(posedge signal)
begin
plugboard_out<=5'd0;
plugboard_presstime<=5'd0;
end


always@(*)begin
plugboard_out=plug_board_pair_out(keyboard);
plugboard_presstime=plugpress_num;
plugpress_num=plugpress_num+5'd1;
end

function [4:0]plug_board_pair_out;
input [4:0]keyboard;
begin
case(keyboard)

    a: plug_board_pair_out = e;
    b: plug_board_pair_out = x;
    c: plug_board_pair_out = q;
    d: plug_board_pair_out = j;
    e: plug_board_pair_out = a;
    f: plug_board_pair_out = z;
    g: plug_board_pair_out = n;
    h: plug_board_pair_out = v;
    i: plug_board_pair_out = y;
    j: plug_board_pair_out = d;
    k: plug_board_pair_out = r;
    l: plug_board_pair_out = w;
    m: plug_board_pair_out = o;
    n: plug_board_pair_out = g;
    o: plug_board_pair_out = m;
    p: plug_board_pair_out = u;
    q: plug_board_pair_out = c;
    r: plug_board_pair_out = k;
    s: plug_board_pair_out = t;
    t: plug_board_pair_out = s;
    u: plug_board_pair_out = p;
    v: plug_board_pair_out = h;
    w: plug_board_pair_out = l;
    x: plug_board_pair_out = b;
    y: plug_board_pair_out = i;
    z: plug_board_pair_out = f;
    
    default:plug_board_pair_out=5'd0;
endcase
end
endfunction

/*
function [7:0]plug_board_2_out;
input [7:0]keyboard;
begin
case(keyboard)
    a: plug_board_2_out = x;
    b: plug_board_2_out = d;
    c: plug_board_2_out = t;
    d: plug_board_2_out = b;
    e: plug_board_2_out = z;
    f: plug_board_2_out = o;
    g: plug_board_2_out = j;
    h: plug_board_2_out = i;
    i: plug_board_2_out = h;
    j: plug_board_2_out = g;
    k: plug_board_2_out = w;
    l: plug_board_2_out = p;
    m: plug_board_2_out = q;
    n: plug_board_2_out = u;
    o: plug_board_2_out = f;
    p: plug_board_2_out = l;
    q: plug_board_2_out = m;
    r: plug_board_2_out = s;
    s: plug_board_2_out = r;
    t: plug_board_2_out = c;
    u: plug_board_2_out = n;
    v: plug_board_2_out = y;
    w: plug_board_2_out = k;
    x: plug_board_2_out = a;
    y: plug_board_2_out = v;
    z: plug_board_2_out = e;
    
    default:plug_board_2_out=5'd0;
endcase
end
endfunction
*/

endmodule



