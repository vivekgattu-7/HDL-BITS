module top_module( 
    input [254:0] in,
    output [7:0] out );
    integer i;
    reg [7:0]w;
    always @(*)
        begin
            w=8'b0;
            for(i=0;i<255;i=i+1)
                begin
                    if(in[i]==1'b1)
                        begin
                            w=w+1'b1;
                        end
                end
        end
    assign out=w;
    
                            
            

endmodule
