`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 06:58:38 PM
// Design Name: 
// Module Name: reverse_plugboard
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


module reverse_plugboard(
data_in,
data_out
); 
input [5:0]data_in;
output reg [5:0]data_out;


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

always@(*)begin
case(data_in)
    a: data_out = e;  //AE
    b: data_out = x;  //BX
    c: data_out = q;  //CQ   
    d: data_out = j;  //DJ
    e: data_out = a;  //EA
    f: data_out = z;  //FZ
    g: data_out = n;  //GN
    h: data_out = v;  //HV
    i: data_out = y;  //IY
    j: data_out = d;  //JD
    k: data_out = r;  //KR
    l: data_out = w;  //LW
    m: data_out = o;  //MO
    n: data_out = g;  //NG
    o: data_out = m;  //OM
    p: data_out = u;  //PU
    q: data_out = c;  //QC
    r: data_out = k;  //RK
    s: data_out = t;  //ST
    t: data_out = s;  //TS
    u: data_out = p;  //UP
    v: data_out = h;  //VH
    w: data_out = l;  //WL
    x: data_out = b;  //XB
    y: data_out = i;  //YI
    z: data_out = f;  //ZF
    default:data_out=data_in;
    endcase
end
endmodule
