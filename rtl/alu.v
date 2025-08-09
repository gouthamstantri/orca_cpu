module alu (
    input  wire [3:0]  op,       // Operation code
    input  wire [31:0] a, b,     // Inputs
    output reg  [31:0] result,
    output reg         zero
);

always @(*) begin
    case(op)
        4'b0000: result = a + b;   // ADD
        4'b0001: result = a - b;   // SUB
        4'b0010: result = a & b;   // AND
        4'b0011: result = a | b;   // OR
        4'b0100: result = a ^ b;   // XOR
        default: result = 0;
    endcase
    zero = (result == 0);
end

endmodule

