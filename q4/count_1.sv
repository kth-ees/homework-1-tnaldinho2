module count_1 (
  input logic [3:0] a,
  output logic [2:0] out
);
  always_comb begin
    out = a[0] + a[1] + a[2] + a[3];
  end
endmodule
