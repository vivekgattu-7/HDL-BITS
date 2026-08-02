module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cout;
    wire [31:0]b1;
    assign b1=(b ^ {32{sub}});
    add16 A1(a[15:0],b1[15:0],sub,sum[15:0],cout);
    add16 A2(a[31:16],b1[31:16],cout,sum[31:16]);

endmodule
