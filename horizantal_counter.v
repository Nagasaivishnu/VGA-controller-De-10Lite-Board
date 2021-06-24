`timescale 1ns/1ps
module horizantal_counter (
    input clk_25,
    output reg enable_V_counter = 0,
    output reg [15:0] H_counter_value =0 
);
    always @(posedge clk_25) begin
        if(H_counter_value < 799) begin
            H_counter_value <= H_counter_value + 16'd1;
            enable_V_counter <= 0;
        end
        else begin
            H_counter_value <= 0;
            enable_V_counter <=1;
        end
    end
endmodule