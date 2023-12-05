`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2023 01:50:22 PM
// Design Name: 
// Module Name: rref_sim
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


module rref_sim(

    );
     reg [4:0]data_in;
       wire [4:0]r1_out;
       wire [4:0]r2_out;
       wire [4:0]r3_out;
       reg [4:0]r1_pos_F;
       reg [4:0]r2_pos_F;
       reg [4:0]r3_pos_F;
       //integer i;
        initial
        begin
        r1_pos_F=5'd25;
        r2_pos_F=5'd3;
        r3_pos_F=5'd2;
        end
reverse_rotation_engine_F rreF_test_1(.data_in(data_in),
.r1_pos_F(r1_pos_F),
.r2_pos_F(r2_pos_F),
.r3_pos_F(r3_pos_F),
.r1_out(r1_out),
.r2_out(r2_out),
.r3_out(r3_out));
        
        initial
        begin
        r1_pos_F=5'd25;
        r2_pos_F=5'd3;
        r3_pos_F=5'd2;
        /*
        for(i=0;i<500;i=i+1)begin
        if(data_in==5'd25)begin
        data_in=5'd0;
        end
        else
        begin
        data_in=data_in+5'd1;
        end
        #5;
     
        end
        */
#1 data_in=5'd0;

#1 data_in=5'd1;

#1 data_in=5'd2;

#1 data_in=5'd3;

#1 data_in=5'd4;
#1 data_in=5'd5;
#1 data_in=5'd6;
#1 data_in=5'd7;
#1 data_in=5'd8;
#1 data_in=5'd9;
#1 data_in=5'd10;
#1 data_in=5'd11;
#1 data_in=5'd12;
#1 data_in=5'd13;
#1 data_in=5'd14;
#1 data_in=5'd15;
#1 data_in=5'd16;
#1 data_in=5'd17;
#1 data_in=5'd18;
#1 data_in=5'd19;
#1 data_in=5'd20;
#1 data_in=5'd21;
#1 data_in=5'd22;
#1 data_in=5'd23;
#1 data_in=5'd24;
#1 data_in=5'd25;
 end
        
endmodule
