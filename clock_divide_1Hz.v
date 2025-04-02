`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2025 10:51:29 PM
// Design Name: 
// Module Name: clock_1Hz
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


module clock_divide_1Hz(
    input wire clk,      
    input wire rst,       
    output reg clk_out      
);

    parameter N = 5000000;
    reg [22:0] counter;

    always @(posedge clk) begin
        if (rst) begin
            counter <= 0;
            clk_out <= 0;
        end else begin
            counter <= counter + 1;
            if (counter == (N/2 - 1)) begin
                clk_out <= ~clk_out;    
            end
            if (counter == N - 1) begin
                counter <= 0;
            end
        end
    end
endmodule