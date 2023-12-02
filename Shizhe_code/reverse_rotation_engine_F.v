`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 10:39:29 PM
// Design Name: 
// Module Name: reverse_rotation_engine_F
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


module reverse_rotation_engine_F(
rst,
    data_in,
    //input [4:0]
   r1_pos_F,
    //input [4:0]
    r2_pos_F,
    //input [4:0]
    r3_pos_F,
    //rotor_pos_F,
   r1_out,
   r2_out,
   r3_out
    );
    input rst;
    input [4:0]data_in;
    input [4:0]r1_pos_F;
    input [4:0]r2_pos_F;
    input [4:0]r3_pos_F;
    //input [14:0]rotor_pos_F;
    output reg [4:0] r1_out;
    output reg [4:0] r2_out;
    output reg [4:0] r3_out;
    
    initial 
    begin
    r1_out = r1_pos_F;
    r2_out = r2_pos_F;
    r3_out = r3_pos_F;
    end
    
    always@(rst)begin
    if(rst==1'd1)begin
    r1_out=5'd0;
    r2_out=5'd0;
    r3_out=5'd0;
    end
    else
    begin
    r1_out=r1_pos_F;
    r2_out=r2_pos_F;
    r3_out=r3_pos_F;
    end
    end

always@(data_in) begin
r3_out <= r3_out - 5'd1; 
if (r3_out<=5'd0) 
begin 
r2_out <= r2_out- 5'd1; 
r3_out <=5'd25;
    if (r2_out <= 5'd0) 
    begin 
                r2_out <= 5'd25;
                r1_out <= r1_out - 5'd1; 
                if (r1_out<=5'd0)begin 
                r1_out<=5'd0;
                end
            end
      end
       
end

endmodule
