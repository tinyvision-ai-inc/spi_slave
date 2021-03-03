/* 
  License: Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International
*/

/****************************************************************************
 * ice40_reset.v
 ****************************************************************************/
/**
 * Module: ice40_reset
 * 
 * TODO: Add module documentation
 */

module ice40_resetn(
                    input  clk, 
                    output resetn
                    );


   reg [7:0]               reset_cnt;
   initial 
     begin 
        reset_cnt = 0;
     end
   
   
   assign resetn = &reset_cnt;

   always @(posedge clk) begin
      reset_cnt <= reset_cnt + !resetn;
   end

   
endmodule


