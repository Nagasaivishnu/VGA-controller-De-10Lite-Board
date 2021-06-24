
module clock_25( clk ,clk_25 );
output reg clk_25;
input clk ;
initial begin
    clk_25 = 0;
end
always @(posedge clk)
begin
    clk_25 <= ~clk_25;	
end
endmodule