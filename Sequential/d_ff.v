module d_ff(d, clk, rst, q, qo);
  input d, clk, rst;
  output reg q, qo;
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      q  <= 1'b0;
      qo <= 1'b1;
    end
    else begin
      q  <= d;
      qo <= ~d;
    end
  end

endmodule
