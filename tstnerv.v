`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:34:20 01/27/2020
// Design Name:   NervousShockDetector
// Module Name:   G:/projectfinal/tstnerv.v
// Project Name:  logicdesignproject-healthcaresystem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NervousShockDetector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tstnerv;

	// Inputs
	reg clock;
	reg inputdata;

	// Outputs
	wire [1:0] nervousAbnormality;

	// Instantiate the Unit Under Test (UUT)
	NervousShockDetector uut (
		.clock(clock), 
		.inputdata(inputdata), 
		.nervousAbnormality(nervousAbnormality)
	);

	initial begin
		// Initialize Inputs
		
		clock = 0;
		#15
		inputdata = 1;
		#60
		inputdata = 0;
		#60
		inputdata = 0;
		#60
		inputdata = 1;
		#60
		inputdata = 0;
		#60
		inputdata = 0;
		#60
		inputdata = 1;
		#60
		inputdata = 0;
		#60
		inputdata = 0;
		#60
		inputdata = 1;
		#60
		inputdata = 1;
		#60
		inputdata = 0;
		#60
		inputdata = 0;
		

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here

	end
	always #30 clock =~clock;
      
endmodule

