module newpackedarray;

logic [1:0][3:0] nibble_matrix = {4'h3, 4'h6, 4'h9, 4'hC};
  
  initial begin
    $display("elements are: %p",nibble_matrix);
  end
 

endmodule