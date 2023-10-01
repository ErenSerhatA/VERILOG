`timescale 1ns / 1ps

module tb_introduction1;

  // Inputs
  reg p1a;
  reg p1b;
  reg p1c;
  reg p1d;
  reg p1e;
  reg p1f;
  reg p2a;
  reg p2b;
  reg p2c;
  reg p2d;

  // Outputs
  wire p1y;
  wire p2y;

  // Instantiate the introduction1 module
  introduction1 uut (
    .p1a(p1a),
    .p1b(p1b),
    .p1c(p1c),
    .p1d(p1d),
    .p1e(p1e),
    .p1f(p1f),
    .p2a(p2a),
    .p2b(p2b),
    .p2c(p2c),
    .p2d(p2d),
    .p1y(p1y),
    .p2y(p2y)
  );

  // Test procedure
  initial begin
    // Initialize inputs
    p1a = 1;
    p1b = 1;
    p1c = 1;
    p1d = 1;
    p1e = 0;
    p1f = 1;
    p2a = 0;
    p2b = 1;
    p2c = 0;
    p2d = 1;

    // Apply inputs
    #10; // Wait for 10 time units

    // Monitor outputs
    $display("p1y = %b, p2y = %b", p1y, p2y);

    // End the simulation
    $finish;
  end

endmodule

