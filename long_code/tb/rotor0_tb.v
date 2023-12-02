`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/11/30 17:34:47
// Design Name: reflector
// Module Name: reflector
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module RotorTestbench;

    reg[4:0] tb_data_in;
    reg tb_rotate;
    wire[4:0] tb_data_out;

    Rotor uut (
        .data_in(tb_data_in),
        .rotate(tb_rotate),
        .data_out(tb_data_out)
    );

    initial begin

        tb_data_in = 0; 
        tb_rotate = 0;
        #10; 
        tb_data_in = 1; 
        #10; 
        tb_rotate = 1; 
        #10; 
        tb_data_in = 2; 
        #10; 
        tb_data_in = 2; 
        #10;
        $finish; 
    end

endmodule
