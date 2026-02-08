module full_add_s(x,y,z,s,c);
input x,y,z;
output s,c;
wire w1,w2,w4;
xor g1(w1,x,y);
xor g2(s,w1,z);
and g3(w2,x,y);
and g4(w4,w1,z);
or g5(c,w4,w2);
endmodule
