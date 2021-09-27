module kbd_decoder(reset, clk, scancode, flag, subregion, color);
	input 			  reset, clk, flag;
	input		[7:0] scancode;	
	reg				  rflag;
	output reg	[7:0] subregion, color;
	
	always @(posedge clk or posedge reset)
		if(reset) begin
			subregion <= 8'd0;
			color <= 8'd0;
			rflag <= 1'b0;
		end
		else if (flag) begin
			if (scancode==8'h16 || scancode==8'h1E || scancode==8'h26 || scancode==8'h25 || scancode==8'h2E || scancode==8'h36 || scancode==8'h3D || scancode==8'h3E || scancode==8'h46) begin
				subregion <= scancode;
				rflag <= 1'b1;
			end
			if (rflag==1'b1 && (scancode==8'h2D || scancode==8'h34 || scancode==8'h32)) begin
				color <= scancode;
			end
		end
endmodule
