module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    wire w1;
    assign w1=E?w:Q;
    wire w2;
    assign w2=L?R:w1;
    always @(posedge clk)
        begin
            Q=w2;
        end

endmodule
