module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire [4:1]c;
    fadd F1(x[0],y[0],1'b0,sum[0],c[1]);
    fadd F2(x[1],y[1],c[1],sum[1],c[2]);
    fadd F3(x[2],y[2],c[2],sum[2],c[3]);
    fadd F4(x[3],y[3],c[3],sum[3],c[4]);
    assign sum[4]=c[4];

endmodule
module fadd(input a,b,c,output sum,carry);
    assign sum=a^b^c;
    assign carry=a&b|c&(a^b);
endmodule
