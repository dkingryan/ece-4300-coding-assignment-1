`timescale 1ns / 1ps

module ifIdLatch(
                input clk,
                input rst,
                input [31:0] pc_in,
                input [31:0] instr_in,
                output reg [31:0] pc_out,
                output reg [31:0] instr_out
                );
                
                always @(posedge clk) begin
                    if (rst) begin
                        pc_out    <= 32'd0;
                        instr_out <= 32'd0;
                    end else begin
                        pc_out    <= pc_in;
                        instr_out <= instr_in;
                    end
                end
                
endmodule
