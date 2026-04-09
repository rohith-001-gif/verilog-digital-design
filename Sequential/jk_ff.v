module jk_ff(j,k,clk,rst,q,qo);
input j,k,clk,rst;
output reg q,qo;

always @(posedge clk or posedge rst)begin
	if(rst)begin
	q<=1'b0;
	qo<=1'b1;
	end
	else begin
		case({j,k})
			2'b00:{q,qo}<={q,qo};
			2'b01:{q,qo}<=2'b01;
			2'b10:{q,qo}<=2'b10;
			2'b11:{q,qo}<={qo,q};
		endcase
	end
end
endmodule
