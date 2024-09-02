//`timescale 1ns / 1ps


module testbench();
    reg clk;
    reg [3:0] inputA;
    reg [3:0] inputB;
    wire [3:0] tmp_result;
    wire cout;
    
    //part1 #(.WIDTH(16)) part1_inst(.clk(clk), .a(inputA), .b(inputB), .ci(1'b0), .s(tmp_result), .co(cout));
    //part2 part2_inst(.clk(clk), .a(inputA), .b(inputB), .ci(1'b0), .s(tmp_result), .co(cout));
    //part3 #(.WIDTH(128)) part3_inst(.clk(clk), .a(inputA), .b(inputB), .ci(1'b0), .s(tmp_result), .co(cout));
    part5 CLA(.clk(clk), .a(inputA), .b(inputB), .ci(1'b0), .s(tmp_result), .co(cout));
    
    always
        #5 clk = !clk;
        
        initial begin
        clk <= 0;
        inputA <= 16'h0000;
        inputB <= 16'h0000;
        #60
        $display($time, "%10d +%10d = %10d", inputA, inputB, tmp_result);
        inputA <= 16'h1234;
        inputB <= 16'h1234;
        #60
        $display($time, "%10d +%10d = %10d", inputA, inputB, tmp_result);
        inputA <= 16'h4567;
        inputB <= 16'h4567;
        #60
        $display($time, "%10d +%10d = %10d", inputA, inputB, tmp_result);
        inputA <= 16'habcd;
        inputB <= 16'habcd;
        #60
        $display($time, "%10d +%10d = %10d", inputA, inputB, tmp_result);
        inputA <= 16'h0000;
        inputB <= 16'h0000;
        #240
        $finish;
        end
endmodule
