module associative_arrays;

string associative_arrays [string]; // Associative array with string keys and string values
string key; //key for what??
initial begin
  associative_arrays["E100"] = "Invalid Opcode";
  associative_arrays["W201"] = "Memory Access Violation";

  if (associative_arrays.exists("E100")) begin
    $display("Error E100: %s", associative_arrays["E100"]); // Access by key
  end

  $display("Number of error messages: %0d", associative_arrays.num()); // Count entries

  
  if (associative_arrays.first(key)) begin // Iterate through keys
    $display("First error key: %s, message: %s", key, associative_arrays[key]);
    while (associative_arrays.next(key)) begin
      $display("Next error key: %s, message: %s", key, associative_arrays[key]);
    end
  end
end 
endmodule