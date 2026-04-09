module t_ff(t,clk,rst,q,qo);
input t,clk,rst;
output reg q,qo;
always @(posedge clk or posedge rst)begin

if(rst)begin
	q<=1'b0;
	qo<=1'b1;
end
else begin
	case({t})
    		1'b0: {q, qo} <= {q, qo};
		1'b1: {q, qo} <= {qo, q};
endcase
end
end
endmodule
