`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:46:20 03/17/2015 
// Design Name: 
// Module Name:    Captura_Teclado 
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
module Captura_Teclado(
   		input wire [7:0] datoEntrada,
			input wire rxListo,clk,reset,
			output wire [7:0] datoListo
			);
			

reg indicaF0,datoF0;
reg [7:0] datoSalida,datoSalidaListo;

always@(posedge clk,posedge reset)
begin
	if(reset)
		begin
		indicaF0 <= 1'b0;
		datoSalida <= 8'd0;
		end
	else
		begin
		indicaF0 <= datoF0;
		datoSalida <= datoSalidaListo;
		end
end

always@*
begin
	datoSalidaListo <= datoSalida;
	datoF0 <= indicaF0;
	
	if (rxListo && datoEntrada == 8'hF0)
		begin
		datoF0 <= 1'b1;
		end
		
	else if (rxListo && indicaF0 && datoEntrada != 8'hF0)
		begin
		datoF0 <= 1'b0;
		datoSalidaListo <= datoEntrada;
		end
end

assign datoListo = datoSalida;


endmodule
