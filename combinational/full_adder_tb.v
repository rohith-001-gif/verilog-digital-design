module full_add_tb;
reg x_tb, y_tb, z_tb;
wire s_tb, c_tb;
full_add_s dut (
    .x(x_tb),
    .y(y_tb),
    .z(z_tb),
    .s(s_tb),
    .c(c_tb));
initial begin
    $display("x y z | s c");
    $display("------|----");
    x_tb=0; y_tb=0; z_tb=0; #10;
    $display("%b %b %b | %b %b", x_tb,y_tb,z_tb,s_tb,c_tb);
    x_tb=0; y_tb=0; z_tb=1; #10;
    $display("%b %b %b | %b %b", x_tb,y_tb,z_tb,s_tb,c_tb);
    x_tb=0; y_tb=1; z_tb=0; #10;
    $display("%b %b %b | %b %b", x_tb,y_tb,z_tb,s_tb,c_tb);
    x_tb=0; y_tb=1; z_tb=1; #10;
    $display("%b %b %b | %b %b", x_tb,y_tb,z_tb,s_tb,c_tb);
    x_tb=1; y_tb=0; z_tb=0; #10;
    $display("%b %b %b | %b %b", x_tb,y_tb,z_tb,s_tb,c_tb);
    x_tb=1; y_tb=0; z_tb=1; #10;
    $display("%b %b %b | %b %b", x_tb,y_tb,z_tb,s_tb,c_tb);
    x_tb=1; y_tb=1; z_tb=0; #10;
    $display("%b %b %b | %b %b", x_tb,y_tb,z_tb,s_tb,c_tb);
    x_tb=1; y_tb=1; z_tb=1; #10;
    $display("%b %b %b | %b %b", x_tb,y_tb,z_tb,s_tb,c_tb);
    $finish;
end
endmodule

