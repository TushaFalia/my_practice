module newpackedarray;

logic [1:0][3:0] nibble_matrix = {4'h3, 4'h6, 4'h9, 4'hC};
  
  initial begin
    $display("elements are: %p",nibble_matrix); // 
  end
 

endmodule // here the printed output will show the truncated values of packed array
// the 9 and C (12) will be printed 
