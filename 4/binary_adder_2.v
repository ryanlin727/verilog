module binary_adder_2 (a,b,cin,sum);
input [1:0] a,b,cin;
output [2:0] sum;

assign sum = a + b + cin;

endmodule

