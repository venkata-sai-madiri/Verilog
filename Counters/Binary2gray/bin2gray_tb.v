module bin_gray_tb;
	
	reg clk,reset;
	wire [3:0]gray;
	
	bin_gray DUT(clk,reset,gray);
	
	initial 
	begin
		clk=0;
		forever #5 clk=~clk;
	end
	
	initial begin
		@(negedge clk) reset=1'b1;
		@(negedge clk) reset=1'b0;
		#100 $finish;
	end

endmodule
