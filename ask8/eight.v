module kbd_protocol (reset, clk, ps2clk, ps2data, scancode, flag);
    input            reset, clk, ps2clk, ps2data;
    output reg [7:0] scancode;
    output reg       flag;
    
    //Synchronize ps2clk to local clock and check for falling edge;
    reg [7:0] ps2clksamples; //Stores last 8 ps2clk samples
    
    always @(posedge clk or posedge reset)
        if(reset) ps2clksamples <= 8'd0;
        else ps2clksamples <= {ps2clksamples[7:0],ps2clk};
    
    wire fall_edge; //indicates a falling edge at ps2clk
    assign fall_edge = (ps2clksamples[7:4]==4'hF)&(ps2clksamples[3:0]==4'h0);
    
    reg [9:0] shift; //Stores a serial package, excluding the stop bit;
    reg [3:0] cnt;  // Used to count the pswdata samples stored so far
    reg       f0;   // Used to indicate that f0 was encountered earlier
    
    /*A simple FSM is implemented here. Grab a whole package, check its parity validity and output it in the scancode only if the 
    previous read value of the package was F0 that is, we only trace when a button is released, NOT when it is pressed.*/
    always @(posedge clk or posedge reset) begin
        flag <= 1'b0;
        if (reset) begin
            cnt <= 4'd0; scancode <= 8'd0; shift <= 10'd0; f0 <= 1'b0; flag <= 1'b0;
        end
        else if (fall_edge) begin
            if (cnt==4'd10) begin // We just received what should be the stop bit
                cnt <= 0;
                if ((shift[0] == 0) && (ps2data == 1) && (^shift[9:1] == 1)) begin // A well received serial packet
                    if (f0) begin // following a scancode of f0. So a key is released!
                        scancode <= shift[8:1]; f0 <= 0; flag <= 1'b1;
                    end
                else if (shift[8:1] == 8'hF0) f0 <= 1'b1;
                end // All other packets have to do with key presses and are ignored
            end
            else begin
                shift <= {ps2data, shift[9:1]}; // Shift right since LSB first is transmitted
                cnt <= cnt + 1;
            end
        end
    end
endmodule

module previous_key (reset, clk, scancode, flag, left, right, operator);
    input            reset, clk, flag;
    input      [7:0] scancode;
    output reg [2:0] operator;
    output reg [7:0] left, right;
    reg              empty;
    
    always @(posedge clk or posedge reset)
        if (reset) begin
            left <= 8'd0;
            right <= 8'd0;
            operator <= 3'b111;
            empty <= 1'd1;
        end
        else if (flag) begin
            if (scancode==8'h79 || scancode==8'h7B || scancode==8'h7C || scancode==8'h4A) begin
                operator <= (scancode == 8'h79) ? 3'b000 :
                            (scancode == 8'h7B) ? 3'b001 :
                            (scancode == 8'h7C) ? 3'b010 :
                            (scancode == 8'h4A) ? 3'b011 : 3'b111;
            end
            else begin
                if (empty) begin
                    right <= scancode;
                    empty <= 1'd0;
                end
                else begin
                    left <= right;
                    right <= scancode;
                end
            end
        end
endmodule

module scan2bin (scan, bin);
    input  [7:0]scan;
    output [3:0]bin;
    
    assign bin = (scan == 8'h45) ? 4'b0000 :
                 (scan == 8'h16) ? 4'b0001 :
                 (scan == 8'h1E) ? 4'b0010 :
                 (scan == 8'h26) ? 4'b0011 :
                 (scan == 8'h25) ? 4'b0100 :
                 (scan == 8'h2E) ? 4'b0101 :
                 (scan == 8'h36) ? 4'b0110 :
                 (scan == 8'h3D) ? 4'b0111 :
                 (scan == 8'h3E) ? 4'b1000 :
                 (scan == 8'h46) ? 4'b1001 : 4'b1111;
endmodule

module operation (left, right, operator, div_result, result);
    input  [3:0] left, right, div_result;
    input  [2:0] operator;
    output [3:0] result;
    
    assign result = (operator == 3'b000) ? left+right :
                    (operator == 3'b001) ? left-right :
                    (operator == 3'b010) ? left[0]*right[0] :
                    (operator == 3'b011) ? div_result : 4'b0000;
endmodule

module bin2seg (bin, operator, seg);
    input      [3:0] bin;
    input      [2:0] operator;
    output reg [6:0] seg;
    
    always @(operator)
        if (operator==3'b111) seg <= 7'b0001000;
        else begin
            seg <= (bin == 4'b0000) ? 7'b1110111 :
                   (bin == 4'b0001) ? 7'b0010010 :
                   (bin == 4'b0010) ? 7'b1011101 :
                   (bin == 4'b0011) ? 7'b1011011 :
                   (bin == 4'b0100) ? 7'b0111010 :
                   (bin == 4'b0101) ? 7'b1101011 :
                   (bin == 4'b0110) ? 7'b1101111 :
                   (bin == 4'b0111) ? 7'b1010010 :
                   (bin == 4'b1000) ? 7'b1111111 :
                   (bin == 4'b1001) ? 7'b1111011 :
                   (bin == 4'b1010) ? 7'b1111110 :
                   (bin == 4'b1011) ? 7'b0101111 :
                   (bin == 4'b1100) ? 7'b1100101 :
                   (bin == 4'b1101) ? 7'b0011111 :
                   (bin == 4'b1110) ? 7'b1101101 :
                   (bin == 4'b1111) ? 7'b1101100 : 7'b0001000;
        end
endmodule

module scan_2_7seg (scan, ss);
    input  [7:0] scan;
    output [7:0] ss;
    
    assign ss = (scan == 8'h45) ? 8'b01111110 :
                (scan == 8'h16) ? 8'b00110000 :
                (scan == 8'h1E) ? 8'b01101101 :
                (scan == 8'h26) ? 8'b01111001 :
                (scan == 8'h25) ? 8'b00110011 :
                (scan == 8'h2E) ? 8'b01011011 :
                (scan == 8'h36) ? 8'b01011111 :
                (scan == 8'h3D) ? 8'b01110010 :
                (scan == 8'h3E) ? 8'b01111111 :
                (scan == 8'h46) ? 8'b01111011 : 8'b10000000;
endmodule

module eight (reset, clk, ps2clk, ps2data, left, right, result);
    input reset, clk, ps2clk, ps2data;
    output [7:0] left, right, result;
    wire   [7:0] scan, lscan, rscan;
    wire         flag;
    wire   [3:0] l, r, res, div_res;
    wire   [2:0] operator;
    
    kbd_protocol kbd (reset, clk, ps2clk, ps2data, scan, flag);
    previous_key pk (reset, clk, scan, flag, lscan, rscan, operator);
    
    scan2bin sb1 (lscan, l);
    scan2bin sb2 (rscan, r);
    
    division div (reset, clk, l, r, div_res);
    operation op (l, r, operator, div_res, res);
    
    scan_2_7seg lft(lscan, left);
    scan_2_7seg rgt(rscan, right);
    
    bin2seg bs (res, operator, result);
endmodule
