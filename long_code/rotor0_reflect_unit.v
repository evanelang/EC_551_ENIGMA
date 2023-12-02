`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/12/1 20:17:43
// Design Name: rotor0_reflect_unit
// Module Name: rotor0_reflect_unit
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////

module rotor_reflect_unit(
    input [4:0] data_in,
    input [4:0] position0,
    input [4:0] position1,
    input [4:0] position2,
    output [4:0] data_out,
    output done_out
    );
    
    wire [4:0] rotor0_for;
    wire [4:0] rotor0_rev;
    rotor0_top rotor0_top_instance(
    .data_in(data_in),
    .data_reverse_in(rotor0_rev),
    .position(position0),
    .data_forward(rotor0_for), 
    .data_out(data_out),
    .done_out(done_out)
);
    
    wire [4:0] rotor1_for;
    wire [4:0] rotor1_rev;
    rotor1_top rotor1_top_instance(
    .data_in(rotor0_for),
    .data_reverse_in(rotor1_rev),
    .position(position1),
    .data_forward(rotor1_for), 
    .data_out(rotor0_rev),
    .done_out(done_out)
);
    
    
    wire [4:0] to_reflector;
    wire [4:0] from_reflector;
    rotor2_top rotor2_top_instance(
    .data_in(rotor1_for),
    .data_reverse_in(from_reflector),
    .position(position2),
    .data_forward(to_reflector), 
    .data_out(rotor1_rev),
    .done_out(done_out)
);
    
    reflector refl(
    .in(to_reflector),
    .out(from_reflector)
);
    
endmodule