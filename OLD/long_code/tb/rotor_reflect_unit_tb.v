`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen, and modified by Mayra Teixeira
// Create Date: 2023/12/1 20:18:52
// Design Name: rotor0_reflect_unit_tb
// Module Name: rotor0_reflect_unit_tb
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module testbench_rotor0_reflect_unit;

    reg [4:0] tb_data_in;
    reg [4:0] tb_position;
    wire [4:0] tb_data_out;

    rotor0_reflect_unit unit_instance(
        .data_in(tb_data_in),
        .position(tb_position),
        .data_out(tb_data_out),
        .done_out(done_out)
    );


    initial begin
     
        tb_data_in = 5'd0;  
        tb_position = 5'd0; 

        #10; 
        tb_data_in = 5'd4;
        tb_position = 5'd1; 


        #10; 
        tb_data_in = 5'd10; 
        tb_position = 5'd2; 
        
        #10;
        tb_data_in = 5'd4;
        tb_position = 5'd3;
        
        #10;
        tb_data_in = 5'd5;  
        tb_position = 5'd0; 
        
        #10;
        tb_data_in = 5'd5;  
        tb_position = 5'd1;
        
        #10;
        tb_data_in = 5'd17;  
        tb_position = 5'd2;
        
        #10;
        tb_data_in = 5'd16;  
        tb_position = 5'd3;
        
        // adding couple of testbecnhes....
        #10;
        tb_data_in = 5'd11;  
        tb_position = 5'd0;
        #10 
        tb_data_in = 5'd22;  
        tb_position = 5'd3;
        #10
        tb_data_in = 5'd20;  
        tb_position = 5'd3;
        #10
        tb_data_in = 5'd8;  
        tb_position = 5'd3;
        #10
        tb_data_in = 5'd13;  
        tb_position = 5'd3;
        #10
        tb_data_in = 5'd18;  
        tb_position = 5'd2;
         
        
        #10;
        $finish;
    end

endmodule


