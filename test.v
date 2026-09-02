module test;
reg [7:0] A, B;
reg [2:0] op;
wire [7:0] result;

alu my_alu(.A(A), .B(B), .opcode(op), .result(result));

initial begin
    A = 5;
    B = 3;
    op = 3'b000;
    #10;
    $display("5 + 3 = %d", result);
    #10;
    $finish;
end
endmodule