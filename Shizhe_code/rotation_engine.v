`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/11/30 19:17:11
// Design Name: rotation_engine
// Module Name: rotation_engine
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////
module rotation_engine(
    input rst,
    input [4:0]data_in,
    output reg [4:0] rotor1_pos, 
    output reg [4:0] rotor2_pos, 
    output reg [4:0] rotor3_pos
    );
    reg [14:0]setup;
    
    initial
    begin
    setup=15'd00000_00000_00000;
    end
    
    initial 
    begin
    rotor1_pos <= setup[14:10];
    rotor2_pos <= setup[9:5];
    rotor3_pos <= setup[4:0];
    end
    
always @ (data_in) 
begin
    if (rst) begin
        rotor1_pos <= setup[14:10];
        rotor2_pos <= setup[9:5];
        rotor3_pos <= setup[4:0];
    end 
    
    else 
    begin
        rotor1_pos = rotor1_pos + 5'd1; 
        if (rotor1_pos > 5'd25) 
        begin 
            rotor1_pos = 5'd0;
            rotor2_pos = rotor2_pos + 5'd1; 
            if (rotor2_pos > 5'd25) 
            begin 
                rotor2_pos = 5'd0;
                rotor3_pos = rotor3_pos + 5'd1; 
                if (rotor3_pos > 5'd25) 
                begin 
                    rotor3_pos= 5'd0;
                end
            end
        end
    end
end

endmodule

