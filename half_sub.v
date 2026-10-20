module half_sub
(
    input A, B,
    output Y, BORROW
);

    assign Y = (A ^ B);
    assign BORROW = (~A & B);

endmodule