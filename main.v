`timescale 1ns / 1ps
`include "debounce.v"
`include "countdown_timer.v"
`include "clock_divide_500Hz.v"
`include "clock_divide_1Hz.v"
`include "bcd_to_time.v"
`include "bcd_to_7seg.v"

module main(
    input cook_time, 
    input start, 
    input mins_raw, 
    input secs_raw, 
    input enable, 
    input rst, 
    input clk,  
    output wire [6:0] seg, 
    output wire [3:0] an, 
    output reg LED_on, 
    output reg LED_en
);

wire done, mins, secs, clk_5MHz, clk_1Hz, clk_500Hz;
reg timer_on;
wire [11:0] count_out;
wire [15:0] time_out;
reg [11:0] count_in;
reg [1:0] state, next_state; 
parameter INIT = 0, TCONFIG = 1, PAUSE = 2, RESUME = 3;

//Clocking wizard
clk_wiz_0 clock_5MHz(
    .clk_out1(clk_5MHz),
    .reset(rst),
    .locked(),
    .clk_in1(clk)
);

//Clock division
clock_divide_1Hz clock_1Hz(
    .clk(clk_5MHz),
    .rst(rst),
    .clk_out(clk_1Hz)
); //1Hz

clock_divide_500Hz clock_500Hz(
    .clk(clk_5MHz),
    .rst(rst),
    .clk_out(clk_500Hz)
); //500Hz

//BCD to time for 7-segment
bcd_to_time converter(
    .count(count_out),
    .time_out(time_out)
);

//BCD decoder and multiplexing
bcd_to_7seg display(
    .bcd(time_out),
    .rst(rst),
    .clk(clk_500Hz),
    .seg(seg),
    .an(an)
);

// Button debouncing
debounce mins_debounce( 
    .clk(clk_5MHz),
    .rst(rst),
    .btn(mins_raw),
    .debounced_btn(mins)
);  //mins
debounce secs_debounce( 
    .clk(clk_5MHz),
    .rst(rst),
    .btn(secs_raw),
    .debounced_btn(secs)
);  //secs

//Countdown timer
countdown_timer timer(
    .clk(clk_1Hz),
    .rst(rst),
    .start(start),
    .load_in(count_in),
    .count_out(count_out),
    .done(done)
);

//Next State Calculations
always @ (state, cook_time, start) begin
    case(state)
        INIT: begin
            next_state = start ? START : INIT;
            if (cook_time) next_state = TCONFIG;
        end
        TCONFIG: begin
            next_state = cook_time ? TCONFIG : PAUSE;
        end
        PAUSE: begin
            next_state = start ? RESUME : PAUSE;
            if (cook_time) next_state = TCONFIG;
        end
        RESUME: begin
            next_state = done ? INIT : RESUME;
            if (cook_time) next_state = TCONFIG;
        end
        default : next_state = INIT;
                     
    endcase
end

//State Register
always @ (posedge clk_5MHz, posedge rst) begin
    if (rst) begin
        state <= INIT;
        count_in <= 0;
        timer_on <= 0;
    end

    else if (enable) state <= next_state;
    else state <= PAUSE;
end

//Output Calculations
always @ (state, cook_time, start, mins, secs) begin
    if (enable) LED_en <= 1;
    else LED_en <= 0;
    case(state)
        INIT: begin 
            LED_on <= 0;
            timer_on <= 0;
        end
        TCONFIG: begin
            LED_on <= 0;
            timer_on <= 0;
            if (mins) count_in <= count_in + 60;
            else if (secs) count_in <= count_in + 1;
        end
        PAUSE: begin 
            LED_on <= 0;
            timer_on <= 0;
        end
        RESUME: begin
            LED_on <= 1;
            timer_on <= 0;
        end
    endcase
end


endmodule