`timescale 1ns / 1ps

module ring_counter(
    input clk,
    input clear,
    output reg [3:0] q
            
    );
    
    always@(posedge clk, posedge clear)begin
        if(clear)begin
            q <=4'b0001;
        end else begin
            q[1]<=q[0];
            q[2]<=q[1];
            q[3]<=q[2];
            q[0]<=q[3];
        end
    end       
    
endmodule
