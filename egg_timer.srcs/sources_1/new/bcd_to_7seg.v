`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2025 10:34:24 PM
// Design Name: 
// Module Name: bcd_to_7seg
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


module bcd_to_7seg(
    input wire [15:0] bcd,
    input wire rst,
    input wire clk,
    output reg [6:0] seg,
    output reg [3:0] an
    );


    reg [3:0] current_digit;
    reg [1:0] digit;

    //Digit selection 125Hz refresh rate
    always @ (posedge clk, posedge rst) begin
        if (rst) digit <= 0; 
        else digit <= digit + 1;
    end

    //Segment multiplexing
    always @ (*) begin
        case (digit)
            2'd0: begin
                current_digit = bcd[15:12];
                an = 4'b1000;
            end
            2'd1: begin
                current_digit = bcd[11:8];
                an = 4'b0100;
            end
            2'd2: begin
                current_digit = bcd[7:4];
                an = 4'b0010;
            end
            2'd3: begin
                current_digit = bcd[3:0];
                an = 4'b0001;
            end
            default: begin
                current_digit = 4'b0000;
                an = 4'b0000;
            end
        endcase 

    end

    //Digit decoder
    always @ (*) begin
        case(current_digit)
            4'd0: seg = 7'b0000001;  // 0 
            4'd1: seg = 7'b1001111;  // 1 
            4'd2: seg = 7'b0010010;  // 2
            4'd3: seg = 7'b0000110;  // 3
            4'd4: seg = 7'b1001100;  // 4
            4'd5: seg = 7'b0100100;  // 5
            4'd6: seg = 7'b0100000;  // 6
            4'd7: seg = 7'b0001111;  // 7
            4'd8: seg = 7'b0000000;  // 8
            4'd9: seg = 7'b0000100;  // 9
            default: seg = 7'b1111111; //All off 
        endcase
    end 

endmodule
