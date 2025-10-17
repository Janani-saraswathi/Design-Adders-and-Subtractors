// 4-bit Adder and Subtractor
module AdderandSubtractor (
    input [3:0] A, B,     // 4-bit inputs
    input mode,           // mode = 0 -> Add, mode = 1 -> Subtract
    output [3:0] Result,  // 4-bit result output
    output CarryOut        // Carry or Borrow indicator
);
    wire [3:0] B_comp;    // Complemented B if subtraction

    // If mode=1, take 2's complement of B (invert and add 1)
    assign B_comp = B ^ {4{mode}};    // XOR for conditional inversion
    assign {CarryOut, Result} = A + B_comp + mode;

endmodule
