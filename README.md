# Embedded systems final assignment.
This repository is the repository for my final assignment for the module embedded systems that is part of the minor Smart Embedded systems.
## Introduction. ⌨️
I recently watched a series of videos on youtube about building your own 8-bit CPU on breadboards. It was really interesting watching the videos and really learning how a CPU in essence works. The videos are by [Ben Eater](https://eater.net/8bit). Building the CPU myself on breadboard seemed a little costly and ambitious. I decided I want to remake the CPU in vhdl as a final assignment for Embedded System.

The CPU contains an ALU that can add and subtract. Connected to the ALU are the A and B registers. There also is an output register as a general purpose register. An instruction register is used to hold the current instruction being ran by the CPU. RAM is used to store the program and store variables. In order to control the ram a memory addres register (MAR) is used. 

The decoding of the instructions is done using combinational logic. This logic is done using ROM. The first 4 bits of the instruction describes the function of the instruction and the last 4 bits are used to give a value to an instruction. With this system, 16 different instructions are supported. In order to make conditional jumping in the CPU's program possible, a flags register containing a zero flag and carry flag is used.

The goal is to be able to completely simulate the CPU and, if possible, make it run on a DE10-nano board. I will try to make the CPU in the same order as the video series on Youtube. In this repository I will describe my findings and place the VHDL code.

I will try to remake the system as much the same as Ben Eaters system. There can be some changes in naming and logic because it makes more sense to me or is easier to implement in VHDL.

## CPU Instructions.

## Orientation.
After watchin the video series, I first started implementing the CPU in Logisim. Logisim is a program that can simulatie digital circuits. I made modules for each of the systems in the CPU and then combined them together to form the complete CPU. Using logisim, I will first describe each module in detail. After that, we will go to the VHDL implementation.