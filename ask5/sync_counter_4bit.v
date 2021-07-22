module sync_counter_4bit(clear, clock, load, start_stop, count, data);
    input   [3:0] data;
    output reg [3:0] count;
    input start_stop, load, clock, clear;
    
    always @(posedge clock)
        if (clear) count <= 0;
        else if (load) count <= data;
        else if (start_stop) count <= count + 1;
endmodule
