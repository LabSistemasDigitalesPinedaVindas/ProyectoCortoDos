`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:06:23 03/17/2015
// Design Name:   Captura_Teclado
// Module Name:   C:/Users/JairoVnds/Dropbox/Universidades/TEC/2015/1 SEMESTRE/Lab. Sistemas Digitales/ProyectoCorto_1/Captura_TecladoTest.v
// Project Name:  ProyectoCorto_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Captura_Teclado
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Captura_TecladoTest;

	// Inputs
	reg [7:0] datoEntrada;
	reg rxListo;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] datoListo;

	// Instantiate the Unit Under Test (UUT)
	Captura_Teclado uut (
		.datoEntrada(datoEntrada), 
		.rxListo(rxListo), 
		.clk(clk), 
		.reset(reset), 
		.datoListo(datoListo)
	);

	initial begin
		// Initialize Inputs
		datoEntrada = 0;
		rxListo = 0;
		clk = 0;
		reset = 0;
		#100;
	end
		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here
		
		
		initial 
			begin
				clk = 0; 
				reset =1; repeat (5) @ (posedge clk);
				reset =0; repeat (5) @ (posedge clk);
			end
			
		initial forever 
		
			#10 clk = ~clk;
			
		initial 
			begin 
			
	
			#4000
			datoEntrada = 8'hE1;
			rxListo = 1;
			
			#4000
			rxListo = 0;
			
			#4000
			datoEntrada = 8'hF0;
			rxListo = 1;
		
			#4000
			rxListo = 0;
			
			#4000
			datoEntrada = 8'hE1;
			rxListo = 1;
			
			end
	
	
      
endmodule

