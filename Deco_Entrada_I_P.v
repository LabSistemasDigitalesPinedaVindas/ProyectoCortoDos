`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:48:14 03/17/2015 
// Design Name: 
// Module Name:    Deco_Entrada_I_P 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Deco_Entrada_I_P(
   input [2:0] switchSieteSegUno,
	input wire reset,
	output reg [6:0] sieteSeg
    ); 
	 
//localparam En0= 1'b1;

   always @*
	begin
	
      if (reset)
          sieteSeg <= 8'hFF;
      else
			begin
         case (switchSieteSegUno)
            3'b000  : sieteSeg  <= 7'b0100100;
            3'b001  : sieteSeg  <= 7'b0100100;
            3'b010  : sieteSeg <=  7'b0100100;
            3'b011  : sieteSeg <= 7'b0100100;
            3'b100  : sieteSeg <=  7'b0100100;
            3'b101  : sieteSeg <=  7'b0100100;
            3'b110  : sieteSeg <=  7'b0110000;
            3'b111  : sieteSeg <=  7'b0110000;
            default : sieteSeg <=  7'b0110000;
         endcase
			end
		end

endmodule
