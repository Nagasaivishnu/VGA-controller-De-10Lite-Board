`timescale 1ns/1ps

module testbench;
    reg clk ;
    wire Hsynq , Vsynq;
    wire [3:0] Red,Green,Blue;

    top DUT (clk,Hsynq,Vsynq,Red,Green,Blue);
    initial begin
        clk = 1'b0;
    end
    always begin #10 clk = ~clk;end

    initial begin
    $dumpfile("gkt.vcd");
    $dumpvars(0,testbench);

     
    end
endmodule