module uart_tx
#(
   parameter CLK_FRE = 50,         //50MHz
   parameter DATA_WIDTH = 16,       
   parameter PARITY_ON = 0,        //1 = parity check on, DO NOT use for now
   parameter PARITY_TYPE = 0,     
   parameter BAUD_RATE = 9600      
)
(   input                       i_clk_sys,      
   input                       i_rst_n,        
   input [DATA_WIDTH-1 : 0]    i_data_tx,      
   input                       i_data_valid,   
   output reg                  o_uart_tx       
   );
   
           reg [2:0] r_current_state;  
           reg [2:0] r_next_state;     
               
           localparam STATE_IDLE = 3'b000;         
           localparam STATE_START = 3'b001;       
           localparam STATE_DATA = 3'b011;         
           localparam STATE_PARITY = 3'b100;       
           localparam STATE_END = 3'b101;         
           
           localparam CYCLE = CLK_FRE * 1000000 / BAUD_RATE;   
           
           reg baud_valid;                         
           reg [15:0] baud_cnt;                    
           reg baud_pulse;                                 
           reg [3:0]   r_tx_cnt;    

           always@(posedge i_clk_sys or negedge i_rst_n)
               begin
                   if(!i_rst_n)
                       baud_cnt <= 16'h0000;
                   else if(!baud_valid)
                       baud_cnt <= 16'h0000;
                   else if(baud_cnt == CYCLE - 1)
                       baud_cnt <= 16'h0000;
                   else
                       baud_cnt <= baud_cnt + 1'b1;
               end
               
           always@(posedge i_clk_sys or negedge i_rst_n)
               begin
                   if(!i_rst_n)
                       baud_pulse <= 1'b0;
                   else if(baud_cnt == CYCLE/2-1)
                       baud_pulse <= 1'b1;
                   else
                       baud_pulse <= 1'b0;
               end
           
           always@(posedge i_clk_sys or negedge i_rst_n)
               begin
                   if(!i_rst_n)
                       r_current_state <= STATE_IDLE;
                   else if(!baud_valid)
                       r_current_state <= STATE_IDLE;
                   else if(baud_valid && baud_cnt == 16'h0000)
                       r_current_state <= r_next_state;
               end
           
           always@(*)
               begin
                   case(r_current_state)
                       STATE_IDLE:     r_next_state <= STATE_START;
                       STATE_START:    r_next_state <= STATE_DATA;
                       STATE_DATA:
                           if(r_tx_cnt == DATA_WIDTH)
                               begin
                                   if(PARITY_ON == 0)
                                       r_next_state <= STATE_END;
                                   else
                                       r_next_state <= STATE_PARITY;
                               end
                           else
                               begin
                                       r_next_state <= STATE_DATA;
                               end
                       STATE_PARITY:   r_next_state <= STATE_END;
                       STATE_END:      r_next_state <= STATE_IDLE;
                       default:;
                   endcase
               end
   
   
   reg [DATA_WIDTH-1 : 0]      r_data_tx;
   reg                         r_parity_check;
  
   always@(posedge i_clk_sys or negedge i_rst_n)
       begin
           if(!i_rst_n)
               begin
                   baud_valid  <= 1'b0;
                   r_data_tx   <= 'd0;
                   o_uart_tx   <= 1'b1;
                   r_tx_cnt    <= 4'd0;
                   r_parity_check <= 1'b0;
               end
           else
               case(r_current_state)
                   STATE_IDLE:begin
                           o_uart_tx   <= 1'b1;
                           r_tx_cnt    <= 4'd0;
                           r_parity_check <= 4'd0;
                           if(i_data_valid)
                               begin
                                   baud_valid <= 1'b1;
                                   r_data_tx <= i_data_tx;
                               end
                       end
                   STATE_START:begin
                           if(baud_pulse)
                               o_uart_tx   <= 1'b0;
                       end
                   STATE_DATA:begin
                           if(baud_pulse)
                               begin
                                   r_tx_cnt <= r_tx_cnt + 1'b1;
                                   o_uart_tx <= r_data_tx[0];
                                   r_parity_check <= r_parity_check + r_data_tx[0];
                                   r_data_tx <= {1'b0 ,r_data_tx[DATA_WIDTH-1:1]};
                               end
                       end
                   STATE_PARITY:begin
                           if(baud_pulse)
                               begin
                                   if(PARITY_TYPE == 1)
                                       o_uart_tx <= r_parity_check;
                                   else
                                       o_uart_tx <= r_parity_check + 1'b1;
                               end
                       end
                   STATE_END:begin
                           if(baud_pulse)
                               begin
                                   o_uart_tx <= 1'b1;
                                   baud_valid <= 1'b0;
                               end
                       end
                   default:;
               endcase
       end

endmodule
