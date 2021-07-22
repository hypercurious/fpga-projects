module division (reset, clk, x, y, result);
    input            reset, clk;
    input      [3:0] x, y;
    output reg [3:0] result;
    reg        [3:0] temp;
    reg        [2:0] counter;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 3'd0;
            temp <= x;
        end
        else if (x>y) begin
            if (temp>=y) begin
                counter <= counter + 3'd1;
                temp <= temp-y;
            end
            else begin
                result <= counter;
                counter <= 3'd0;
                temp <= x;
            end
        end
        else begin
            if (x<y)       result <= 4'd0;
            else if (x==y) result <= 4'd1;
            else if (y==0) result <= 4'd15;
            else if (y==1) result <= x;
        end
    end
endmodule
