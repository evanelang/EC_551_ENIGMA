module uart_loop(
    input i_clk_sys,
    input i_rst_n,
    input i_uart_rx,
    output o_uart_tx,
    output o_ld_parity
    );
    
    localparam DATA_WIDTH = 8;
    localparam BAUD_RATE = 9600;
    localparam PARITY_ON = 0; //1 = parity check on, DO NOT use for now
    localparam PARITY_TYPE = 1;
    
    wire w_rx_done;
    wire[DATA_WIDTH-1 : 0] w_data;
    
    
    uart_rx 
    #(
            .CLK_FRE(50),         
            .DATA_WIDTH(DATA_WIDTH),       
            .PARITY_ON(PARITY_ON),        
            .PARITY_TYPE(PARITY_TYPE),      
            .BAUD_RATE(BAUD_RATE)      
    ) u_uart_rx
    (
        .i_clk_sys(i_clk_sys),      
        .i_rst_n(i_rst_n),        
        .i_uart_rx(i_uart_rx),    
        .o_uart_data(w_data),    
        .o_ld_parity(o_ld_parity),   
        .o_rx_done(w_rx_done)  
    );
    
    uart_tx
    #(
        .CLK_FRE(50),     //50 MHz
        .DATA_WIDTH(DATA_WIDTH),   
        .PARITY_ON(PARITY_ON),        
        .PARITY_TYPE(PARITY_TYPE),     
        .BAUD_RATE(BAUD_RATE)     
    ) u_uart_tx
    (   .i_clk_sys(i_clk_sys),     
        .i_rst_n(i_rst_n),        
        .i_data_tx(w_data),      
        .i_data_valid(w_rx_done),   
        .o_uart_tx(o_uart_tx)       
        );
    
endmodule
