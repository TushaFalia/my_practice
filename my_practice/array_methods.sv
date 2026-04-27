module array_methods;

reg [5:0][7:0] packed_array;   // Packed array of 6 integers
int unpacked_array [6];   // Array to hold 6 integer transactions
int scores [6] = '{95, 88, 76, 99, 82,99};
int sorted_scores [6];
int scores_size;
int rsorted_scores [6];
int reverse_scores [6];
int score_sum;
int score_min;
int score_max;
int unique_scores [6];
int find_indices [6];
int findfirst_index;
int findlast_index;
int reduction_operation_result;


initial begin

    unpacked_array = '{default:0}; // Initialize all elements to 0
    unpacked_array = scores;    // Access and modify individual elements
    packed_array = '{95, 88, 76, 99, 82,99}; // Assigning unpacked array to packed array (truncation may occur if sizes differ)

    // Unpacked array methods
    sorted_scores = unpacked_array.sort(); // Sort in ascending order
    scores_size = unpacked_array.size(); // Get the size of the array
    rsorted_scores = unpacked_array.rsort(); // Sort in descending order
    reverse_scores = unpacked_array.reverse(); // Reverse the order of elements
    score_sum = unpacked_array.sum(); // Calculate the sum of all elements
    score_min = unpacked_array.min(); // Find the minimum value
    score_max = unpacked_array.max(); // Find the maximum value
    unique_scores = unpacked_array.unique(); // Get unique elements
    find_indices = unpacked_array.find(x) with (x>90); // Find indices of elements greater than 90
    findfirst_index = unpacked_array.find_first(x) with (x>90); // Find the first index of an element greater than 90
    findlast_index = unpacked_array.find_last(x) with (x>90); // Find the last index of an element greater than 90
    reduction_operation_result = unpacked_array.reduce(); // Perform a reduction operation (sum in this case) ** this line shows an error when "*" inserted inside first bracket.

    #20;

    // Packed array methods
    sorted_scores = packed_array.sort(); // Sort in ascending order
    scores_size = packed_array.size(); // Get the size of the array
    rsorted_scores = packed_array.rsort(); // Sort in descending order  
    reverse_scores = packed_array.reverse(); // Reverse the order of elements
    score_sum = packed_array.sum(); // Calculate the sum of all elements
    score_min = packed_array.min(); // Find the minimum value
    score_max = packed_array.max(); // Find the maximum value
    unique_scores = packed_array.unique(); // Get unique elements
    find_indices = packed_array.find(x) with (x>90); // Find indices of elements greater than 90
    findfirst_index = packed_array.find_first(x) with (x>90); // Find the first index of an element greater than 90
    findlast_index = packed_array.find_last(x) with (x>90); // Find the last index of an element greater than 90
   // reduction_operation_result = packed_array.reduce(); // Perform a reduction operation (sum in this case) packed array does not have this method.    

    $monitor("Unpacked Array: %p, \n Packed Array: %p", unpacked_array, packed_array);
    $monitor("Sorted Scores: %p, \n Size: %0d, Reverse Sorted Scores: %p, Reversed Scores: %p", sorted_scores, scores_size, rsorted_scores, reverse_scores);
    $monitor("Score Min: %0d, Score Max: %0d, Score Sum: %0d", score_min, score_max, score_sum);
    $monitor("Unique Scores: %p, Find Indices: %p", unique_scores, find_indices);
    $monitor("Find First Index: %0d, Find Last Index: %0d", findfirst_index, findlast_index);
    $monitor("Reduction Operation Result: %0d", reduction_operation_result);

end

endmodule