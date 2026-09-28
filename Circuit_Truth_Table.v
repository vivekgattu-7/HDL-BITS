module top_module (
    input clk,
    input j,
    input k,
    output Q); 
    reg q_old;
    always @(posedge clk)
        begin
            if(j==0 & k==0)
                Q=q_old;
            if(j==0 &  k==1)
                Q=1'b0;
            if(j==1&k==0)
                Q=1'b1;
            if(j==1&k==1)
                Q=~(q_old);
            q_old=Q;
        end

endmodule
