
module part0(
    input a, b, ci,
    output s, co
    );
    
    wire w1, w2, w3;
    
    //gate level modeling for a full adder
    
    xor xor_gate1(w1, a, b);
    xor xor_gate2(s, w1, ci);
    and and_gate1(w2, w1, ci);
    and and_gate2(w3, a, b);
    or or_gate(co,w2,w3);

 endmodule   

