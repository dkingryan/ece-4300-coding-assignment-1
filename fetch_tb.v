`timescale 1ns / 1ps

module fetch_tb;

  // Inputs
  reg clk;
  reg rst;
  reg ex_mem_pc_src;
  reg [31:0] ex_mem_npc;

  // Outputs
  wire [31:0] if_id_instr;
  wire [31:0] if_id_npc;

  // Instantiate fetch
  fetch uut (
    .clk(clk),
    .rst(rst),
    .ex_mem_pc_src(ex_mem_pc_src),
    .ex_mem_npc(ex_mem_npc),
    .if_id_instr(if_id_instr),
    .if_id_npc(if_id_npc)
  );

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    rst = 1; ex_mem_pc_src = 0; ex_mem_npc = 32'h00000000;

    #20; rst = 0;

    #105; ex_mem_pc_src = 1; ex_mem_npc = 32'h00000004;
    
    #10; ex_mem_pc_src = 0;
    
    #100;
    
    $finish;
    
  end

endmodule
