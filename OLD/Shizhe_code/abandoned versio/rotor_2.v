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
rst,
rotor_2_out,
rotor_1_out,
rotor_2_rotatetime,
rotor_1_rotatetime,
    );
    
    input [4:0]rotor_1_rotatetime;
    input [4:0]rotor_1_out;
    input rst;
    
    output reg [4:0]rotor_2_out;
    reg [4:0]rotation_num;
    output reg [4:0]rotor_2_rotatetime;
    
    initial begin
    rotation_num=5'd0;
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
    
    always@(posedge rst)
    begin
    rotor_2_out=5'd0;
    rotation_num=5'd0;
    end
    
    always @ (*)begin
    rotor_2_out = rotor_2_setting_out(rotor_1_out,rotor_1_rotatetime);
    rotor_2_rotatetime = rotation_num;
    rotation_num=rotation_num+5'd1;
    end
    
    
    function [4:0]rotor_2_setting_out;
    input [4:0]rotor1_out;
    input [4:0]rotor1_rotatetime;
   
    case(rotor1_out)
    a: rotor_2_setting_out = b;
    b: rotor_2_setting_out = c;
    c: rotor_2_setting_out = d;
    d: rotor_2_setting_out = e;
    e: rotor_2_setting_out = f;
    f: rotor_2_setting_out = g;
    g: rotor_2_setting_out = h;
    h: rotor_2_setting_out = i;
    i: rotor_2_setting_out = j;
    j: rotor_2_setting_out = k;
    k: rotor_2_setting_out = l;
    l: rotor_2_setting_out = m;
    m: rotor_2_setting_out = n;
    n: rotor_2_setting_out = o;
    o: rotor_2_setting_out = p;
    p: rotor_2_setting_out = q;
    q: rotor_2_setting_out = r;
    r: rotor_2_setting_out = s;
    s: rotor_2_setting_out = t;
    t: rotor_2_setting_out = u;
    u: rotor_2_setting_out = v;
    v: rotor_2_setting_out = w;
    w: rotor_2_setting_out = x;
    x: rotor_2_setting_out = y;
    y: rotor_2_setting_out = z;
    z: rotor_2_setting_out = a;
  
    default:rotor_2_setting_out=5'd0;
    endcase
    
    endfunction
    
    
endmodule


