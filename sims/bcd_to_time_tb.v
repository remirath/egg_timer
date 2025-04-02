`timescale 1ns / 1ps
`include "bcd_to_time.v"
//////////////////////////////////////////////////////////////////////////////////
// Testbench for bcd_to_time module
//////////////////////////////////////////////////////////////////////////////////

module bcd_to_time_tb;

    // Inputs
    reg [11:0] count;
    
    // Outputs
    wire [15:0] time_out;
    
    // Instantiate the Unit Under Test (UUT)
    bcd_to_time uut (
        .count(count),
        .time_out(time_out)
    );
    
    // Test procedure
    initial begin

        $dumpfile("bcd_to_time_tb.vcd");
        $dumpvars(0,bcd_to_time_tb);

        // Initialize Inputs
        count = 0;
        
        // Wait 100 ns for global reset
        #100;
        
        // Test case 1: 0 minutes, 0 seconds (00:00)
        count = 12'd0;
        #10;
        $display("Test 1 - Input: %d, Output: %d%d:%d%d", 
                 count, time_out[15:12], time_out[11:8], 
                 time_out[7:4], time_out[3:0]);
        
        // Test case 2: 1 minute, 30 seconds (01:30)
        count = 12'd90;
        #10;
        $display("Test 2 - Input: %d, Output: %d%d:%d%d", 
                 count, time_out[15:12], time_out[11:8], 
                 time_out[7:4], time_out[3:0]);
        
        // Test case 3: 5 minutes, 45 seconds (05:45)
        count = 12'd345;
        #10;
        $display("Test 3 - Input: %d, Output: %d%d:%d%d", 
                 count, time_out[15:12], time_out[11:8], 
                 time_out[7:4], time_out[3:0]);
        
        // Test case 4: 59 minutes, 59 seconds (59:59)
        count = 12'd3599;
        #10;
        $display("Test 4 - Input: %d, Output: %d%d:%d%d", 
                 count, time_out[15:12], time_out[11:8], 
                 time_out[7:4], time_out[3:0]);
        
        // Test case 5: Random case - 23 minutes, 17 seconds (23:17)
        count = 12'd1397;
        #10;
        $display("Test 5 - Input: %d, Output: %d%d:%d%d", 
                 count, time_out[15:12], time_out[11:8], 
                 time_out[7:4], time_out[3:0]);
        
        // Finish simulation
        #100;
        $finish;
    end
    
    // Optional: Monitor changes
    initial begin
        $monitor("Time: %0t ns, Count = %d, Time Output = %h", 
                 $time, count, time_out);
    end

endmodule