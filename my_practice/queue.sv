module queue;

// Simple queue example using integers
int transaction_q[$]; // Queue of transaction IDs "is $ sign means variable?"
int first_txn; // Variable to hold dequeued transaction ID

initial begin
  transaction_q.push_back(10); // Add to back
  transaction_q.push_back(20);

  if (transaction_q.size() > 0) begin
    first_txn = transaction_q.pop_front(); // Remove from front
    $display("Dequeued transaction ID: %0d", first_txn);
    $display("Queue size: %0d", transaction_q.size());
  end

  transaction_q.push_front(5); // Add to front
  $display("Queue size: %0d", transaction_q.size()); // Check queue size
end


endmodule