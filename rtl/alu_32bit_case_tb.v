`timescale 1ns/1ps

module alu_32bit_case_tb;

    reg [31:0] a;
    reg [31:0] b;
    reg [2:0]  f;
    wire [31:0] y;

    // Instantiate ALU module
    alu_32bit_case uut (
        .y(y),
        .a(a),
        .b(b),
        .f(f)
    );

    initial begin
        $display("Starting 32-bit ALU Testbench...");
        $monitor("Time=%0t | a=0x%h b=0x%h f=%b -> y=0x%h", $time, a, b, f, y);

        // Test 1: AND
        a = 32'hF0F0_FFFF; b = 32'h0FF0_1234; f = 3'b000; #10;
        // Test 2: OR
        a = 32'hF0F0_0000; b = 32'h0000_FFFF; f = 3'b001; #10;
        // Test 3: NAND
        a = 32'hFFFF_FFFF; b = 32'hFFFF_FFFF; f = 3'b010; #10;
        // Test 4: NOR
        a = 32'h0000_0000; b = 32'h0000_0000; f = 3'b011; #10;
        // Test 5: ADD
        a = 32'd100; b = 32'd250; f = 3'b100; #10;
        // Test 6: SUB
        a = 32'd500; b = 32'd200; f = 3'b101; #10;
        // Test 7: MUL
        a = 32'd12; b = 32'd15; f = 3'b110; #10;

        $display("ALU Testbench Completed Successfully.");
        $finish;
    end

endmodule
