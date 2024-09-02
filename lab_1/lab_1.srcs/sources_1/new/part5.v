module part5(
    input clk,
    input [3:0] a,
    input [3:0] b,
    input ci,
    
    output [3:0] s,
    output co
    );
    
    wire [3:0] G; //generate
    wire [3:0] P; //propogate
    wire [4:0] C; //carry bits
    reg [3:0] sum_reg;
    reg co_reg;
    reg ci_reg;
    
    assign C[0] = ci_reg;
    
    genvar i;
    generate
        for(i = 0; i <4; i = i+1) begin
            assign G[i] = a[i] & b[i]; // generate
            assign P[i] = a[i] | b[i]; //propogate
        end
    endgenerate
    
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & C[0]);
    assign C[4] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & C[0]);
    
    always @(posedge clk) begin
        ci_reg <= ci;
        sum_reg <= a^b^C[3:0];
        co_reg <= C[4];
    end

    assign s = sum_reg;
    assign co = co_reg;
    
endmodule
