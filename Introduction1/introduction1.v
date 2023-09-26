`timescale 1ns / 1ps

module introduction1(
    input p1a,
    input p1b,
    input p1c,
    input p1d,
    input p1e,
    input p1f,
    input p2a,
    input p2b,
    input p2c,
    input p2d,
    output p1y,
    output p2y
     );
    
    wire abc1;
    wire def1;
    wire ab2;
    wire cd2;
    
    and G1abc (abc1,p1a,p1b,p1c);
    and G1def (def1,p1d,p1e,p1f);
    and G2ab  (ab2,p2a,p2b);
    and G2cd  (cd2,p2c,p2d);
    or  G1    (p1y,abc1,def1);
    or  G2    (p2y,ab2,cd2);
    
endmodule
