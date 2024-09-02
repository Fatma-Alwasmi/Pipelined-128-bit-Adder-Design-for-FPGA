module top(
    input clk, 
    input [63:0] a, 
    input [63:0] b, 
    input ci,
    
    output [63:0] s, 
    output co
);
    part1 #(.WIDTH(64)) full_adder(.clk(clk), .a(a), .b(b), .ci(ci), .s(s), .co(co));
    
   //part2 carry_full_adder2(.clk(clk), .a(a), .b(b), .ci(ci), .s(s), .co(co));
   
 //  part3 #(.WIDTH(128)) behavioral_adder(.clk(clk), .a(a), .b(b), .ci(ci), .s(s), .co(co));
   
  // part5 CLA(.clk(clk), .a(a), .b(b), .ci(ci), .s(s), .co(co));
    
endmodule