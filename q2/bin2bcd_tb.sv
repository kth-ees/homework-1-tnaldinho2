module bin2bcd_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [3:0] bcd;
  logic carry;

  // Complete your testbench here

  // Instantiate the encoder module
  bin2bcd uut (
    .binary(binary),
    .bcd(bcd),
    .carry(carry)
  );

  initial begin
    // Test all possible binary inputs
    for (int i = 0; i < 16; i++) begin
        binary = i;
        #10; // Wait for 10 time units
    end
    $finish;
  end
endmodule
