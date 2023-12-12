# EC_551_ENIGMA
## Overview
This project involves replicating the Enigma machine's technology on a Field-Programmable Gate Array (FPGA). The goal is to achieve high-quality, compact encryption technology.
We used an Artix-7 Bays3 FPGA Development board for implementation, using the 7-segment display to present the rotation of rotors during input, and UART communication protocal
to enable the input from Python interface.

## Components
### 1. Enigma Architecture
Key Components: Key, plugboard, rotors, reflector, lampboard.
Implementation: Translating these components to an FPGA framework.
### 2. FPGA Implementation
Rotation Engine: Manages dynamics for all rotors.
Rotor Position: Mimics the original Enigma's rotor movements.
Plugboard: Implemented digitally for encryption/decryption.

## Challenges
Encryption and decryption process intricacies.
Synchronizing rotors effectively.
Synchronizing and debugging on Combinational Circuit 

## Achievements
Successfully operational Enigma machine on FPGA.
Development of a Python master program for control and management.

## Future Work
Integrating an actual VGA display for improved user interaction.

# How to use
- Final
  |_  ENIGMA_FULL.zip    The whole Vivado Project
  
  |_  UART_FINAL.py      The Python interface for UART communication between PC and FPGA. A new window would pop up on running the code, and simply type in whatever needed to
                         be sent. This Python code is specifically wrote for Windows system, please connect the programmed FPGA board to one of the USB on your computer before
                         start the program, or the program won't be able to find the COM port. If issue still occurs, please check "*Device Manager*" and refer to "*Serial*" to 
                         see if the board is assigned to any port other than "*COM4*", and change *Line 99* to the corresponding name.
  
  |_  uart_top.bit       The bitstream file to program the Bays3 Board
- OLD                    
  |_  long_code          These are all the files we had done during the development process
       
  |_  Shizhe_code
  
  |_  mayras_code
  
  |_  verilog_src/uart
  
  |_  verilog_tb/uart
  
  |_  EGNIMA551.zip
  
  |_  Evan_ENIGMA_UART.zip
  
  |_  inputstart.py
  
  |_  uart.py
  
  |_  uart2.zip
  
  |_  uart_evan.py                


## Link to final demo video: 
https://drive.google.com/file/d/1xMnt_nc_mSuYF8l5wpbqQAkyDTfwIfwO/view?usp=drive_link
