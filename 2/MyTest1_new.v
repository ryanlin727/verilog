module MyTest1;
reg[7:0]B,A;
reg Cin;
wire [7:0]SUM1,SUM2;
wire Cout1, Cout2;
wire Err;
binary_adder_8 adder1(A,B,Cin,SUM1,Cout1);
binary_adder adder2 (A,B,Cin,SUM2,Cout2);
check_circuit c(Err, {Cout1,SUM1},{Cout2,SUM2});

initial
begin
A=8'b00000001; B=8'b00000001; Cin=1'b0;
#100
A=8'b11111111; B=8'b00000000; Cin=1'b1;
#100
A=8'b00000001; B=8'b00000000; Cin=1'b0;
#100
A=8'b11111111; B=8'b11111111; Cin=1'b1;
#100
A=8'b01010101; B=8'b10101010; Cin=1'b1;
#100

$finish;
end
endmodule
