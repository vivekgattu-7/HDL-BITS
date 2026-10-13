module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
);
    MUXDFF M3(LEDR[3],KEY[3],KEY[1],SW[3],KEY[2],KEY[0],LEDR[3]);
    MUXDFF M2(LEDR[2],LEDR[3],KEY[1],SW[2],KEY[2],KEY[0],LEDR[2]);
    MUXDFF M1(LEDR[1],LEDR[2],KEY[1],SW[1],KEY[2],KEY[0],LEDR[1]);
    MUXDFF M0(LEDR[0],LEDR[1],KEY[1],SW[0],KEY[2],KEY[0],LEDR[0]);

endmodule

module MUXDFF (input q,input W,input E,input R,input L,input clk,output reg Q);
    wire w1,w2,w3;
    assign w1=E?W:q;
    assign w2=L?R:w1;
    always @(posedge clk)
        begin
            Q=w2;
        end

endmodule
