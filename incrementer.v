`timescale 1ns / 1ps

module incrementer(
                    input clk,
                    input rst,
                    input [31:0] pcin,
                    output reg [31:0] pcout
                );
    
                always @(posedge clk) begin
                    if (rst) 
                        pcout <= 32'd0;
                    else     
                        pcout <= pcin + 32'd1;
                end
                
endmodule