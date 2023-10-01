`timescale 1ns / 1ps

module introduction2_99(
    input [99:0] in,
    output [99:0] out
    
    );
    reg [99:0]out_1;
    integer n ;
    always@*begin
        for(n=0; n<100; n=n+1)begin
        out_1[99-n] <= in[n];
        end
    end
    assign out = out_1;
endmodule
