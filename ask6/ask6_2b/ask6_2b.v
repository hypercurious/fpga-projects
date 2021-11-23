module ask6_2b(a,b,s,dp);
    input signed [1:0]a,b;
    wire signed [3:0]o;
    output reg dp;
    output reg [6:0]s;
    
    assign o = a*b;
    
    always @ (o) begin
        case(o)
            4'b1110: begin
                s[6:0]=7'b1011101;
                dp=1;
                end
            4'b1111: begin
                s[6:0]=7'b0010010;
                dp=1;
                end
            4'b0000: begin
                 s[6:0]=7'b1110111;
                 dp=0;
                 end
            4'b0001: begin
                 s[6:0]=7'b0010010;
                 dp=0;
                 end
            4'b0010: begin
                 s[6:0]=7'b1011101;
                 dp=0;
                 end
            4'b0100: begin
                 s[6:0]=7'b0111010;
                 dp=0;
                 end
            default: begin
                 s[6:0]=7'b0000000;
                 dp=0;
                 end
        endcase
    end
endmodule
