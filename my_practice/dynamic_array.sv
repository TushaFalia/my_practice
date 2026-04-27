module dynamic_array;

int total;
int dynamic_array []; // Declare a dynamic array (unsized)
int sorted_array []; // Declare another dynamic array for sorting

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
  
  foreach (dynamic_array[i]) dynamic_array[i] = $random;
  $display("The array becomes: %p", dynamic_array);

  total = dynamic_array.sum(); // Sum of all elements in the array
 // sorted_array = dynamic_array.sort(); // Sort the array in ascending order

 // $display("This is sorted dynamic array: %p", dynamic_array.sort());
//$display("This is sorted dynamic array: %p", dynamic_array.rsort());
//$display("This is sorted dynamic array: %p", dynamic_array.reverse());
  $display("Total sum of elements in the array: %0d", total);
//  $display("Sorted array: %p", sorted_array);
end

endmodule