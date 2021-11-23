module ms_stopwatch (clk, freeze, real_ms, disp_ms);
    input clk, freeze;
    input [9:0] real_ms;
    output reg [9:0] disp_ms;
    reg [9:0] temp;
    
    always @(posedge clk)
        if (!freeze) begin
            temp <= real_ms;
            disp_ms <= real_ms;
		  end
        else disp_ms <= temp;
endmodule
