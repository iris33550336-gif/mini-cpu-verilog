module cpu_tb;

reg [2:0] opcode;
reg [7:0] A;
reg [7:0] B;
reg clk;
reg rst_n;
wire [7:0] result;

cpu uut(
    .opcode(opcode),
    .A(A),
    .B(B),
    .clk(clk),
    .rst_n(rst_n),
    .result(result)
);
initial begin
    $dumpfile("cpu.vcd");
    $dumpvars(0, cpu_tb);

    rst_n = 0;
    A = 0;
    B = 0;
    opcode = 0;
    #10;
    rst_n = 1;

    // 1. 加法: 5 + 3 = 8
    A = 5;
    B = 3;
    opcode = 3'b000;
    #10;
    if (result == 8)
        $display("CPU ADD (5+3): PASS");
    else
        $display("CPU ADD (5+3); FAIL, result=%d, result");

    // 2. 减法: 10 - 3 = 7
    A = 10;
    B = 3;
    opcode = 3'b001;
    #10;
    if (result == 7)
        $display("CPU SUB (10-3): PASS");
    else
        $display("CPU SUB (10-3); FAIL, result=%d, result");

    // 3. 与运算: 5 & 3 = 1
    A = 5;
    B = 3;
    opcode = 3'b010;
    #10;
    if (result == 1)
        $display("CPU AND (5&3): PASS");
    else
        $display("CPU AND (5&3); FAIL, result=%d, result");

    // 4. 或运算: 5 | 3 = 7
    A = 5;
    B = 3;
    opcode = 3'b011;
    #10;
    if (result == 7)
        $display("CPU OR (5|3): PASS");
    else
        $display("CPU OR (5|3); FAIL, result=%d, result");

    // 5. 异或运算: 5 ^ 3 = 6
    A = 5;
    B = 3;
    opcode = 3'b100;
    #10;
    if (result == 6)
        $display("CPU XOR (5^3): PASS");
    else
        $display("CPU XOR (5^3); FAIL, result=%d, result");

        $finish;
end

endmodule
    