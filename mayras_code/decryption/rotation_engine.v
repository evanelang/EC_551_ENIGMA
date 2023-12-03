`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/11/30 19:17:11
// Design Name: rotation_engine
// Module Name: rotation_engine
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////


module rotation_engine(
    input [2:0] done_out,//each rotor would have its own done_out,remember to pull it down in the rotor module at first place
    input rst,
    input [14:0] setup,//14:10 rotor1, 9:5 rotor2, 4:0 rotor3
    output reg [4:0] rotor1_pos, 
    output reg [4:0] rotor2_pos, 
    output reg [4:0] rotor3_pos,
    output reg done_rst 
    );
    
    initial 
    begin
    rotor1_pos = setup[14:10];
    rotor2_pos = setup[9:5];
    rotor3_pos = setup[4:0];
    end
    
wire done;
assign done = done_out[2] & done_out[1] & done_out[0];//move when all rotors are done

always @ (done or rst) 
begin
    if (rst) begin
        rotor1_pos <= setup[14:10];
        rotor2_pos <= setup[9:5];
        rotor3_pos <= setup[4:0];
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

