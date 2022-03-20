module check_test;
reg [7:0] a,b;
wire[7:0]x;
wire cout1,cout2,cout3;
wire ans1,ans2,ans3;
wire[2:0]sum;

check x1(x,a,b);
binary_adder_1 adder1(x[7],x[6],x[5],ans1,cout1);
binary_adder_1 adder2(x[4],x[3],x[2],ans2,cout2);
binary_adder_1 adder3(x[1],x[0],0,ans3,cout3);
binary_adder_2 adder4({cout1,ans1},{cout2,ans2},{cout3,ans3},sum);

initial begin
 a=8'b10101010;b=8'b11111111;
 #10
$finish;
end
endmodule
