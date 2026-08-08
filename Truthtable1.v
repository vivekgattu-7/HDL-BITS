module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    wire w1;
    assign w1=~x3;
    wire w2;
    assign w2=w1&x2;
    wire w3;
    assign w3=x3&x1;
    assign f=w2|w3;

endmodule
