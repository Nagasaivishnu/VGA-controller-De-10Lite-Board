
`timescale 1ns/1ps
module top (
    input clk,
    output Hsynq,
    output Vsynq,
    output [3:0] Red, Green,Blue
);
    wire clk_25;
    wire enable_V_counter;
    wire [15:0] H_counter_value;
    wire [15:0] V_counter_value;

    clock_25 clk_25M(clk ,clk_25);
    horizantal_counter VGA_H(clk_25,enable_V_counter,H_counter_value);
    vertical_counter VGA_V(clk_25,enable_V_counter,V_counter_value);

    assign Hsynq = (H_counter_value < 96) ? 1'b1:1'b0;
    assign Vsynq = (V_counter_value < 2) ? 1'b1:1'b0;

    assign Red = (H_counter_value < 784 && H_counter_value > 143 && V_counter_value <515 && V_counter_value >34) ? 4'h0:4'h0;
    assign Green= (H_counter_value < 784 && H_counter_value > 143 && V_counter_value <515 && V_counter_value >34) ? 4'hf:4'h0;
    assign Blue = (H_counter_value < 784 && H_counter_value > 143 && V_counter_value <515 && V_counter_value >34) ? 4'h0:4'h0;

endmodule