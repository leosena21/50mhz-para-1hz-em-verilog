module Conversor (
	input clk,
	input rst_n,
	
	output reg saida
);

reg [24:0] count;

always @ (posedge clk, negedge rst_n)
begin 
	
	if (!rst_n) begin
		count <= 25'd0;
		saida <= 0;
	end
	
	else begin 
		count <= count + 25'b1;
		
		if (count == 25'd25000000) begin
			saida =~ saida;
		end

	end
end	
endmodule
		
	
	
