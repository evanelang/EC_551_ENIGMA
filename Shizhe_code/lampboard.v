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
    input [4:0]data_in;
    output reg [4:0]data_out;
    
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
