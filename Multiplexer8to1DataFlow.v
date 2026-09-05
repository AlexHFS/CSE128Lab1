`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2026 03:07:50 PM
// Design Name: 
// Module Name: Mux8to1DataFlow
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


module Mux8to1DataFlow(
input[7:0]i,
input[2:0]s,
output y
);

assign y = (~s[0]&~s[1]&~s[2]&i[0])|
           (~s[0]&~s[1]& s[2]&i[1])|
           (~s[0]& s[1]&~s[2]&i[2])|
           (~s[0]& s[1]& s[2]&i[3])|
           ( s[0]&~s[1]&~s[2]&i[4])|
           ( s[0]&~s[1]& s[2]&i[5])|
           ( s[0]& s[1]&~s[2]&i[6])|
           ( s[0]& s[1]& s[2]&i[7]);
endmodule
