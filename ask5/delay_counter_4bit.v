module counter_4bit(clear, clock, load, start_stop, count, data);
    input      [3:0] data;
    output reg [3:0] count;
    input start_stop, load, clock, clear;
    
    always @(posedge clock or posedge clear)
        if (clear) count <= #20 0;
        else if (load) count <= #20 data;
        else if (start_stop) count <= #20 count + 1;
endmodule
