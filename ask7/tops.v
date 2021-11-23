module tops (reset, clk, freeze, left, right, msled);
    input reset, clk, freeze;
    output [6:0] left, right;
    output [9:0] msled;
    wire [2:0] ts;
    wire [3:0] ss, ts_out, ss_out, micro, msec, ms_out;

    OneHertz      i0 (reset, clk, en_nxt);
    TenHertz      t0 (reset, clk, tn_nxt);
    
    secondcounter i1 (reset, clk, en_nxt, ts, ss);
    singleseconds i2 (reset, clk, tn_nxt, msec, micro);
    
    stopwatch     s1 (clk, freeze, {1'b0,ts}, ts_out);
    stopwatch     s2 (clk, freeze, ss, ss_out);
    ms_stopwatch  s3 (clk, freeze, msec, ms_out);
    
    bin_2_7       lt (ts_out, left);
    bin_2_7       rt (ss_out, right);
    bin_2_led     ml (ms_out, msled);
endmodule

