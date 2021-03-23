`timescale 1ns / 1ps


module single_pulse_mod (input clock, P_button, output pulse);
    
    wire Q1, Q2;
    
    DFF_mod DFF_1 (clock, P_button, Q1);
    DFF_mod DFF_2 (clock, Q1, Q2);
    and U1 (pulse, Q1, ~Q2); 
    
endmodule
