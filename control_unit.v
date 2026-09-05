module control_unit (
    input [2:0] opcode,
    output reg [2:0] alu_op
);

always @(*) begin
    case (opcode)
         3'b000: alu_op = 3'b00;
         3'b001: alu_op = 3'b001;
         3'b010: alu_op = 3'b010;
         3'b011: alu_op = 3'b011;
         3'b100: alu_op = 3'b100;
         default: alu_op = 3'b000;
    
    endcase
    
end
    
endmodule