`timescale 1ns / 1ps

module alu_tb;

reg [7:0] a, b;
reg [3:0] alu_sel;
wire [7:0] result;
wire zero;

alu uut (
    .a(a),
    .b(b),
    .alu_sel(alu_sel),
    .result(result),
    .zero(zero)
);

initial begin
    a = 8'd10; b = 8'd5; alu_sel = 4'b0000; #10;
    alu_sel = 4'b0001; #10;
    alu_sel = 4'b0010; #10;
    alu_sel = 4'b0011; #10;
    alu_sel = 4'b0100; #10;
    alu_sel = 4'b0101; #10;
    alu_sel = 4'b0110; #10;
    alu_sel = 4'b0111; #10;
    alu_sel = 4'b1000; #10;
    alu_sel = 4'b1001; #10;
    alu_sel = 4'b1010; #10;
    alu_sel = 4'b1011; #10;
    alu_sel = 4'b1100; #10;
    alu_sel = 4'b1101; #10;
    a = 8'd3; b = 8'd5; alu_sel = 4'b1110; #10;
    a = 8'd7; b = 8'd7; alu_sel = 4'b1111; #10;
    a = 8'd5; b = 8'd5; alu_sel = 4'b0001; #10;
    $finish;
end

endmodule
