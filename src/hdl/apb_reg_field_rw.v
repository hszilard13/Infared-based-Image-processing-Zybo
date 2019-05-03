//Automatic generated code

`ifndef FN_APB_REG_FIELD_RW_COMPILED

`define FN_APB_REG_FIELD_RW_COMPILED

module apb_reg_field_rw (
    PCLK    ,
    PRESETn ,
    PWRITE  ,
    PWDATA  ,
    PRDATA  ,

    enable  ,
    sw_rst  ,

    data_out
);

parameter WIDTH          = 8;       // Field width in bits
parameter RESET_VALUE    = 8'h00;   // Field reset value
parameter TP             = 0;       // Propagation time


 input              PCLK    ; // APB bus PCLK    
 input              PRESETn ; // APB bus PRESETn 
 input              PWRITE  ; // APB bus PWRITE  
 input  [WIDTH-1:0] PWDATA  ; // APB bus PWDATA  
output  [WIDTH-1:0] PRDATA  ; // APB bus PRDATA  
 input              enable  ; // Combination of PSEL and PADDR
 input              sw_rst  ; // Software reset. Active high
output  [WIDTH-1:0] data_out; // Reg Output towards the IP

   reg  [WIDTH-1:0] data_reg;

// Write operation
always @( posedge PCLK or negedge PRESETn )
    if(!PRESETn)
        data_reg <= #TP RESET_VALUE;
    else if(sw_rst)
        data_reg <= #TP RESET_VALUE;
    else if( PWRITE && enable )
        data_reg <= #TP PWDATA;


// Read operation - put read data on the bus
assign PRDATA = ( enable && !PWRITE ) ? data_reg : {WIDTH{1'b0}};

assign data_out = data_reg;

endmodule
`endif
