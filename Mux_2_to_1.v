module top_module( 
    input a, b, sel,
    output out ); 
    always @(*)
        begin
            if(sel==1)
                begin
                    out=b;
                end
            else
                begin
                    out=a;
                end
        end
    

endmodule
