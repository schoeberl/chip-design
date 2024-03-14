module counter (
    input wire clk,
    input wire reset,
    output reg [3:0] out
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        out <= 4'b0000; // Reset the counter
    end else begin
        out <= out + 1; // Increment the counter
    end
end

endmodule