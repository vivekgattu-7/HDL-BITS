module top_module (
    input clk,
    input x,
    output z
);

    reg q1 = 0;
    reg q2 = 0;
    reg q3 = 0;

    wire w1 = x ^ q1;
    wire w2 = x & (~q2);
    wire w3 = (~q3) | x;

    always @ (posedge clk)
     begin
        q1 <= w1;   
        q2 <= w2;   
        q3 <= w3;   
     end

    assign z = ~(q1 | q2 | q3);

endmodule
