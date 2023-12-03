`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: BU
// Engineer: Mayra Teixeira
// 
// Create Date: 12/02/2023 08:13:36 PM
// Design Name: Encryption machine
// Module Name: enigma_decrypt
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: design a decryption module to decrypt the system. it takes the encypt data as input and passes it trough the rotors then trough the reflector and trough the foward path of rotors.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module enigma_decrypt(
    input [4:0] encrypted_data_in,
    input [14:0] setup_positions,
    output [4:0] decrypted_data_out
);

// Intermediate wires for connections between modules
wire [4:0] to_rotor2_reverse;
wire [4:0] from_rotor2_reverse_to_reflector;
wire [4:0] from_reflector_to_rotor0_forward;
wire [4:0] to_rotor1_reverse;
wire [4:0] from_rotor1_reverse;
wire [4:0] to_rotor0_reverse;
wire [4:0] from_rotor0_reverse;

// Instantiate the reverse path through the rotors
rotor2_reverse rotor2_rev_inst(
    .data_in(encrypted_data_in),
    .position(setup_positions[4:0]), // Assuming rotor2 position is the LSBs
    .data_out(to_rotor1_reverse)
);

rotor1_reverse rotor1_rev_inst(
    .data_in(to_rotor1_reverse),
    .position(setup_positions[9:5]), // Assuming rotor1 position is the middle bits
    .data_out(to_rotor0_reverse)
);

rotor0_reverse rotor0_rev_inst(
    .data_in(to_rotor0_reverse),
    .position(setup_positions[14:10]), // Assuming rotor0 position is the MSBs
    .data_out(from_rotor0_reverse_to_reflector)
);

// Instantiate the reflector
reflector reflector_inst(
    .in(from_rotor0_reverse_to_reflector),
    .out(from_reflector_to_rotor0_forward)
);

// Instantiate the forward path through the rotors
rotor0_forward rotor0_fwd_inst(
    .data_in(from_reflector_to_rotor0_forward),
    .position(setup_positions[14:10]),
    .data_out(from_rotor0_reverse)
);

rotor1_forward rotor1_fwd_inst(
    .data_in(from_rotor0_reverse),
    .position(setup_positions[9:5]),
    .data_out(from_rotor1_reverse)
);

rotor2_forward rotor2_fwd_inst(
    .data_in(from_rotor1_reverse),
    .position(setup_positions[4:0]),
    .data_out(decrypted_data_out)
);

endmodule

