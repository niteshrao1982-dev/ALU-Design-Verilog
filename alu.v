`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 23:35:56
// Design Name: 
// Module Name: alu
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
module alu(
    input [7:0] a,
    input [7:0] b,
    input [3:0] alu_sel,
    output reg [7:0] result,
    output zero
);

always @(*) begin
    case(alu_sel)
        4'b0000: result = a + b; // ADD
        4'b0001: result = a - b; // SUB
        4'b0010: result = a & b; // AND
        4'b0011: result = a | b; // OR
        4'b0100: result = a ^ b; //XOR
        4'b0101: result = ~a; // NOT 
        4'b0110: result = ~(a & b); //NAND
        4'b0111: result = ~(a | b); //NOR
        4'b1000: result = ~(a ^ b); //XNOR
        4'b1001: result = a + 1; //increment
        4'b1010: result = a - 1; //decrement
        4'b1011: result = a << 1; // shift left
        4'b1100: result = a >> 1; // shift right
        4'b1101: result = (a > b) ? 8'd1 : 8'd0; // greater than
        4'b1110: result = (a < b) ? 8'd1 : 8'd0; // less than
        4'b1111: result = (a == b) ? 8'd1 : 8'd0;  // equal
         
         
        default: result = 8'b00000000;
    endcase
end

assign zero = (result == 8'b00000000);

endmodule
