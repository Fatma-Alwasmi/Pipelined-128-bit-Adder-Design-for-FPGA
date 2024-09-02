module part2(
    input clk,
    input [127:0] a, 
    input [127:0] b, 
    input ci, 
    
    output [128:0] s,
    output co

    );
    
    wire [7:0] c_wire;
    wire [7:0] c_wire_out;
    
    wire [127:0] sum_wire;
    reg [15:0] L1_s1, L1_s2, L1_s3, L1_s4, L1_s5, L1_s6, L1_s7; 
    reg [15:0] L2_a1, L2_b1, L2_s1, L2_s2, L2_s3, L2_s4, L2_s5, L2_s6;
    reg [15:0] L3_a1, L3_b1,L3_a2, L3_b2, L3_s1, L3_s2, L3_s3, L3_s4, L3_s5;
    reg [15:0] L4_a1, L4_b1, L4_a2, L4_b2, L4_a3, L4_b3, L4_s1, L4_s2, L4_s3, L4_s4;
    reg [15:0] L5_a1, L5_b1, L5_a2, L5_b2, L5_a3,L5_b3, L5_a4, L5_b4, L5_s1, L5_s2, L5_s3;
    reg [15:0] L6_a1, L6_b1, L6_a2, L6_b2, L6_a3, L6_b3, L6_a4, L6_b4, L6_a5, L6_b5, L6_s1, L6_s2;
    reg [15:0] L7_a1, L7_b1, L7_a2, L7_b2, L7_a3, L7_b3, L7_a4, L7_b4, L7_a5, L7_b5, L7_a6, L7_b6, L7_s1;
    reg [15:0] L8_a1, L8_b1, L8_a2, L8_b2, L8_a3, L8_b3, L8_a4, L8_b4, L8_a5, L8_b5, L8_a6, L8_b6, L8_a7, L8_b7;
    
    reg c_reg1, c_reg2, c_reg3, c_reg4, c_reg5, c_reg6, c_reg7;

    
    
    part1 RCA0(.clk(clk), .a(a[15:0]), .b(b[15:0]), .ci(ci), .s(sum_wire[15:0]), .co(c_wire[0]));
    part1 RCA1(.clk(clk), .a(L2_a1), .b(L2_b1), .ci(c_reg1), .s(sum_wire[31:16]), .co(c_wire[1]));
    part1 RCA2(.clk(clk), .a(L3_a2), .b(L3_b2), .ci(c_reg2), .s(sum_wire[47:32]), .co(c_wire[2]));
    part1 RCA3(.clk(clk), .a(L4_a3), .b(L4_b3), .ci(c_reg3), .s(sum_wire[63:48]), .co(c_wire[3]));
    part1 RCA4(.clk(clk), .a(L5_a4), .b(L5_b4), .ci(c_reg4), .s(sum_wire[79:64]), .co(c_wire[4]));
    part1 RCA5(.clk(clk), .a(L6_a5), .b(L6_b5), .ci(c_reg5), .s(sum_wire[95:80]), .co(c_wire[5]));
    part1 RCA6(.clk(clk), .a(L7_a6), .b(L7_b6), .ci(c_reg6), .s(sum_wire[111:96]), .co(c_wire[6]));
    part1 RCA7(.clk(clk), .a(L8_a7), .b(L8_b7), .ci(c_reg7), .s(sum_wire[127:112]), .co(c_wire[7]));
    

    always @(posedge clk) begin

        L1_s1 <= sum_wire[15:0]; 
        L1_s2 <= L1_s1;
        L1_s3 <= L1_s2;
        L1_s4 <= L1_s3;
        L1_s5 <= L1_s4;
        L1_s6 <= L1_s5;
        L1_s7 <= L1_s6;
        

        L2_a1 <= a[31:16]; // a1
        L2_b1 <= b[31:16]; //b1
        c_reg1 <= c_wire[0];
        L2_s1 <= sum_wire[31:16];
        L2_s2 <= L2_s1;
        L2_s3 <= L2_s2;
        L2_s4 <= L2_s3;
        L2_s5 <= L2_s4;
        L2_s6 <= L2_s5;
        

        L3_a1 <= a[47:32];
        L3_b1 <= b[47:32];
        L3_a2 <= L3_a1;
        L3_b2 <= L3_b1;
        c_reg2 <=c_wire[1];
        L3_s1 <= sum_wire[47:32];
        L3_s2 <= L3_s1;
        L3_s3 <= L3_s2;
        L3_s4 <= L3_s3;
        L3_s5 <= L3_s4;
        

        L4_a1 <= a[63:48];
        L4_b1 <= b[63:48];
        L4_a2 <= L4_a1;
        L4_b2 <= L4_b1;
        L4_a3 <= L4_a2;
        L4_b3 <= L4_b2;
        c_reg3 <=c_wire[2];
        L4_s1 <= sum_wire[63:48];
        L4_s2 <= L4_s1;
        L4_s3 <= L4_s2;
        L4_s4 <= L4_s3;
        

        L5_a1 <= a[79:64];
        L5_b1 <= b[79:64];
        L5_a2 <= L5_a1;
        L5_b2 <= L5_b1;
        L5_a3 <= L5_a2;
        L5_b3 <= L5_b2;
        L5_a4 <= L5_a3;
        L5_b4 <= L5_b3;
        c_reg4 <=c_wire[3];
        L5_s1 <= sum_wire[79:64];
        L5_s2 <= L5_s1;
        L5_s3 <= L5_s2;
        

        L6_a1 <= a[95:80];
        L6_b1 <= b[95:80];
        L6_a2 <= L6_a1;
        L6_b2 <= L6_b1;
        L6_a3 <= L6_a2;
        L6_b3 <= L6_b2;
        L6_a4 <= L6_a3;
        L6_b4 <= L6_b3;
        L6_a5 <= L6_a4;
        L6_b5 <= L6_b4;
        c_reg5 <=c_wire[4];
        L6_s1 <= sum_wire[95:80];
        L6_s2 <= L6_s1;
        

        L7_a1 <= a[111:96];
        L7_b1 <= b[111:96];
        L7_a2 <= L7_a1;
        L7_b2 <= L7_b1;
        L7_a3 <= L7_a2;
        L7_b3 <= L7_b2;
        L7_a4 <= L7_a3;
        L7_b4 <= L7_b3;
        L7_a5 <= L7_a4;
        L7_b5 <= L7_b4;
        L7_a6 <= L7_a5;
        L7_b6 <= L7_b5; 
        c_reg6 <=c_wire[5];
        L7_s1 <= sum_wire[111:96];
        

        L8_a1 <= a[127:112];
        L8_b1 <= b[127:112];
        L8_a2 <= L8_a1;
        L8_b2 <= L8_b1;
        L8_a3 <= L8_a2;
        L8_b3 <= L8_b2;
        L8_a4 <= L8_a3;
        L8_b4 <= L8_b3;
        L8_a5 <= L8_a4;
        L8_b5 <= L8_b4;
        L8_a6 <= L8_a5;
        L8_b6 <= L8_b5;
        L8_a7 <= L8_a6;
        L8_b7 <= L8_b6;
        c_reg7 <=c_wire[6];
        
    end
    
    
    assign s[15:0] = L1_s7;
    assign s[31:16] = L2_s6;   
    assign s[47:32] = L3_s5; 
    assign s[63:48] = L4_s4; 
    assign s[79:64] = L5_s3; 
    assign s[95:80] = L6_s2; 
    assign s[111:96] = L7_s1; 
    assign s[127:112] = sum_wire[127:112];
    assign co = c_wire[7];
    
    
endmodule     


    
