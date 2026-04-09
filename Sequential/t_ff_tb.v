module t_ff_tb;
reg t,clk,rst;
wire q,qo;

t_ff dut(t,clk,rst,q,qo);
initial
clk=0;
always #5 clk = ~clk;

initial begin
rst=1;#10;
rst=0;#10;
	t=0;#10;
rst=1;#10;
rst=0;#10;
	t=1;#10;
rst=1;#10;
end
endmodule