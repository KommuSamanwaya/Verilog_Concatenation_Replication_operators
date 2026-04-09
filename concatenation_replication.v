
module concatenation_replication(
    input  [2:0] a,
    input  [2:0] b,
    input  [2:0] c,
    output [7:0] x,
    output [5:0] y
);

// Concatenation operator
assign x = {a, b, c[2:1]};

// Replication operator
assign y = {2{a}};

endmodule