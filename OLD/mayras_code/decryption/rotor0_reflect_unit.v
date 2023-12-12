`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/12/1 20:17:43
// Design Name: rotor0_reflect_unit
// Module Name: rotor0_reflect_unit
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////

module rotor0_reflect_unit(
    input [4:0] data_in,
    input [4:0] position,
    output [4:0] data_out,
    output done_out
    );
    
    wire [4:0] to_reflector;
    wire [4:0] from_reflector;
    rotor0_top rotor_top_instance(
    .data_in(data_in),
    .data_reverse_in(from_reflector),
    .position(position),
    .data_forward(to_reflector), 
    .data_out(data_out),
    .done_out(done_out)
);
    
    reflector refl(
    .in(to_reflector),
    .out(from_reflector)
);
    
endmodule