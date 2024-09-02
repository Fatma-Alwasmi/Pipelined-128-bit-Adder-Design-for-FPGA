module part3
    #(parameter WIDTH = 16)
    (
    input clk,
    input  [WIDTH-1:0] a,
    input  [WIDTH-1:0] b,
    input  ci,
    
    output  [WIDTH-1:0] s,
    output  co
    );
    
    reg [WIDTH-1:0] rega;
    reg [WIDTH-1:0] regb;
    reg [WIDTH:0] regsum;
    reg regcin;

    
    always@(posedge clk) begin

        rega <= a; 
        regb <= b;
        regcin <= ci;
        regsum <=  rega + regb + regcin;

        
    end
        
   
   assign co = regsum[WIDTH];
   assign s = regsum;
    
endmodule
