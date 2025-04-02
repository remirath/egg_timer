`timescale 1ns / 1ps
`include "main.v"

module main_tb;

    // Inputs
    reg cook_time;
    reg start;
    reg mins_raw;
    reg secs_raw;
    reg enable;
    reg rst;
    reg clk;
    
    // Outputs
    wire [6:0] seg;
    wire [3:0] an;
    wire LED_on;
    wire LED_en;
    
    // Internal signals
    wire mins;  // Debounced mins
    wire secs;  // Debounced secs
    wire [11:0] count;  // From countdown_timer (not used here)
    wire clk_5MHz;  // Simulated as clk
    
    // Instantiate the Unit Under Test (UUT)
    main uut (
        .cook_time(cook_time),
        .start(start),
        .mins_raw(mins_raw),
        .secs_raw(secs_raw),
        .enable(enable),
        .rst(rst),
        .clk(clk),
        .seg(seg),
        .an(an),
        .LED_on(LED_on),
        .LED_en(LED_en)
    );
    
    // Clock generation (simulate 5 MHz clock)
    initial begin
        clk = 0;
        forever #100 clk = ~clk;  // 200 ns period = 5 MHz
    end
    
    // Assign clk_5MHz to clk for simulation
    assign clk_5MHz = clk;
    
    // Test procedure
    initial begin

        $dumpfile("main_tb.vcd");
        $dumpvars(0,main_tb);

        // Initialize inputs
        cook_time = 0;
        start = 0;
        mins_raw = 0;
        secs_raw = 0;
        enable = 1;  // Enable FSM transitions
        rst = 1;
        
        // Reset pulse
        #1000;  // Wait 1 us for reset
        rst = 0;
        $display("Time: %0t | State: %0d | count_in: %d", $time, uut.state, uut.count_in);
        
        // Test 1: Start in INIT, press mins, check no increment
        #2000;  // Wait for stability
        mins_raw = 1;  // Press mins button
        #2000;  // Wait >1 ms for debounce (10,000 cycles at 5 MHz = 2 us)
        mins_raw = 0;
        #1000;
        $display("Test 1 - INIT, mins pressed | State: %0d | count_in: %d (Expected: 0)", 
                 uut.state, uut.count_in);
        
        // Test 2: Enter TCONFIG, press mins, check increment
        cook_time = 1;  // Enter TCONFIG
        #2000;
        mins_raw = 1;
        #2000;  // Wait for debounce
        mins_raw = 0;
        #1000;
        $display("Test 2 - TCONFIG, mins pressed | State: %0d | count_in: %d (Expected: 60)", 
                 uut.state, uut.count_in);
        
        // Test 3: Stay in TCONFIG, press secs, check increment
        #2000;
        secs_raw = 1;
        #2000;  // Wait for debounce
        secs_raw = 0;
        #1000;
        $display("Test 3 - TCONFIG, secs pressed | State: %0d | count_in: %d (Expected: 61)", 
                 uut.state, uut.count_in);
        
        // Test 4: Exit TCONFIG to PAUSE, press secs, check no increment
        cook_time = 0;  // Move to PAUSE
        #2000;
        secs_raw = 1;
        #2000;  // Wait for debounce
        secs_raw = 0;
        #1000;
        $display("Test 4 - PAUSE, secs pressed | State: %0d | count_in: %d (Expected: 61)", 
                 uut.state, uut.count_in);
        
        // Test 5: Go to RESUME, press mins, check no increment
        start = 1;  // Move to RESUME
        #2000;
        mins_raw = 1;
        #2000;  // Wait for debounce
        mins_raw = 0;
        #1000;
        $display("Test 5 - RESUME, mins pressed | State: %0d | count_in: %d (Expected: 61)", 
                 uut.state, uut.count_in);
        
        // Test 6: Back to TCONFIG from RESUME, press mins, check increment
        cook_time = 1;  // Back to TCONFIG
        #2000;
        mins_raw = 1;
        #2000;  // Wait for debounce
        mins_raw = 0;
        #1000;
        $display("Test 6 - TCONFIG from RESUME, mins pressed | State: %0d | count_in: %d (Expected: 121)", 
                 uut.state, uut.count_in);
        
        // End simulation
        #2000;
        $finish;
    end
    
    // Monitor state and count_in changes
    initial begin
        $monitor("Time: %0t | State: %0d | cook_time: %b | mins: %b | secs: %b | count_in: %d", 
                 $time, uut.state, cook_time, mins, secs, uut.count_in);
    end

endmodule