`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2026 02:59:01 PM
// Design Name: 
// Module Name: Mux8to1Behavioral
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


module Mux8to1Behavioral(
input[7:0]I,
input[2:0]S,
output reg y
);

always @(S or I)
begin
    case(S)
        3'b000: y = I[0];
        3'b001: y = I[1];
        3'b010: y = I[2];
        3'b011: y = I[3];
        3'b100: y = I[4];
        3'b101: y = I[5];
        3'b110: y = I[6];
        3'b111: y = I[7];
        default: y = 1'bx;
     endcase
end
endmodule
