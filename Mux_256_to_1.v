module top_module( 
    input [255:0] in,
    input [7:0] sel,
    output out );
    integer i;
    always @(*)
        begin
            for(i=0;i<=255;i++)
                begin
                    if(i==sel)
                        begin
                            out=in[i];
                        end
                end
        end
endmodule
