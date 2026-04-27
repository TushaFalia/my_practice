module new_array_2;

logic [2:0][15:0] array;  // 3x16-bit register file (48 bits total)

initial begin
  array = 64'h1234_5678_9ABC_DEF0; // Initialize as a contiguous bit vector
  $display("array value: %p",array);
  
end
  
endmodule // the code will truncate the h1234
