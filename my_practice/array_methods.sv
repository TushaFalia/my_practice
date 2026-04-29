module array_methods; // these methods are for unpacked arrays, packed arrays do not have these methods.

reg [5:0][7:0] packed_array;   // Packed array of 6 integers, int integer, real can not be assigned to packed arrays.
int unpacked_array [6];   // Array to hold 6 integer transactions
int scores [6] = '{95, 88, 76, 99, 82,99};
int sorted_scores [6];
//reg sorted_packed_scores [6];
int rsorted_scores [6];
int reverse_scores [6];
int score_sum;
int score_min [$];
int score_max [$]; 
int unique_scores [$];
int find_indices [$]; // returns a value
int find_indices2 [$]; // returns a queue of indices
int findfirst_element [$]; // returns a  queue
int findlast_element [$]; // returns a  queue    
//int reduction_operation_result;
//int scores_size;


initial begin

    unpacked_array = '{default:0}; // Initialize all elements to 0
    unpacked_array = scores;    // Access and modify individual elements
    packed_array = '{95, 88, 76, 99, 82,99}; 

    // Unpacked array methods
    sorted_scores = unpacked_array; // Sort in ascending order
    sorted_scores.sort(); // Sort in ascending order
    rsorted_scores = unpacked_array; // Sort in descending order
    rsorted_scores.rsort(); // Sort in descending order 
    reverse_scores = unpacked_array; // Reverse the order of elements
    reverse_scores.reverse(); // Reverse the order of elements 
    score_sum = unpacked_array.sum(); // Calculate the sum of all elements 
    score_min = unpacked_array.min(); // Find the minimum value
    score_max = unpacked_array.max(); // Find the maximum value
    unique_scores = unpacked_array.unique(); // Get unique elements
    find_indices = unpacked_array.find(x) with (x>90); // Find values of elements greater than 90
    find_indices2 = unpacked_array.find_index(x) with (x>90); // Find indices of elements greater than 90
    findfirst_element = unpacked_array.find_first(x) with (x>90); // Find the first index of an element greater than 90
    findlast_element = unpacked_array.find_last(x) with (x>90); // Find the last index of an element greater than 90
    //reduction_operation_result = unpacked_array.reduce(); // Perform a reduction operation (sum in this case) ** this line shows an error when "*" inserted inside first bracket.
   // scores_size = unpacked_array.size(); // showing error 
    #20;

    // Packed array methods cannot be run beacuse all of this methods are for unpacked arrays.
    //sorted_packed_scores = packed_array; // Sort in ascending order
    //sorted_packed_scores.sort(); // Get the size of the array
   // rsorted_scores = packed_array.rsort(); // Sort in descending order  
    //reverse_scores = packed_array.reverse(); // Reverse the order of elements
    //score_sum = packed_array.sum(); // Calculate the sum of all elements
    //score_min = packed_array.min(); // Find the minimum value
    //score_max = packed_array.max(); // Find the maximum value
    //unique_scores = packed_array.unique(); // Get unique elements
    //find_indices = packed_array.find(x) with (x>90); // Find indices of elements greater than 90
    //findfirst_index = packed_array.find_first(x) with (x>90); // Find the first index of an element greater than 90
    //findlast_index = packed_array.find_last(x) with (x>90); // Find the last index of an element greater than 90
   // reduction_operation_result = packed_array.reduce(); // Perform a reduction operation (sum in this case) packed array does not have this method.  */  

    $monitor("Unpacked Array: %p, \n Packed Array: %p \n", unpacked_array, packed_array);
    $monitor("Sorted Scores: %p,\n Reverse Sorted Scores: %p,\n Reversed Scores: %p \n", sorted_scores, rsorted_scores, reverse_scores);
    $monitor("Score Min: %p, Score Max: %p, Score Sum: %0d \n", score_min, score_max, score_sum);
    $monitor("Unique Scores: %p, Find Indices: %p, Find Indices2: %p \n", unique_scores, find_indices, find_indices2);
    $monitor("Find First Element: %p, Find Last Element: %p \n", findfirst_element, findlast_element);
    //$monitor("Reduction Operation Result: %0d", reduction_operation_result);
    //J$monitor("Scores Size: %p \n", scores_size);

end

endmodule