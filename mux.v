`timescale 1ns / 1ps

module mux(
           input clk,
           input rst,
           output [31:0] y,
           input [31:0] a_true,
           input [31:0] b_false,
           input sel
    );
           assign y = sel ? a_true : b_false;
    
endmodule