module packed_array_example;

logic [7:0] data_byte;           // Packed 1D array (8 bits)
logic [3:0][7:0] byte_array_packed; // Packed 2D array (4 bytes, 32 bits total)

assign byte_array_packed = 32'b00010001_00100010_00110011_01000100; // Assign a 32-bit value


initial begin

$display("Byte 3 (packed): %d", byte_array_packed[0][6:2]); // Access as bit vector

end

endmodule


