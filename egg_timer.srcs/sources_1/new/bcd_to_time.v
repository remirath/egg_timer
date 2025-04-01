`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2025 09:50:29 PM
// Design Name: 
// Module Name: bcd_to_time
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bcd_to_time(
    input [11:0] count,
    output [15:0] time_out
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
