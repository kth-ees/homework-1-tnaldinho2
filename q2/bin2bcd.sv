module bin2bcd (
  input logic [3:0] binary,
  output logic [3:0] bcd,
  output logic carry
);
  // Binary to BCD converter using 16-to-1 multiplexers
  // For binary inputs 0-9: BCD output equals binary input, carry = 0
  // For binary inputs 10-15: BCD output = binary - 10, carry = 1
  // This implements the double dabble algorithm for single digit conversion
  
  // 16-to-1 multiplexer for BCD output
  always_comb begin
    case (binary)
      4'b0000: bcd = 4'b0000; // 0 -> 0
      4'b0001: bcd = 4'b0001; // 1 -> 1
      4'b0010: bcd = 4'b0010; // 2 -> 2
      4'b0011: bcd = 4'b0011; // 3 -> 3
      4'b0100: bcd = 4'b0100; // 4 -> 4
      4'b0101: bcd = 4'b0101; // 5 -> 5
      4'b0110: bcd = 4'b0110; // 6 -> 6
      4'b0111: bcd = 4'b0111; // 7 -> 7
      4'b1000: bcd = 4'b1000; // 8 -> 8
      4'b1001: bcd = 4'b1001; // 9 -> 9
      4'b1010: bcd = 4'b0000; // 10 -> 0 (carry = 1)
      4'b1011: bcd = 4'b0001; // 11 -> 1 (carry = 1)
      4'b1100: bcd = 4'b0010; // 12 -> 2 (carry = 1)
      4'b1101: bcd = 4'b0011; // 13 -> 3 (carry = 1)
      4'b1110: bcd = 4'b0100; // 14 -> 4 (carry = 1)
      4'b1111: bcd = 4'b0101; // 15 -> 5 (carry = 1)
    endcase
  end
  
  // 16-to-1 multiplexer for carry output
  always_comb begin
    case (binary)
      4'b0000: carry = 1'b0; // 0-9: no carry
      4'b0001: carry = 1'b0;
      4'b0010: carry = 1'b0;
      4'b0011: carry = 1'b0;
      4'b0100: carry = 1'b0;
      4'b0101: carry = 1'b0;
      4'b0110: carry = 1'b0;
      4'b0111: carry = 1'b0;
      4'b1000: carry = 1'b0;
      4'b1001: carry = 1'b0;
      4'b1010: carry = 1'b1; // 10-15: carry = 1
      4'b1011: carry = 1'b1;
      4'b1100: carry = 1'b1;
      4'b1101: carry = 1'b1;
      4'b1110: carry = 1'b1;
      4'b1111: carry = 1'b1;
    endcase
  end
  
endmodule
