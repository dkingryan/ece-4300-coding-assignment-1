`timescale 1ns / 1ps

module incrementer(
                    input clk,
                    input rst,
                    input [31:0] pcin,
                    output [31:0] pcout
                );
                
                assign pcout = pcin + 32'd1;
                  
endmodule