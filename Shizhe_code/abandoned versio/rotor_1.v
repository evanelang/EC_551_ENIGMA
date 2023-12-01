`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module rotor_1(
signal,
plug_board_out,
rotor_1_out,
rotor_1_rotatetime,
plugboard_presstime
    );
    
    input [4:0]plugboard_presstime;
    input signal;
  
    input [4:0]plug_board_out;
    output reg [4:0]rotor_1_out;
    reg [4:0]rotation_num;
    output reg [4:0]rotor_1_rotatetime;
    
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
    
    always@(posedge signal)
    begin
    rotor_1_out<=5'd0;
    rotation_num<=5'd0;
    end
    
    always @ (*)begin
    rotor_1_out = rotor_1_setting_out(plug_board_out,plugboard_presstime);
    rotor_1_rotatetime = rotation_num;
    rotation_num=rotation_num+5'd1;
    end
    
    
    function [4:0]rotor_1_setting_out;
    input [4:0]plugboard_out;
    input [4:0]plugpress_num;
    begin
    if((plugboard_out+plugpress_num)<26)begin
    plugboard_out=plugboard_out+plugpress_num;
    end
    else
    begin
    plugboard_out=5'd0;
    end
    case(plugboard_out)
    a: rotor_1_setting_out = b;
    b: rotor_1_setting_out = c;
    c: rotor_1_setting_out = d;
    d: rotor_1_setting_out = e;
    e: rotor_1_setting_out = f;
    f: rotor_1_setting_out = g;
    g: rotor_1_setting_out = h;
    h: rotor_1_setting_out = i;
    i: rotor_1_setting_out = j;
    j: rotor_1_setting_out = k;
    k: rotor_1_setting_out = l;
    l: rotor_1_setting_out = m;
    m: rotor_1_setting_out = n;
    n: rotor_1_setting_out = o;
    o: rotor_1_setting_out = p;
    p: rotor_1_setting_out = q;
    q: rotor_1_setting_out = r;
    r: rotor_1_setting_out = s;
    s: rotor_1_setting_out = t;
    t: rotor_1_setting_out = u;
    u: rotor_1_setting_out = v;
    v: rotor_1_setting_out = w;
    w: rotor_1_setting_out = x;
    x: rotor_1_setting_out = y;
    y: rotor_1_setting_out = z;
    z: rotor_1_setting_out = a;
   
    default:rotor_1_setting_out=5'd0;
    endcase
    end
    endfunction
    
    
endmodule
