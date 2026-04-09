module d_ff_tb;
reg d,clk,rst;
wire q,qo;
d_ff dut(d,clk,rst,q,qo);

initial
clk=0;
always #5 clk=~clk;
initial begin
rst=1;d=1;#10;
rst=0;#10;
	d=0;#10;
rst=1;#10;
rst=0;#10;
	d=1;#10;
rst=1;#10;
$finish;
end
endmodule

