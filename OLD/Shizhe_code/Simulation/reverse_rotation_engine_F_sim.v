`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 10:50:58 PM
// Design Name: 
// Module Name: reverse_rotation_engine_F_sim
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

module reverse_rotation_engine_F_sim(

    );
       reg rst;
       reg [5:0]data_in;
       wire [5:0]r1_out;
       wire [5:0]r2_out;
       wire [5:0]r3_out;
      
     reg [5:0]r1_pos_F;
     reg [5:0]r2_pos_F;
     reg [5:0]r3_pos_F;
       integer i;
       
       initial
       begin
       r1_pos_F=6'd3;
       r2_pos_F=6'd1;
       r3_pos_F=6'd15;
       rst=1'd0;
       data_in=6'd0;
       end
 
reverse_rotation_engine rreF_test(.data_in(data_in),
.r1_pos(r1_pos_F),
.r2_pos(r2_pos_F),
.r3_pos(r3_pos_F),   
.rst(rst),
.r1_out(r1_out),
.r2_out(r2_out),
.r3_out(r3_out));
        
        initial
        begin
        //rst=1'd0;
        
        for(i=6'd0;i<500;i=i+1)begin
        
        if(data_in>6'd25)begin
        data_in=6'd0;
        end
        else
        begin
        data_in=data_in+6'd1;
        #1;
        end
        
        end
        
        
        /*
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
#1 data_in=5'd25;#1 data_in=5'd0;
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
#1 data_in=5'd25;#1 data_in=5'd0;
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
#1 data_in=5'd25;#1 data_in=5'd0;
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
*/

        end
        endmodule
/*        
data_in=5'd0;

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
*/
  

