module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg [31:0] x;
    always @(posedge clk)
        begin
            if(reset)
                begin
                    out=32'h0;
                    x=32'h0;
                end
            if(x&(~in))
                begin
                    out<=out | x&(~in);
                end
                    
                
            x<=in;
        end
            
            

endmodule
