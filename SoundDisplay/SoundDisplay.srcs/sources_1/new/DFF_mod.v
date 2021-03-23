`timescale 1ns / 1ps


module DFF_mod (input DFF_CLOCK, D, output reg Q = 0);
// note: Q is a reg cause in always blck

    always @ (posedge DFF_CLOCK) begin
        Q <= D; // non-blocking assignment
    end
endmodule
