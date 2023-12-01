`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/11/30 19:17:11
// Design Name: rotation_engine
// Module Name: rotation_engine
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////


module rotation_engine(
    input [4:0] data_in,
    input rst,
    input [11:0] setup,//11:8 rotor1, 7:4 rotor2, 3:0 rotor3
    output reg [4:0] rotor1_pos, 
    output reg [4:0] rotor2_pos, 
    output reg [4:0] rotor3_pos 
    
    );
    
    initial 
    begin
    rotor1_pos = setup[11:8];
    rotor2_pos = setup[7:4];
    rotor3_pos = setup[3:0];
    end

always @ (data_in or rst) 
begin
    if (rst) begin
        rotor1_pos <= setup[11:8];
        rotor2_pos <= setup[7:4];
        rotor3_pos <= setup[3:0];
    end 
    
    else 
    begin
        rotor1_pos <= rotor1_pos + 1; 
        if (rotor1_pos > 25) 
        begin 
            rotor1_pos <= 0;
            rotor2_pos <= rotor2_pos + 1; 
            if (rotor2_pos > 25) 
            begin 
                rotor2_pos <= 0;
                rotor3_pos <= rotor3_pos + 1; 
                if (rotor3_pos > 25) 
                begin 
                    rotor3_pos <= 0;
                end
            end
        end
    end
end

endmodule

