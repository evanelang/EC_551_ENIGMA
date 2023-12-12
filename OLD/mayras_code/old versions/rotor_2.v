`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: rotor_2
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


module rotor_2(
signal,rst,rotor_in,rotor_2_output,rotate_from_rotor_1, rotate
    );
    input signal,rst,rotate_from_rotor_1;
    input [7:0] rotor_in;
    output reg [15:0] rotor_2_output;
    output reg rotate;  // output signal to indicate a full rotation
    reg [3:0] counter = 0;  // 4-bit counter
    
    
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
    
    // add a line of code here for rotate.
    always @(posedge signal or posedge rst or posedge rotate_from_rotor_1) begin
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
    
    // control cipher
    
    always@(posedge signal,rotor_in)begin
    if(rst)begin
    rotor_2_output = 0;

    end
    else
    case(rotor_in)
    
    A: rotor_2_output = {8'h61,8'h61};
    B: rotor_2_output = {8'h62,8'h62};
    C: rotor_2_output = {8'h63,8'h63};
    D: rotor_2_output = {8'h64,8'h64};
    E: rotor_2_output = {8'h65,8'h65};
    F: rotor_2_output = {8'h66,8'h66};
    G: rotor_2_output = {8'h67,8'h67};
    H: rotor_2_output = {8'h68,8'h68};
    I: rotor_2_output = {8'h69,8'h69};
    J: rotor_2_output = {8'h6A,8'h6A};
    K: rotor_2_output = {8'h6B,8'h6B};
    L: rotor_2_output = {8'h6C,8'h6C};
    M: rotor_2_output = {8'h6D,8'h6D};
    N: rotor_2_output = {8'h6E,8'h6E};
    O: rotor_2_output = {8'h6F,8'h6F};
    P: rotor_2_output = {8'h70,8'h70};
    Q: rotor_2_output = {8'h71,8'h71};
    R: rotor_2_output = {8'h72,8'h72};
    S: rotor_2_output = {8'h73,8'h73};
    T: rotor_2_output = {8'h74,8'h74};
    U: rotor_2_output = {8'h75,8'h75};
    V: rotor_2_output = {8'h76,8'h76};
    W: rotor_2_output = {8'h77,8'h77};
    X: rotor_2_output = {8'h78,8'h78};
    Y: rotor_2_output = {8'h79,8'h79};
    Z: rotor_2_output = {8'h7A,8'h7A};
    
    a: rotor_2_output = {8'h42,8'h41};
    b: rotor_2_output = {8'h44,8'h43};
    c: rotor_2_output = {8'h45,8'h44};
    d: rotor_2_output = {8'h47,8'h46};
    e: rotor_2_output = {8'h49,8'h48};
    f: rotor_2_output = {8'h4B,8'h4A};
    g: rotor_2_output = {8'h4D,8'h4C};
    h: rotor_2_output = {8'h4F,8'h4E};
    i: rotor_2_output = {8'h51,8'h50};
    j: rotor_2_output = {8'h53,8'h52};
    k: rotor_2_output = {8'h55,8'h54};
    l: rotor_2_output = {8'h57,8'h56};
    m: rotor_2_output = {8'h59,8'h58};
    n: rotor_2_output = {8'h5B,8'h5A};
    o: rotor_2_output = {8'h41,8'h42};
    p: rotor_2_output = {8'h43,8'h44};
    q: rotor_2_output = {8'h45,8'h46};
    r: rotor_2_output = {8'h47,8'h48};
    s: rotor_2_output = {8'h49,8'h4A};
    t: rotor_2_output = {8'h4B,8'h4C};
    u: rotor_2_output = {8'h4D,8'h4E};
    v: rotor_2_output = {8'h4F,8'h50};
    w: rotor_2_output = {8'h51,8'h52};
    x: rotor_2_output = {8'h53,8'h54};
    y: rotor_2_output = {8'h55,8'h56};
    z: rotor_2_output = {8'h57,8'h58};
    
    default:rotor_2_output=16'h3F;
    
    
    endcase
    end
    
endmodule