module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0]m;
    wire [7:0]n;
    assign m=a>b ? b :a;
    assign n= c>d ? d:c;
    assign min= m>n ? n:m;

endmodule
