`timescale 1ns / 1ps

module d_latch(
    input d,
    input enable,
    output reg q
    
    );
    
    always@(*) begin
        if (enable==1)begin
        q = d;
        end
    end
endmodule
