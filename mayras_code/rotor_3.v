`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Boston University
// Engineer: Mayra Teixeira
// 
// Create Date: 11/10/2023 07:59:31 PM
// Design Name: third rotor
// Module Name: rotor_3
// Project Name: Enigma machine
// Target Devices: 
// Tool Versions: 
// Description: design a third rotor for the enigma machine module.
// 
// Dependencies: 
// 
// Revision: adding counter 
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rotor_3(
signal,rst,rotor_in,rotor_3_output, rotate_from_rotor_2,setting
    );
    input signal,rst;
    input [7:0] rotor_in;
    input [2:0] setting; 
    output reg [15:0] rotor_3_output;
    //output reg rotate;  // output signal to indicate a full rotation
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
    
   // adding counter
    always @(posedge signal or posedge rst) begin
        if (rst) begin
            counter <= 4'b0000;  // reset counter to 0
        end else begin
            counter <= counter + 1;  // increment counter
           
            
            
        end
    end 
    
    always@(posedge signal,rotor_in)begin
    if(rst)begin
    rotor_3_output = 0;
    end
    else
    case(rotor_in)
    
    A: rotor_3_output = {8'h62};
    B: rotor_3_output = {8'h63};
    C: rotor_3_output = {8'h64};
    D: rotor_3_output = {8'h65};
    E: rotor_3_output = {8'h66};
    F: rotor_3_output = {8'h67};
    G: rotor_3_output = {8'h68};
    H: rotor_3_output = {8'h69};
    I: rotor_3_output = {8'h6A};
    J: rotor_3_output = {8'h6B};
    K: rotor_3_output = {8'h6C};
    L: rotor_3_output = {8'h6D};
    M: rotor_3_output = {8'h6E};
    N: rotor_3_output = {8'h6F};
    O: rotor_3_output = {8'h70};
    P: rotor_3_output = {8'h71};
    Q: rotor_3_output = {8'h72};
    R: rotor_3_output = {8'h73};
    S: rotor_3_output = {8'h74};
    T: rotor_3_output = {8'h75};
    U: rotor_3_output = {8'h76};
    V: rotor_3_output = {8'h77};
    W: rotor_3_output = {8'h78};
    X: rotor_3_output = {8'h79};
    Y: rotor_3_output = {8'h7A};
    Z: rotor_3_output = {8'h41};
    
    a: rotor_3_output = {8'h43};
    b: rotor_3_output = {8'h44};
    c: rotor_3_output = {8'h45};
    d: rotor_3_output = {8'h46};
    e: rotor_3_output = {8'h47};
    f: rotor_3_output = {8'h48};
    g: rotor_3_output = {8'h49};
    h: rotor_3_output = {8'h4A};
    i: rotor_3_output = {8'h4B};
    j: rotor_3_output = {8'h4C};
    k: rotor_3_output = {8'h4D};
    l: rotor_3_output = {8'h4E};
    m: rotor_3_output = {8'h4F};
    n: rotor_3_output = {8'h50};
    o: rotor_3_output = {8'h51};
    p: rotor_3_output = {8'h52};
    q: rotor_3_output = {8'h53};
    r: rotor_3_output = {8'h54};
    s: rotor_3_output = {8'h55};
    t: rotor_3_output = {8'h56};
    u: rotor_3_output = {8'h57};
    v: rotor_3_output = {8'h58};
    w: rotor_3_output = {8'h59};
    x: rotor_3_output = {8'h5A};
    y: rotor_3_output = {8'h41};
    z: rotor_3_output = {8'h42};
    
    default:rotor_3_output=16'h3F;
    
    endcase
    end
    
    function [7:0]rotor3_output;
        
    input [2:0] setting;
    begin
        case(setting)
            3'b000: rotor3_output = rotor_3_output; // initializing
            3'b001: rotor3_output = ~rotor_3_output; // bitwise NOT
            3'b010: rotor3_output = rotor_3_output + 1; // increment output
            3'b011: rotor3_output = rotor_3_output - 1; // decrement output
            3'b100: rotor3_output = rotor_3_output << 1; // left shift
            
            default: rotor3_output = 8'h00; // default case
        endcase
    end
    endfunction
    
endmodule
