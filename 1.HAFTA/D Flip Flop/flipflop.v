`timescale 1ns / 1ps

module topmodule(
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0]d,
    output reg [15:0]q
    );
    
    always@(posedge clk) begin
        if(resetn == 0) begin
            q <= 0;
        end
        else begin
            q <= d;
        end
        case(byteena)
        2'b00 : q <= 0;
        2'b01 : q <= d[7:0];
        2'b10 : 
        begin
            q[7:0] <= 0; 
            q[15:8] <= d[15:8];
        end 
            
        2'b11 : q <= d[15:0];
        endcase
    end
endmodule
