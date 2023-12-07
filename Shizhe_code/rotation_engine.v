`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen and revised by Shizhe
// Create Date: 
// Design Name: rotation_engine
// Module Name: rotation_engine
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////
module rotation_engine(
    input rst,
    input [5:0]data_in,
    output reg [5:0] rotor1_pos, 
    output reg [5:0] rotor2_pos, 
    output reg [5:0] rotor3_pos
    );
  
    
    initial 
    begin
    rotor1_pos <= 6'd000000;
    rotor2_pos <= 6'd000000;
    rotor3_pos <= 6'd000000;
    end
    /*
    always@(rst)begin
    rotor1_pos <= 6'd000000;
    rotor2_pos <= 6'd000000;
    rotor3_pos <= 6'd000000;
    end
    */
/*
always @ (data_in) 
begin
if(rotor1_pos==6'd0)begin
rotor1_pos = rotor1_pos + 6'd1; 
if (rotor1_pos > 6'd26) 
begin 
rotor1_pos = 6'd1;
rotor2_pos = rotor2_pos + 6'd1; 
            if (rotor2_pos > 6'd26) 
            begin 
                rotor2_pos = 6'd1;
                rotor3_pos = rotor3_pos + 6'd1; 
                if (rotor3_pos > 6'd26) 
                begin 
                    rotor3_pos= 6'd1;
                end
            end
        end
        
end
end
*/

always@(data_in)begin
if(rotor2_pos==6'd0&&rotor3_pos==6'd0)begin
rotor1_pos=rotor1_pos+6'd1;
if(rotor1_pos>6'd25)begin
rotor1_pos=6'd0;
rotor2_pos=rotor2_pos+6'd1;
end
end
else
if(rotor1_pos>=6'd0&&rotor2_pos>=6'd0)begin
rotor1_pos=rotor1_pos+6'd1;
  if(rotor1_pos>6'd25)begin
  rotor1_pos=6'd0;
  rotor2_pos=rotor2_pos+6'd1;
  if(rotor2_pos>6'd25)begin
  rotor2_pos=6'd0;
  rotor3_pos=rotor3_pos+6'd1;
    if(rotor3_pos>6'd25)begin
    rotor1_pos=6'd0;
    rotor2_pos=6'd0;
    rotor3_pos=6'd0;
    end
  end
  end
end




end

endmodule

