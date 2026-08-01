module top_module ( input clk, input d, output q );
    wire [1:0]w;
    my_dff M1(clk,d,w[0]);
    my_dff M2(clk,w[0],w[1]);
    my_dff M3(clk,w[1],q);

endmodule
