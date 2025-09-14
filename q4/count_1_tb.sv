module count_1_tb;

  // Inputs
  logic [3:0] a;

  // Outputs
  logic [2:0] out;

  // complete
  // Instantiate the Unit Under Test (UUT)
  count_1 uut (
    .a(a),
    .out(out)
  );

  // Test stimulus
  initial begin
    // Test all possible 4-bit input combinations
    for (int i = 0; i < 16; i++) begin
      a = i;
      #10; // Wait 10 time units
    end
    $finish;
  end
endmodule
