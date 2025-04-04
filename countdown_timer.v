module countdown_timer(
    input wire clk,        
    input wire rst,          
    input wire start,          
    input wire [11:0] load_in, 
    output wire [11:0] count_out,
    output reg done           
);

    reg load, enable;     
    assign count_out = count;                                       

    c_counter_binary_0 counter (
        .CLK(clk),         
        .SCLR(rst),         
        .CE(enable),       
        .LOAD(load),           
        .L(load_in),    
        .Q(count)      
    );

    reg [1:0] state, next_state;
    parameter IDLE = 0, LOAD = 1, COUNT = 2;

    //State Register
    always @ (posedge clk or posedge rst) begin
        if (rst) state <= IDLE;
        else state <= next_state;
    end

    //Next State Calculations
    always @(*) begin
        load = 0;
        enable = 0;
        done = 0;
        next_state = state;

        case (state)
            IDLE: if (start) next_state = LOAD;
            LOAD: begin
                load = 1;           
                next_state = COUNT;
            end
            COUNT: begin
                enable = 1;
                if (count == 12'b0) begin
                    done = 1;       
                    next_state = IDLE;
                end
            end
            default: next_state = IDLE;
        endcase
    end

endmodule