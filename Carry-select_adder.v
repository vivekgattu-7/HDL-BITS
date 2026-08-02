module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire w1;
    wire w2;
    wire cout;
    wire [15:0]a1;
    wire [15:0]a2;
    add16 A1(a[15:0],b[15:0],0,sum[15:0],cout);
    add16 A2(a[31:16],b[31:16],0,a1);
    add16 A3(a[31:16],b[31:16],1,a2);
    assign sum[31:16]= cout ? a2 : a1;
    
               

endmodule
    
