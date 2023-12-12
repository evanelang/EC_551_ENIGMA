`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 09:50:46 PM
// Design Name: 
// Module Name: lampboard
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


module lampboard(
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
    a: data_out = x; //AX
    b: data_out = d; //BD
    c: data_out = t; //CT
    d: data_out = b; //DB
    e: data_out = z; //EZ
    f: data_out = o; //FO
    g: data_out = j; //GJ
    h: data_out = i; //HI
    i: data_out = h; //IH
    j: data_out = g; //JG
    k: data_out = w; //KW
    l: data_out = p; //LP
    m: data_out = q; //MQ
    n: data_out = u; //NU
    o: data_out = f; //OF
    p: data_out = l; //PL
    q: data_out = m; //QM
    r: data_out = s; //RS
    s: data_out = r; //SR
    t: data_out = c; //TC
    u: data_out = n; //UN
    v: data_out = y; //VY
    w: data_out = k; //WK
    x: data_out = a; //XA
    y: data_out = v; //YV
    z: data_out = e; //ZE
   
    default:data_out=data_in;
endcase
    end
endmodule
