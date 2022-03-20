module check(x,a,b);
input[7:0]a,b;
output[7:0]x;
//output[2:0]ans;

 xor x0(x[0],a[0],b[0]);
 xor x1(x[1],a[1],b[1]);
 xor x2(x[2],a[2],b[2]);
 xor x3(x[3],a[3],b[3]);
 xor x4(x[4],a[4],b[4]);
 xor x5(x[5],a[5],b[5]);
 xor x6(x[6],a[6],b[6]);
 xor x7(x[7],a[7],b[7]);
 //assign ans = x[7] + x[6] + x[5] + x[4] + x[3] + x[2] + x[1] + x[0];
endmodule
