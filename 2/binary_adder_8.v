module binary_adder_8 (A,B,Cin,SUM,Cout);
input [7:0] A,B;
input Cin;
output [7:0] SUM;
output Cout;
wire c;

binary_adder_4 add1(A[3:0], B[3:0], Cin, SUM[3:0], c);
binary_adder_4 add2(A[7:4], B[7:4], c, SUM[7:4],Cout);


endmodule
