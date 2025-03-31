`include debounce.v

module main(
    input cook_time, 
    input start, 
    input mins_raw, 
    input secs_raw, 
    input enable, 
    input rst, 
    input clk,
    output reg [7:0] seg, 
    output reg [4:0] an, 
    output LED_on, 
    output LED_en
);

wire done, mins, secs, clk_5MHz, clk_1Hz;

wire reg [11:0] count_out;
reg [11:0] count_in;
reg [1:0] state, next_state;
parameter INIT = 0, TCONFIG = 1, PAUSE = 2, RESUME = 3;


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
            next_state = start ? PAUSE : INIT;
            if (cook_time) next_state = TCONFIG;
        end
        tconfig: 
            next_state = cook_time ? TCONFIG : PAUSE;
        pause: begin
            next_state = start ? RESUME : PAUSE;
            if (cook_time) next_state = TCONFIG;
        end
        resume: begin
            next_state = done ? INIT : RESUME;
            if (cook_time) next_state = TCONFIG;
        end
        default : next_state = INIT;
                     
    endcase
end

//State Register
always @ (posedge clk, posedge rst) begin
    if (rst) begin
        state <= INIT;
        count <= 0;
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