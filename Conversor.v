module Conversor (
	input clk,
	input rst_n,
	
	output reg saida
);

reg [24:0] cnt;
always @ (posedge clk, negedge rst_n)
begin 	
	if (!rst_n) begin
		cnt <= 25'd0;
		saida <= 0;
	end	
	else begin 
		cnt <= cnt + 25'b1;
		
		if (cnt == 25'd25000000) begin
			saida =~ saida;
		end
	end
end	
endmodule
		
	
	
