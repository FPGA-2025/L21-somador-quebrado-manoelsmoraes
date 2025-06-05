module fadd (
    input wire a,
    input wire b,
    input wire cin,
    output wire s,
    output wire cout
);

wire s1, c1, c2;

// Primeiro half-adder: soma a + b
hadd ha1 (
    .a(a),
    .b(b),
    .s(s1),
    .c(c1)
);

// Segundo half-adder: soma s1 + cin
hadd ha2 (
    .a(s1),
    .b(cin),
    .s(s),
    .c(c2)
);

// Carry final é OR dos dois carries parciais
assign cout = c1 | c2;

endmodule
