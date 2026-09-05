module cpu(
    input [2:0] opcode,
    input [7:0] A,
    input [7:0] B,
    input clk,
    input rst_n,
    output [7:0] result
);

wire [2:0] alu_op;

control_unit u_control(
    .opcode(opcode),
    .alu_op(alu_op)
);

alu u_alu(
    .A(A),
    .B(B),
    .opcode(alu_op),
    .result(result)
);

endmodule