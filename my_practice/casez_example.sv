module casez_example;
  logic [3:0] instruction_opcode = 4'b10xz; // 'x' and 'z' represent don't-cares

  initial begin
    casez (instruction_opcode)
      4'b1??1: $display("Instruction Type A (bits 3 and 0 are significant)"); // '?' matches 'x' or 'z'
      4'b10??: $display("Instruction Type B (bits 3 and 2 are significant)"); // Matches: opcode '10xz' fits '10??'
      default: $display("Unknown Instruction Type");
    endcase
  end
endmodule 