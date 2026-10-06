module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 32'h1
    output [31:0] q
); 
    always @(posedge clk)
        begin
            if(reset)
                begin
                    q=32'h1;
                end
            else
                begin
                    for(integer i=0;i<31;i=i+1)
                        begin
                            q[i]<=q[i+1];
                        end
                    q[31]<=q[0];
                    q[21]<=q[22]^q[0];
                    q[1]<=q[2]^q[0];
                    q[0]<=q[1]^q[0];
                end
        end
                        
                       
                    

endmodule
