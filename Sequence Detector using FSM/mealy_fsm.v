`timescale 1ns / 1ps

module mealy_fsm(
    input in,
    input clk,
    input reset,
    output reg out

    );
    reg [3:0] mealy;
    
    localparam s0 = 4'b0001;
    localparam s1 = 4'b0010;
    localparam s2 = 4'b0100;
    localparam s3 = 4'b1000;
    
    always@(posedge clk ,negedge reset )begin
        if (reset==1)begin
        out <= 0;
        end
        case(mealy)
            s0:begin
                if (in == 0)begin
                    mealy <= 4'b0001;
                    out <= 0;
                end else begin
                    mealy <= 4'b0010;
                    out <= 0;
                end
            end
            
            s1:begin
                if(in==1)begin
                    mealy <= 4'b0010;
                    out <= 0;
                end else begin
                    mealy <= 4'b0100;
                    out <= 0;
                end    
            end
            
            s2:begin
                if(in==0)begin
                    mealy <= 4'b0001;
                    out <= 0;
                end else begin
                    mealy <= 4'b1000;
                    out <= 0;
                end    
            end
            
            s3:begin
                if(in==0)begin
                    mealy <= 4'b0100;
                    out <= 0;
                end else begin
                    mealy <= 4'b0010;
                    out <= 1;
                end
            end
        endcase    
    end
endmodule
