`timescale 1ns/1ps
module alu_tb;

reg [3:0] op;
reg [31:0] a, b;
wire [31:0] result;
wire zero;

alu uut (
    .op(op),
    .a(a),
    .b(b),
    .result(result),
    .zero(zero)
);

initial begin
    $dumpfile("alu_tb.vcd");
    $dumpvars(0, alu_tb);

    // Test ADD
    a = 10; b = 5; op = 4'b0000;
    #10;
    $display("ADD: %d + %d = %d", a, b, result);

    // Test SUB
    op = 4'b0001;
    #10;
    $display("SUB: %d - %d = %d", a, b, result);

    // Test AND
    op = 4'b0010;
    #10;
    $display("AND: %b & %b = %b", a, b, result);

    // Test OR
    op = 4'b0011;
    #10;
    $display("OR: %b | %b = %b", a, b, result);

    // Test XOR
    op = 4'b0100;
    #10;
    $display("XOR: %b ^ %b = %b", a, b, result);

    $finish;
end

endmodule

