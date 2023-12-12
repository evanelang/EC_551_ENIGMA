`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 12:42:34 AM
// Design Name: rotor3 mod
// Module Name: rotor3_mod
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision: modifying rotor3. once this works. then change it with rotor3
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module rotor_3_mod(
rst,
rotor_3_out,
rotor_2_out,
rotor_3_rotate,
rotor_2_rotate,
    );
    
    input [7:0]rotor_2_rotate;
    input [7:0]rotor_2_out;
    input rst;
    
    output reg [7:0]rotor_2_out;
    reg [7:0]rotations;
    output reg [7:0]rotor_3_rotate;
    
    initial begin
    rotations=8'd65;
    end
    
    
   parameter 
    A=8'd65,
    B=8'd66,
    C=8'd67,
    D=8'd68,
    E=8'd69,
    F=8'd70,
    G=8'd71,
    H=8'd72,
    I=8'd73,
    J=8'd74,
    K=8'd75,
    L=8'd76,
    M=8'd77,
    N=8'd78,
    O=8'd79,
    P=8'd80,
    Q=8'd81,
    R=8'd82,
    S=8'd83,
    T=8'd84,
    U=8'd85,
    V=8'd86,
    W=8'd87,
    X=8'd88,
    Y=8'd89,
    Z=8'd90,
    
    a=8'd97,
    b=8'd98,
    c=8'd99,
    d=8'd100,
    e=8'd101,
    f=8'd102,
    g=8'd103,
    h=8'd104,
    i=8'd105,
    j=8'd106,
    k=8'd107,
    l=8'd108,
    m=8'd109,
    n=8'd110,
    o=8'd111,
    p=8'd112,
    q=8'd113,
    r=8'd114,
    s=8'd115,
    t=8'd18,
    u=8'd117,
    v=8'd118,
    w=8'd119,
    x=8'd120,
    y=8'd121,
    z=8'd122;
    
    // construct a function
    
    
    function [7:0]rotor_3_setting_out;
    input [7:0]rotor2_out;
    input [7:0]rotor2_rotatetime;
   
    case(rotor2_out)
    a: rotor_3_setting_out = z;
    b: rotor_3_setting_out = y;
    c: rotor_3_setting_out = x;
    d: rotor_3_setting_out = w;
    e: rotor_3_setting_out = v;
    f: rotor_3_setting_out = u;
    g: rotor_3_setting_out = t;
    h: rotor_3_setting_out = s;
    i: rotor_3_setting_out = r;
    j: rotor_3_setting_out = q;
    k: rotor_3_setting_out = p;
    l: rotor_3_setting_out = o;
    m: rotor_3_setting_out = n;
    n: rotor_3_setting_out = m;
    o: rotor_3_setting_out = l;
    p: rotor_3_setting_out = k;
    q: rotor_3_setting_out = j;
    r: rotor_3_setting_out = i;
    s: rotor_3_setting_out = h;
    t: rotor_3_setting_out = g;
    u: rotor_3_setting_out = f;
    v: rotor_3_setting_out = e;
    w: rotor_3_setting_out = d;
    x: rotor_3_setting_out = c;
    y: rotor_3_setting_out = b;
    z: rotor_3_setting_out = a;
    
    // upper case letter
    A: rotor_3_setting_out = Z;
    B: rotor_3_setting_out = Y;
    C: rotor_3_setting_out = X;
    D: rotor_3_setting_out = W;
    E: rotor_3_setting_out = V;
    F: rotor_3_setting_out = U;
    E: rotor_3_setting_out = T;
    H: rotor_3_setting_out = S;
    I: rotor_3_setting_out = R;
    J: rotor_3_setting_out = Q;
    K: rotor_3_setting_out = P;
    L: rotor_3_setting_out = O;
    M: rotor_3_setting_out = N;
    N: rotor_3_setting_out = M;
    O: rotor_3_setting_out = L;
    P: rotor_3_setting_out = K;
    Q: rotor_3_setting_out = J;
    R: rotor_3_setting_out = I;
    S: rotor_3_setting_out = H;
    T: rotor_3_setting_out = G;
    U: rotor_3_setting_out = F;
    V: rotor_3_setting_out = E;
    W: rotor_3_setting_out = D;
    x: rotor_3_setting_out = C;
    y: rotor_3_setting_out = B;
    z: rotor_3_setting_out = A;
    
    
    
  
    default:rotor_3_setting_out=8'h3F;
    endcase
    
    endfunction
    
    // a combinational
    always@(posedge rst)
    begin
    rotor_3_out=8'd65;
    rotations=8'd65;
    end
    
    always @ (*)begin
    // use the function
    rotor_3_out = rotor_3_setting_out(rotor_3_out,rotor_2_rotate);
    rotor_3_rotate = rotations;
    rotations=rotations+8'd66;
    end
    
    