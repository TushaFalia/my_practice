module dynamic_array;

longint total;
int dynamic_array []; // Declare a dynamic array (unsized)
int sorted_array [$]; // Declare another dynamic array for sorting
int rsorted_array [$]; // Declare another dynamic array for reverse sorting
//int reversed_array [$]; // Declare another dynamic array for reverse order //XSIM error VIVADO limitation.
int max_value [$]; // Variable to hold the maximum value in the array
int min_value [$]; // Variable to hold the minimum value in the array
int unique_values [$]; // Declare another dynamic array for unique values

initial begin
  dynamic_array = new[10]; // Allocate initial buffer for 10 packets
  foreach (dynamic_array[i]) dynamic_array[i] = $random; // Fill with random data

  $display("Initial buffer size: %0d", dynamic_array.size()); // Size: 10

  dynamic_array = new[20] (dynamic_array); // Resize to 20, copy first 10 elements
  $display("Resized buffer size: %0d", dynamic_array.size()); // Size: 20

  dynamic_array.delete(); // Deallocate memory, size becomes 0
  $display("Buffer size after delete: %0d", dynamic_array.size()); // Size: 0

  dynamic_array = new[6] (dynamic_array); // new allocation with size 6.
  $display("Resized buffer size: %0d", dynamic_array.size()); // Size: 6
  
  foreach (dynamic_array[i]) dynamic_array[i] = $urandom_range(1, 100); // Fill with random data between 1 and 100
  $display("The array becomes: %p", dynamic_array);

  total = dynamic_array.sum(); // Sum of all elements in the array
 // sorted_array = dynamic_array.sort(); // Sort the array in ascending order
  sorted_array = dynamic_array; // Copy the original array to sorted_array for display purposes.
  sorted_array.sort(); // Sort the array in ascending order. 

  rsorted_array = dynamic_array; // Copy the original array to rsorted_array for display purposes.
  rsorted_array.rsort(); // Sort the array in descending order.

 // reversed_array = dynamic_array; // Create a reversed version of the original array. //XSIM error VIVADO limitation.
 // reversed_array.reverse(); // Reverse the array. //XSIM error VIVADO limitation.
  max_value = dynamic_array; // Find the maximum value in the array.
  max_value.max(); // Find and display the maximum value in the array.

  min_value = dynamic_array; // Find the minimum value in the array.
  min_value.min(); // Find and display the minimum value in the array. min is not working as expected.

  unique_values = dynamic_array.unique(); // Find the unique values in the array. not working as expected.
  //unique_values.unique(); // Find and display the unique values in the array.



  $display("Total sum of elements in the array: %0d", total);
  $display("This is sorted dynamic array: %p", sorted_array);
  $display("This is reverse sorted dynamic array: %p", rsorted_array);
  //$display("This is reversed dynamic array: %p", reversed_array); //XSIM error VIVADO limitation.
  $display("Maximum value in the array: %p", max_value[0]); // Find and display the maximum value in the array.
  $display("Minimum value in the array: %p", min_value); // Find and display the minimum value in the array.
  $display("Unique values in the array: %p", unique_values); // Find and display the unique values in the array.
end

endmodule