module control_unit_tb;
reg [2:0] opcode;
wire [2:0] alu_op;

control_unit utt(
    .opcode(opcode),
    .alu_op(alu_op)
);

initial begin
    $dumpfile("control_unit.vcd");
    $dumpvars(0, control_unit_tb);

    opcode = 3'b00;
    #10;
    $display("opcode=000 -> alu_op=%b", alu_op);

    opcode = 3'b001;
    #10;
    $display("opcode=001 -> alu_op=%b", alu_op);

    opcode = 3'b010;
    #10;
    $display("opcode=010 -> alu_op=%d", alu_op);

    opcode = 3'b011;
    #10;
    $display("opcode=011 -> alu_op=%d", alu_op);

    opcode = 3'b100;
    #10;
    $display("opcode=100 -> alu_op=%d", alu_op);

    $finish;
end

endmodule