module alu_tb;
reg [7:0] A;
reg [7:0] B;
reg [2:0] opcode;
wire [7:0] result;

alu utt(
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result)
);
initial begin 
  
    A = 8'd5;
    B = 8'd3;
    opcode = 3'b000;
    #10;
    if (result == 8'd8)
        $display("ADD (5+3): PASS");
    else
        $display("ADD (5+3): FAIL, result = %d", result);

    A = 8'd10;
    B = 8'd20;
    opcode = 3'b000;
    #10;
    if (result == 8'd30)
        $display("ADD (10+20): PASS");
    else
        $display("ADD (10+20): FAIL, result = %d", result);

    A = 8'd10;
    B = 8'd3;
    opcode = 3'b001;
    #10;
    if (result == 8'd7)
        $display("SUB (10-3): PASS");
    else
        $display("SUB (10-3): FAIL, result = %d", result);

    A = 8'd5;
    B = 8'd3;
    opcode = 3'b010;
    #10;
    if (result == 8'd1)
        $display("AND (5&3): PASS");
    else
        $display("AND (5&3): FAIL, result = %d", result);

    A = 8'd5;
    B = 8'd3;
    opcode = 3'b100;
    #10;
    if (result == 8'd6)
        $display("XOR (5^3): PASS");
    else
        $display("XOR (5^3): FAIL, result = %d", result);

    A = 8'd5;
    B = 8'd3;
    opcode = 3'b011;
    #10;
    if (result == 8'd7)
        $display("OR (5|3): PASS");
    else
        $display("OR (5|3): FAIL, result = %d", result);

        $finish;
end







endmodule