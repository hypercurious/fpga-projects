module sync_counter_8bit(clear, clock, load, start_stop, count, data);
    input  [7:0] data;
    output [7:0] count;
    input start_stop, load, clock, clear;
    
    sync_counter_4bit c0(clear, clock, load, start_stop, count[3:0], data[3:0]);
    sync_counter_4bit c1(clear, clock, load, (&count[3:0]), count[7:4], data[7:4]);
endmodule
