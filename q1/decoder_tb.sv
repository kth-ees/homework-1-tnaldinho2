module decoder_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [15:0] one_hot;

  // Instantiate the decoder module
  decoder uut (
    .binary(binary),
    .one_hot(one_hot)
  );

  // Complete your testbench here
  initial begin
    // Test all possible binary inputs
    for (int i = 0; i < 16; i++) begin
        binary = i;
        #10; // Wait for 10 time units
    end
    $finish;
  end
endmodule
