module bin_gray(input clk,reset,
		output reg [3:0]gray);
	
	reg q2,q1,q0;
	reg [3:0] bin;
	
	always @ (posedge clk)
	begin
		if (reset)
		begin
			bin = 4'b0;
			gray = 4'b0;
		end
		else
		begin
			bin = bin + 1'b1;
			q2 = bin[3] ^ bin[2];
			q1 = bin[2] ^ bin[1];
			q0 = bin[1] ^ bin[0];
			gray = {bin[3], q2, q1, q0};
		end
 end
endmodule
