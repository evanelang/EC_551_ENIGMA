`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/12/1 20:03:31
// Design Name: rotor_top
// Module Name: rotor_top
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////

module rotor0_top(
    input [4:0] data_in,
    input [4:0] data_reverse_in,//coming back from reflector and previous rotor
    input [4:0] position,
    output [4:0] data_forward,//goes to next rotor
    output [4:0] data_out,
    output done_out
);

wire done_for;
rotor0_forward rotor_forward(
    .data_in(data_in),
    .position(position),
    .data_out(data_forward),
    .done_out(done_for)
);

wire done_rev;
rotor0_reverse rotor_reverse(
    .data_in(data_reverse_in),
    .position(position),
    .data_out(data_out),
    .done_out(done_rev)
);

assign done_out = done_for & done_rev;

endmodule
