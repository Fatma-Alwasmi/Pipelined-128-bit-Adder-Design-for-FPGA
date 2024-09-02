module part1
    #(parameter WIDTH = 128)
    (
    input clk,
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    input ci,
    
    output [WIDTH-1:0] s,
    output co
    );
    
    wire [WIDTH:0] carry;
    reg  regco;
    reg regci;
    
    wire [WIDTH-1:0] sum_wire;
    reg [WIDTH-1:0] sum_reg;
    assign carry[0] = regci; 
    

    genvar i;
    generate for (i=0 ; i < WIDTH; i=i+1)
    begin
        part0 full_adder(.a(a[i]), .b(b[i]), .ci(carry[i]), .s(sum_wire[i]), .co(carry[i+1]));
    end
    endgenerate

    
    always @(posedge clk) begin
       regci <= ci;
       regco <= carry[WIDTH];
       sum_reg <= sum_wire;
    end
    
    assign co = regco;
    assign s = sum_reg;
    

    
endmodule
    
