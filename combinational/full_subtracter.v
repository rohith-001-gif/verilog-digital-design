module full_sub_d(x,y,z,d,b);
input x,y,z;
output d,b;
assign d=x^y^z;
assign b=(~x&y)|(~x&z)|(y&z);
endmodule
