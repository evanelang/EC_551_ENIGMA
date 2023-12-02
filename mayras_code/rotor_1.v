`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: created by Shizhe and some modifications by Mayra
// 
// Create Date: 
// Design Name: 
// Module Name: rotor_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision: revision2: adding a counter. the counter will incrmenet each time the signal input gos high. 4 bit rotor_1
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rotor_1(
signal,rst,plug_board,rotor_1_output,rotate
    );
    input signal,rst;
    input [15:0] plug_board;
    output reg [15:0] rotor_1_output;
    output reg rotate;  // output signal to indicate a full rotation
    reg [3:0] counter = 0;
    
    
    
    parameter 
    A=16'd65,
    B=16'd66,
    C=16'd67,
    D=16'd68,
    E=16'd69,
    F=16'd70,
    G=16'd71,
    H=16'd72,
    I=16'd73,
    J=16'd74,
    K=16'd75,
    L=16'd76,
    M=16'd77,
    N=16'd78,
    O=16'd79,
    P=16'd80,
    Q=16'd81,
    R=16'd82,
    S=16'd83,
    T=16'd84,
    U=16'd85,
    V=16'd86,
    W=16'd87,
    X=16'd88,
    Y=16'd89,
    Z=16'd90,
    
    a=16'd97,
    b=16'd98,
    c=16'd99,
    d=16'd100,
    e=16'd101,
    f=16'd102,
    g=16'd103,
    h=16'd104,
    i=16'd105,
    j=16'd106,
    k=16'd107,
    l=16'd108,
    m=16'd109,
    n=16'd110,
    o=16'd111,
    p=16'd112,
    q=16'd113,
    r=16'd114,
    s=16'd115,
    t=16'd116,
    u=16'd117,
    v=16'd118,
    w=16'd119,
    x=16'd120,
    y=16'd121,
    z=16'd122;
    
    // adding rotate and counter
    always @(posedge signal or posedge rst) begin
        if (rst) begin
            counter <= 4'b0000;  // reset counter to 0
            rotate <= 0;  // reset rotate signal
        end else begin
            counter <= counter + 1;  // increment counter
            if (counter == 4'b1111) begin  // if counter has completed a full cycle
                rotate <= 1;  // set rotate signal high
            end else begin
                rotate <= 0;  // otherwise, set rotate signal low
            end
        end
    end
    
    always @ (posedge signal,plug_board)begin
    if(rst)begin
    rotor_1_output = 0; // resr counter to zero
    end
    else 
    begin
    
    
    case (plug_board)
    A: rotor_1_output = B;
    B: rotor_1_output = C;
    C: rotor_1_output = D;
    D: rotor_1_output = E;
    E: rotor_1_output = F;
    F: rotor_1_output = G;
    G: rotor_1_output = H;
    H: rotor_1_output = I;
    I: rotor_1_output = J;
    J: rotor_1_output = K;
    K: rotor_1_output = L;
    L: rotor_1_output = M;
    M: rotor_1_output = N;
    N: rotor_1_output = O;
    O: rotor_1_output = P;
    P: rotor_1_output = Q;
    Q: rotor_1_output = R;
    R: rotor_1_output = S;
    S: rotor_1_output = T;
    T: rotor_1_output = U;
    U: rotor_1_output = V;
    V: rotor_1_output = W;
    W: rotor_1_output = X;
    X: rotor_1_output = Y;
    Y: rotor_1_output = Z;
    Z: rotor_1_output = A;
    
    a: rotor_1_output = b;
    b: rotor_1_output = c;
    c: rotor_1_output = d;
    d: rotor_1_output = e;
    e: rotor_1_output = f;
    f: rotor_1_output = g;
    g: rotor_1_output = h;
    h: rotor_1_output = i;
    i: rotor_1_output = j;
    j: rotor_1_output = k;
    k: rotor_1_output = l;
    l: rotor_1_output = m;
    m: rotor_1_output = n;
    n: rotor_1_output = o;
    o: rotor_1_output = p;
    p: rotor_1_output = q;
    q: rotor_1_output = r;
    r: rotor_1_output = s;
    s: rotor_1_output = t;
    t: rotor_1_output = u;
    u: rotor_1_output = v;
    v: rotor_1_output = w;
    w: rotor_1_output = x;
    x: rotor_1_output = y;
    y: rotor_1_output = z;
    z: rotor_1_output = a;
    
    default:rotor_1_output=16'd63;
    
    endcase
    end
    end
    
    
    
    
endmodule