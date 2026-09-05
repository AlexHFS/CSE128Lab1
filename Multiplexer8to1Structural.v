`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// Engineer: Alexander Sas
// 
// Create Date: 09/04/2026 02:40:26 PM
// Design Name: 
// Module Name: Mux8to1Structural
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
module mux2to1(
    input I0,
    input I1,
    input S,
    output Y
);

assign Y = (~S & I0) | (S & I1);

endmodule


module mux8to1_structural(
    input I0, I1, I2, I3, I4, I5, I6, I7,
    input S2, S1, S0,
    output Y
);

wire W0, W1, W2, W3;
wire W4, W5;

mux2to1 M0(I0, I1, S0, W0);
mux2to1 M1(I2, I3, S0, W1);
mux2to1 M2(I4, I5, S0, W2);
mux2to1 M3(I6, I7, S0, W3);

mux2to1 M4(W0, W1, S1, W4);
mux2to1 M5(W2, W3, S1, W5);

mux2to1 M6(W4, W5, S2, Y);

endmodule


//module Mux8to1Structural(
//input[7:0]I,
//input[2:0]S,
//output y
//);

//wire NS0,NS1,NS2;
//wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;

//not N0(NS0, S[0]);
//not N1(NS1, S[1]);
//not N2(NS2, S[2]);

//and I0(Y0, NS0, NS1, NS2, I[0]);
//and I1(Y1, NS0, NS1, S[2], I[1]);
//and I2(Y2, NS0, S[1], NS2, I[2]);
//and I3(Y3, NS0, S[1], S[2], I[3]);
//and I4(Y4, S[0], NS1, NS2, I[4]);
//and I5(Y5, S[0], NS1, S[2], I[5]);
//and I6(Y6, S[0], S[1], NS2, I[6]);
//and I7(Y7, S[0], S[1], S[2], I[7]);

//or yOut(y,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
//endmodule
