
module main(
    input cook_time, 
    input start, 
    input mins_raw, 
    input secs_raw, 
    input enable, 
    input rst, 
    input clk,  
    output reg [6:0] seg, 
    output reg [3:0] an, 
    output reg LED_on, 
    output reg LED_en
);

wire done, mins, secs, clk_5MHz, clk_1Hz, clk_200Hz, min_tens, min_ones, sec_tens, sec_ones;

wire [11:0] count;
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

clock_divide_200Hz clock_200Hz(
    .clk(clk_5MHz),
    .rst(rst),
    .clk_out(clk_200Hz)
); //200Hz

//BCD to time for 7-segment
bcd_to_time converter(
    .count(count),
    .min_tens(min_tens),
    .min_ones(min_ones),
    .sec_tens(sec_tens),
    .sec_ones(sec_ones)
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
    .count_out(count),
    .done(done)
);

//Next State Calculations
always @ (state, cook_time, start) begin
    case(state)
        INIT: begin
            next_state = start ? PAUSE : INIT;
            if (cook_time) next_state = TCONFIG;
        end
        TCONFIG: 
            next_state = cook_time ? TCONFIG : PAUSE;
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
    end

    else if (enable) state <= next_state;
    else state <= PAUSE;
end

//Output Calculations
always @ (state, cook_time, start) begin
    if (enable) LED_en = 1;
    else if (&state) LED_on = 1;
end


endmodule