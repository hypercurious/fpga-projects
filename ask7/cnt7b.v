module cnt7b (reset, clk, enable, clkdiv128);
    input reset, clk, enable;
    output clkdiv128;
    reg [6:0] cnt;
    
    assign clkdiv128 = (cnt==7'd127);
    always @(posedge reset or posedge clk)
        if (reset) cnt <= 0;
        else if (enable) cnt <= cnt + 1;
endmodule

module cnt125 (reset, clk, enable, clkdiv125);
    input reset, clk, enable;
    output clkdiv125;
    reg [6:0] cnt;
    
    assign clkdiv125 = (cnt==7'd124);
    always @(posedge reset or posedge clk)
        if (reset) cnt <= 0;
        else if (enable) 
            if (clkdiv125) cnt <= 0;
            else cnt <= cnt + 1;
endmodule

module TenHertz (reset, clk, en_nxt);
    input reset, clk;
    output en_nxt;
    wire clk10Hz, first, second, third;
    
    cnt7b i0 (reset, clk, 1'b1, first);
    cnt125 i1 (reset, clk, first, second);
    cnt25 i2 (reset, clk, first & second, third);
    cnt25 i3 (reset, clk, first & second & third, clk10Hz);
    assign en_nxt = first & second & third & clk10Hz;
endmodule
