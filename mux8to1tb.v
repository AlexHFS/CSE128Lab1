`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2026 02:29:17 PM
// Design Name: 
// Module Name: mux8to1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module mux8to1_tb;

wire y;                                    // output
reg  i0, i1, i2, i3, i4, i5, i6, i7;        // data inputs
reg  s0, s1, s2;                            // select inputs

// Instantiate original module (named DUT {device under test})
mux8to1_structural uut (i0, i1, i2, i3, i4, i5, i6, i7, s2, s1, s0, y);

initial begin
    #10 i0=1'b1; i1=1'b0; i2=1'b0; i3=1'b0; i4=1'b0; i5=1'b0; i6=1'b0; i7=1'b0; s2=1'b0; s1=1'b0; s0=1'b0;
    #10 i0=1'b0; i1=1'b1; i2=1'b0; i3=1'b0; i4=1'b0; i5=1'b0; i6=1'b0; i7=1'b0; s2=1'b0; s1=1'b0; s0=1'b1;
    #10 i0=1'b0; i1=1'b0; i2=1'b1; i3=1'b0; i4=1'b0; i5=1'b0; i6=1'b0; i7=1'b0; s2=1'b0; s1=1'b1; s0=1'b0;
    #10 i0=1'b0; i1=1'b0; i2=1'b0; i3=1'b1; i4=1'b0; i5=1'b0; i6=1'b0; i7=1'b0; s2=1'b0; s1=1'b1; s0=1'b1;
    #10 i0=1'b0; i1=1'b0; i2=1'b0; i3=1'b0; i4=1'b1; i5=1'b0; i6=1'b0; i7=1'b0; s2=1'b1; s1=1'b0; s0=1'b0;
    #10 i0=1'b0; i1=1'b0; i2=1'b0; i3=1'b0; i4=1'b0; i5=1'b1; i6=1'b0; i7=1'b0; s2=1'b1; s1=1'b0; s0=1'b1;
    #10 i0=1'b0; i1=1'b0; i2=1'b0; i3=1'b0; i4=1'b0; i5=1'b0; i6=1'b1; i7=1'b0; s2=1'b1; s1=1'b1; s0=1'b0;
    #10 i0=1'b0; i1=1'b0; i2=1'b0; i3=1'b0; i4=1'b0; i5=1'b0; i6=1'b0; i7=1'b1; s2=1'b1; s1=1'b1; s0=1'b1;
    #10 $stop;
end

endmodule


