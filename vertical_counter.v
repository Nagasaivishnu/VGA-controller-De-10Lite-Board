module vertical_counter (
    input clk_25,
    input enable_V_counter,
    output reg[15:0] v_counter_value  =0
);
    always @(posedge clk_25) begin
    if( enable_V_counter == 1'b1) begin
            if(v_counter_value < 524)begin
                v_counter_value <= v_counter_value + 16'd1;
            end
            else begin
             v_counter_value <= 0;
            end
        end
    end
endmodule