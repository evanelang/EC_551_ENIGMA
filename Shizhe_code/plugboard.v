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
keyboard,
plugboard_out
    );
input [4:0]keyboard;
output reg [4:0]plugboard_out;


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

always@(*)begin
case(keyboard)
    a: plugboard_out = e;  //AE
    b: plugboard_out = x;  //BX
    c: plugboard_out = q;  //CQ   
    d: plugboard_out = j;  //DJ
    e: plugboard_out = a;  //EA
    f: plugboard_out = z;  //FZ
    g: plugboard_out = n;  //GN
    h: plugboard_out = v;  //HV
    i: plugboard_out = y;  //IY
    j: plugboard_out = d;  //JD
    k: plugboard_out = r;  //KR
    l: plugboard_out = w;  //LW
    m: plugboard_out = o;  //MO
    n: plugboard_out = g;  //NG
    o: plugboard_out = m;  //OM
    p: plugboard_out = u;  //PU
    q: plugboard_out = c;  //QC
    r: plugboard_out = k;  //RK
    s: plugboard_out = t;  //ST
    t: plugboard_out = s;  //TS
    u: plugboard_out = p;  //UP
    v: plugboard_out = h;  //VH
    w: plugboard_out = l;  //WL
    x: plugboard_out = b;  //XB
    y: plugboard_out = i;  //YI
    z: plugboard_out = f;  //ZF
    default:plugboard_out=keyboard;
    endcase
end
/*
function [4:0]plugboard_out;
input [4:0]keyboard;
begin
case(keyboard)
    a: plugboard_out = e;  //AE
    b: plugboard_out = x;  //BX
    c: plugboard_out = q;  //CQ   
    d: plugboard_out = j;  //DJ
    e: plugboard_out = a;  //EA
    f: plugboard_out = z;  //FZ
    g: plugboard_out = n;  //GN
    h: plugboard_out = v;  //HV
    i: plugboard_out = y;  //IY
    j: plugboard_out = d;  //JD
    k: plugboard_out = r;  //KR
    l: plugboard_out = w;  //LW
    m: plugboard_out = o;  //MO
    n: plugboard_out = g;  //NG
    o: plugboard_out = m;  //OM
    p: plugboard_out = u;  //PU
    q: plugboard_out = c;  //QC
    r: plugboard_out = k;  //RK
    s: plugboard_out = t;  //ST
    t: plugboard_out = s;  //TS
    u: plugboard_out = p;  //UP
    v: plugboard_out = h;  //VH
    w: plugboard_out = l;  //WL
    x: plugboard_out = b;  //XB
    y: plugboard_out = i;  //YI
    z: plugboard_out = f;  //ZF
    
    default:plugboard_out=keyboard;
endcase
end
endfunction
*/
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



