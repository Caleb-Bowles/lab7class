module top
(
    input [9:0] sw,
    output [13:0] led   
);

half_sub aaa
(
    .A(sw[0]),
    .B(sw[1]),
    .Y(led[0]),
    .BORROW(led[1])
);  

wire [3:0] APlusB; 
wire [2:0] carry1; 
wire wraparound; 
wire [2:0] carry2;

ones_compliment bit1 
(
    .A(sw[2]),
    .B(sw[6]),
    .Y(APlusB[0]),
    .Cin(1'b0),
    .Cout(carry1[0])
);

ones_compliment bit2 
(
    .A(sw[3]),
    .B(sw[7]),
    .Y(APlusB[1]),
    .Cin(carry1[0]),
    .Cout(carry1[1])
);

ones_compliment bit3 
(
    .A(sw[4]),
    .B(sw[8]),
    .Y(APlusB[2]),
    .Cin(carry1[1]),
    .Cout(carry1[2])
);

ones_compliment bit4 
(
    .A(sw[5]),
    .B(sw[9]),
    .Y(APlusB[3]),
    .Cin(carry1[2]),
    .Cout(wraparound)
);


ones_compliment endcarrybit1 
(
    .A(APlusB[0]),
    .B(1'b0),
    .Y(led[2]),
    .Cin(wraparound),
    .Cout(carry2[0])
);

ones_compliment endcarrybit2 
(
    .A(APlusB[1]),
    .B(1'b0),
    .Y(led[3]),
    .Cin(carry2[0]),
    .Cout(carry2[1])
);

ones_compliment endcarrybit3 
(
    .A(APlusB[2]),
    .B(1'b0),
    .Y(led[4]),
    .Cin(carry2[1]),
    .Cout(carry2[2])
);

ones_compliment endcarrybit4 
(
    .A(APlusB[3]),
    .B(1'b0),
    .Y(led[5]),
    .Cin(carry2[2]),
    .Cout()
);

twos_compliment twosconversion
(
    .A(sw[9:2]), 
    .Y(led[13:6])
);

endmodule

