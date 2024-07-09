`timescale 1s/100ms
`include "DFF.v"

module DFF_tb ();

	reg clk;
	reg clr;
	reg D;
	wire Q;
	wire Qbar;

	DFF myDFF(clk, clr, D, Q, Qbar);
	// DFF myDFF(clk, D, Q, Qbar);

	initial
	begin 
		$monitor("clk = %b, clr = %b, D = %b, Q = %b", clk, clr, D, Q);
		// $monitor("clk = %b, D = %b, Q = %b", clk, D, Q);
		$dumpfile("DFF.vcd");
		$dumpvars(0, DFF_tb);
		clr <= 1;

		clk <= 0;
		D <= 1; #1;
		D <= 0; #1;

		clk <= 1;
		D <= 1; #1;
		D <= 0; #1;

		clk <= 0;
		D <= 1; #1;
		D <= 0; #1;

		clk <= 1;
		D <= 0; #1;
		D <= 1; #1;

		clk <= 0;
		D <= 1; #1;
		D <= 0; #1;

		clk <= 1;
		D <= 1; #1;
		D <= 0; #1;

		clk <= 0;
		D <= 1; #1;
		D <= 0; #1;


		clr <= 0;


		clk <= 1;
		D <= 1; #1;
		D <= 0; #1;

		$finish;
	end

endmodule