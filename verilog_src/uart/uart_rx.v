module uart_rx
#(
    parameter CLK_FRE = 50,         //50MHz clk
    parameter DATA_WIDTH = 8,       
    parameter PARITY_ON = 0,        //1 = parity check on, DO NOT use for now
    parameter PARITY_TYPE = 0,      //0 = even parity, 1 = odd parity
    parameter BAUD_RATE = 9600      
)
(
    input                           i_clk_sys,      
    input                           i_rst_n,        
    input                           i_uart_rx,      
    output reg[DATA_WIDTH-1 :0]     o_uart_data,    
    output reg                      o_ld_parity,    //parity check VALID = 1, can be linked to a LED
    output reg                      o_rx_done       
    );
    

    reg sync_uart_rx;
    always@(posedge i_clk_sys or negedge i_rst_n)
        begin
            if(!i_rst_n)
                sync_uart_rx <= 1'b1;
            else
                sync_uart_rx <= i_uart_rx;
        end
    
 
    reg [4:0] r_flag_rcv_start;
    wire w_rcv_start;
    always@(posedge i_clk_sys or negedge i_rst_n)
        begin
            if(!i_rst_n)
                r_flag_rcv_start <= 5'b11111;
            else
                r_flag_rcv_start <= {r_flag_rcv_start[3:0], sync_uart_rx};
        end
    
    

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
    
    reg [3:0]   r_rcv_cnt;     
    

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
                    if(r_rcv_cnt == DATA_WIDTH)
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
    
    
    reg[DATA_WIDTH - 1 :0] r_data_rcv;
    reg r_parity_check;
    
  
    always@(posedge i_clk_sys or negedge i_rst_n)
        begin
            if(!i_rst_n)
                begin
                    baud_valid <= 1'b0;
                    r_data_rcv <= 'd0;
                    r_rcv_cnt <= 4'd0;
                    r_parity_check <= 1'b0;
                    o_uart_data <= 'd0;
                    o_ld_parity <= 1'b0;
                    o_rx_done <= 1'b0;
                end
            else
                case(r_current_state)
                    STATE_IDLE:begin
                            r_rcv_cnt <= 4'd0;
                            r_data_rcv <= 'd0;
                            r_parity_check <= 1'b0;
                            o_rx_done <= 1'b0;
                            if(r_flag_rcv_start == 5'b00000)
                                baud_valid <= 1'b1;
                        end
                    STATE_START:begin
                            if(baud_pulse && sync_uart_rx)
                                baud_valid <= 1'b0;
                        end
                    STATE_DATA:begin
                            if(baud_pulse)
                                begin
                                    r_data_rcv <= {sync_uart_rx, r_data_rcv[DATA_WIDTH-1 : 1]}; 
                                    r_rcv_cnt <= r_rcv_cnt + 1'b1;                         
                                    r_parity_check <= r_parity_check + sync_uart_rx;   
                                end
                        end
                    STATE_PARITY:begin
                            if(baud_pulse)
                                begin
                                    if(r_parity_check + sync_uart_rx == PARITY_TYPE)
                                        o_ld_parity <= 1'b1;
                                    else
                                        o_ld_parity <= 1'b0;
                                end
                            else
                                        o_ld_parity <= o_ld_parity;
                        end
                    STATE_END:begin
                            if(baud_pulse)
                                begin
                                    if(PARITY_ON == 0 || o_ld_parity)
                                        begin
                                            o_uart_data <= r_data_rcv;
                                            o_rx_done <= 1'b1;
                                        end
                                end
                            else
                                begin
                                    o_rx_done <= 1'b0;
                                end
                            
                            if(baud_cnt == 16'h0000)
                                    baud_valid <= 1'b0;
                        end
                    default:;
                endcase
        end
    
    
endmodule
