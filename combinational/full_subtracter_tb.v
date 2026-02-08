module full_sub_tb;
reg x_tb,y_tb,z_tb;
wire d_tb,b_tb;
full_sub_d dut (
    .x(x_tb),
    .y(y_tb),
    .z(z_tb),
    .d(d_tb),
    .b(b_tb));
initial begin
    $display("x y z | d b");
    $display("------|----");
    x_tb=0;y_tb=0;z_tb=0; #10;
    $display("%b %b %b | %b %b",x_tb,y_tb,z_tb,d_tb,b_tb);
    x_tb=0;y_tb=0;z_tb=1; #10;
    $display("%b %b %b | %b %b",x_tb,y_tb,z_tb,d_tb,b_tb);
    x_tb=0;y_tb=1;z_tb=0; #10;
    $display("%b %b %b | %b %b",x_tb,y_tb,z_tb,d_tb,b_tb);
    x_tb=0;y_tb=1;z_tb=1; #10;
    $display("%b %b %b | %b %b",x_tb,y_tb,z_tb,d_tb,b_tb);
    x_tb=1;y_tb=0;z_tb=0; #10;
    $display("%b %b %b | %b %b",x_tb,y_tb,z_tb,d_tb,b_tb);
    x_tb=1;y_tb=0;z_tb=1; #10;
    $display("%b %b %b | %b %b",x_tb,y_tb,z_tb,d_tb,b_tb);
    x_tb=1;y_tb=1;z_tb=0; #10;
    $display("%b %b %b | %b %b",x_tb,y_tb,z_tb,d_tb,b_tb);
    x_tb=1;y_tb=1;z_tb=1; #10;
    $display("%b %b %b | %b %b",x_tb,y_tb,z_tb,d_tb,b_tb);
end
endmodule
