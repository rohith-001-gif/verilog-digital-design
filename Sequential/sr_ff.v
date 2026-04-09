module sr_ff(s,r,clk,rst,q,qo);
input s,r,clk,rst;
output reg q,qo;

always @(posedge clk)begin
	if (rst) begin
		q<=1'b0;
		qo<=1'b1;
	end
	else begin
		case({s,r})
		2'b00: {q,qo}<={q,qo};
		2'b01: {q,qo}<= 2'b10;
		2'b10: {q,qo}<= 2'b01;
		2'b11: {q,qo}<= 2'b00; 
		endcase
	end
end
endmodule