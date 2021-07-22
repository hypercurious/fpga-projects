module stopwatch (clk, freeze, real_sec, disp_sec);
    input clk, freeze;
    input [3:0] real_sec;
    output reg [3:0] disp_sec;
    reg [3:0] temp;
    
    always @(posedge clk)
        if (!freeze) begin
            temp <= real_sec;
            disp_sec <= real_sec;
		  end
        else disp_sec <= temp;
endmodule
