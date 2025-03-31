module debounce(
    input clk,            
    input rst,            
    input btn,         
    output reg debounced_btn
);

  parameter N = 50000; 

  reg [15:0] counter;
  reg btn_sync;  

  // Double flopping
  always @ (posedge clk, posedge rst) begin
    if (rst) btn_sync <= 0;
    else btn_sync <= btn;
  end

  // Debouncing
  always @ (posedge clk, posedge rst) begin
    if (rst) begin
        debounced_btn <= 0;
        counter <= 0;
    end
    
    else if (btn_sync != debounced_btn) begin
        counter <= counter + 1;
        if (counter >= N) begin
            debounced_btn <= btn_sync;
            counter <= 0; 
        end
    end
    
    else counter <= 0;
  end

endmodule
