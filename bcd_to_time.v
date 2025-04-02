`timescale 1ns / 1ps

module bcd_to_time(
    input [11:0] count,
    output reg [15:0] time_out
    );

    reg [3:0] min_tens;
    reg [3:0] min_ones;
    reg [3:0] sec_tens;
    reg [3:0] sec_ones;
    
    always @ (*) begin
        min_tens = (count / 600);
        min_ones = (count / 60) % 10;
        
        sec_tens = (count % 60) / 10;
        sec_ones = (count % 60) % 10;

        time_out = {min_tens, min_ones, sec_tens, sec_ones};
    end
    
    
endmodule
