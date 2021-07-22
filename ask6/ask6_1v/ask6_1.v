module ask6_1(dip,s);
    input [7:0]dip;
    output [7:0]s;
    
    assign s[7:0] = dip[7:0];
endmodule