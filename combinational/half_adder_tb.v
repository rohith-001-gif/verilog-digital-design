module half_adder_tb;
reg a_tb, b_tb;
wire s_tb, c_tb;
half_adder dut (
    .a(a_tb),
    .b(b_tb),
    .s(s_tb),
    .c(c_tb));
initial begin
    $display("a b | s c");
    $display("----|----");
    a_tb = 0; b_tb = 0; #10;
    $display("%b %b | %b %b", a_tb, b_tb, s_tb, c_tb);
    a_tb = 0; b_tb = 1; #10;
    $display("%b %b | %b %b", a_tb, b_tb, s_tb, c_tb);
    a_tb = 1; b_tb = 0; #10;
    $display("%b %b | %b %b", a_tb, b_tb, s_tb, c_tb);
    a_tb = 1; b_tb = 1; #10;
    $display("%b %b | %b %b", a_tb, b_tb, s_tb, c_tb);
    $finish;
end
endmodule

