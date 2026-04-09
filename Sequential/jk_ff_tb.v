module jk_ff_tb;
reg j,k,clk,rst;
wire q,qo;
jk_ff dut(j,k,clk,rst,q,qo);
initial
clk=0;
always #5 clk=~clk;

initial begin
rst=1;j=0;k=0;#10;
rst=0;#10;
	{j,k}=2'b01;#10;
	{j,k}=2'b00;#10;
	{j,k}=2'b11;#10;
rst=1;#10;
rst=0;#10;
	{j,k}=2'b10;#10;
	{j,k}=2'b00;#10;
rst=1;#10;
$finish;
end
endmodule

