`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Long Chen
// Create Date: 2023/11/30 19:18:12
// Design Name: enigma_top
// Module Name:  enigma_top
// Project Name: ENIGMA551
//////////////////////////////////////////////////////////////////////////////////


module enigma_top(
    input [4:0] main_data_in,
    input [14:0] setup,
    input rst,
    output [4:0] final_data_out,
    output final_done_out
);
wire [4:0] position0;
wire [4:0] position1;
wire [4:0] position2;

rotor_reflect_unit rotor_unit(
    .data_in(main_data_in),
    .position0(position0),
    .position1(position1),
    .position2(position2),    
    .data_out(final_data_out),
    .done_out(final_done_out)
);

rotation_engine rot_engine(
    .data_in(main_data_in),
    .data_out(final_data_out),
    .rst(rst),
    .setup(setup),
    .rotor1_pos(position0),
    .rotor2_pos(position1),
    .rotor3_pos(position2)
);

endmodule