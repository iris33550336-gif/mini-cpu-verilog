module register_tb;

reg clk;
reg rst_n;
reg [7:0] d;
wire [7:0] q;

reg_8bit uut(
    .clk(clk),
    .rst_n(rst_n),
    .d(d),
    .q(q)
);

initial begin
    clk= 0;
    forever #5 clk = ~clk;
end

initial begin
    $dumpfile("register.vcd");
    $dumpvars(0, register_tb);

    rst_n = 0;
    d = 8'h00;
    #10;

    rst_n = 1;
    d = 8'hAA;
    #20;

    d = 8'h55;
    #20;

    d = 8'hFF;
    #20;
    

    $display("Test finished. Check waveform!");
    $finish;
end

endmodule