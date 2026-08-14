module alu_32bit_case (
    output reg [31:0] y,
    input  [31:0] a,
    input  [31:0] b,
    input  [2:0]  f
);

always @(*) begin
    case (f)
        3'b000: y = a & b;        // AND
        3'b001: y = a | b;        // OR
        3'b010: y = ~(a & b);     // NAND
        3'b011: y = ~(a | b);     // NOR
        3'b100: y = a + b;        // Addition
        3'b101: y = a - b;        // Subtraction
        3'b110: y = a * b;        // Multiplication
        3'b111: y = 32'b0;        // Reserved (or any operation)
        default: y = 32'bx;
    endcase
end

endmodule
  
