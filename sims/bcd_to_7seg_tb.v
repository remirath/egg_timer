`timescale 1ns / 1ps
`include "bcd_to_7seg.v"
`include "bcd_to_time.v"

module bcd_to_7seg_tb;

    // Inputs to bcd_to_time
    reg [11:0] count;
    
    // Outputs from bcd_to_time
    wire [15:0] time_out;
    
    // Inputs to bcd_to_7seg
    reg rst;
    reg clk;
    
    // Outputs from bcd_to_7seg
    wire [6:0] seg;
    wire [3:0] an;
    
    // Instantiate bcd_to_time
    bcd_to_time uut_time (
        .count(count),
        .time_out(time_out)
    );
    
    // Instantiate bcd_to_7seg
    bcd_to_7seg uut_seg (
        .bcd(time_out),
        .rst(rst),
        .clk(clk),
        .seg(seg),
        .an(an)
    );
    
    // Clock generation (8 ns period ~ 125 MHz, adjusted for 125 Hz refresh)
    initial begin
        clk = 0;
        forever #4 clk = ~clk;  // 125 MHz clock for simulation (scaled for visibility)
    end
    
    // Test procedure
    initial begin
        // Initialize inputs
        count = 0;
        rst = 1;
        
        // Reset pulse
        #10;
        rst = 0;
        
        // Test case 1: 00:00
        count = 12'd0;
        #100;  // Wait for several digit cycles
        $display("Test 1 - 00:00");
        display_output();
        
        // Test case 2: 01:30
        count = 12'd90;
        #100;
        $display("Test 2 - 01:30");
        display_output();
        
        // Test case 3: 05:45
        count = 12'd345;
        #100;
        $display("Test 3 - 05:45");
        display_output();
        
        // Test case 4: 59:59
        count = 12'd3599;
        #100;
        $display("Test 4 - 59:59");
        display_output();
        
        // Test case 5: 23:17
        count = 12'd1397;
        #100;
        $display("Test 5 - 23:17");
        display_output();
        
        // End simulation
        #50;
        $finish;
    end
    
    // Task to display current output
    task display_output;
        begin
            @(posedge clk);  // Sync to clock edge
            $display("Digit %d%d (an=%b): seg=%b", 
                     time_out[15:12], time_out[11:8], an, seg);
            @(posedge clk);
            $display("Digit %d%d (an=%b): seg=%b", 
                     time_out[11:8], time_out[7:4], an, seg);
            @(posedge clk);
            $display("Digit %d%d (an=%b): seg=%b", 
                     time_out[7:4], time_out[3:0], an, seg);
            @(posedge clk);
            $display("Digit %d%d (an=%b): seg=%b", 
                     time_out[3:0], time_out[15:12], an, seg);
            $display("-----");
        end
    endtask
    
    // Dump waveform for debugging
    initial begin
        $dumpfile("bcd_to_7seg_tb.vcd");
        $dumpvars(0, bcd_to_7seg_tb);
    end

endmodule