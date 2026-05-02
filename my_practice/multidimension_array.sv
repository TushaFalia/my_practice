module multidimension_array;

logic [127:0][7:0] my_array [8][64][32];

initial begin
    // Initialize the multidimensional array with some values
    for (int i = 0; i < 8; i++) begin
        for (int j = 0; j < 64; j++) begin
            for (int k = 0; k < 32; k++) begin
                my_array[i][j][k] = {i, j, k}; // Example initialization
            end
        end
    end
    //$display("Multidimensional array initialized = %p", my_array); 
    $display("Print specific array element = %p\n", my_array[2][5][17]); // Example of accessing a specific element
    $display("Print specific array element = %p\n", my_array[2][5][17][122][7:0]);

end

endmodule