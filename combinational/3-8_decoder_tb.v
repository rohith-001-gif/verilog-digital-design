module tb_decoder_3x8;
reg  [2:0] a;
wire [7:0] y;
decoder_3x8 uut (
    .a(a),
    .y(y));
initial begin
    a = 3'b000; #10;
    a = 3'b001; #10;
    a = 3'b010; #10;
    a = 3'b011; #10;
    a = 3'b100; #10;
    a = 3'b101; #10;
    a = 3'b110; #10;
    a = 3'b111; #10;
    $finish;
end
endmodule
